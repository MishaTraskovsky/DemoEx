using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using Excel = Microsoft.Office.Interop.Excel;

namespace TRPO_WPF_app
{
    /// <summary>
    /// Логика взаимодействия для PageWorkStudMakrs.xaml
    /// </summary>
    public partial class PageWorkStudMakrs : System.Windows.Controls.Page
    {
        Students CurrentStud = new Students();
        public PageWorkStudMakrs(int id)
        {
            InitializeComponent();
            try
            {
                CurrentStud = TRPO_DbEntities4.GetContext().Students.Where(q => q.Id == id).FirstOrDefault();
                tbName.Text = CurrentStud.Name;
                tbGroup.Text = ("Группа: " + CurrentStud.Groups.Name);

                DGreedSubjects.ItemsSource = TRPO_DbEntities4.GetContext().Subjects.ToList();
            }
            catch
            {
                MessageBox.Show("Ошибка подключения к БД");
            }
        }

        private void SelectSubject(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                DgreedMarks.ItemsSource = TRPO_DbEntities4.GetContext().Journal.Where(q =>
                q.Student == CurrentStud.Id &&
                q.Subject == ((TRPO_WPF_app.Subjects)
                DGreedSubjects.SelectedItem).Id).ToList();
            }
            catch
            {
                MessageBox.Show("Ошибка подключения к БД");
            }
            tbSubject.Text = ((TRPO_WPF_app.Subjects)DGreedSubjects.SelectedItem).Name;

            int RowsCount = DgreedMarks.Items.Count;
            int[] marks = new int[RowsCount];
            try
            {
                var str = TRPO_DbEntities4.GetContext().Journal.Where(q =>
                    q.Student == CurrentStud.Id && q.Subject ==
                    ((TRPO_WPF_app.Subjects)DGreedSubjects.SelectedItem).Id).
                    Select(w => w.Mark).ToList();

                double re = 0;
                for (int i = 0; i < DgreedMarks.Items.Count; i++)
                {
                    re += double.Parse(str[i]);
                }



                tbMiddleMark.Text = string.Format("{0:0.00}", (re / DgreedMarks.Items.Count).ToString());
                tbMiddleMark.Text = Math.Round((re / DgreedMarks.Items.Count), 2).ToString();
            }
            catch
            {
                MessageBox.Show("Ошибка подключения к БД");
            }
        }

        private void BackClick(object sender, RoutedEventArgs e)
        {
            ManagerFrame.WorkFrame.GoBack();
        }

        private void OutputClick(object sender, RoutedEventArgs e)
        {
            //var allMarks = TRPO_DbEntities4.GetContext().Journal.Where(q =>
            //        q.Student == CurrentStud.Id && q.Subject ==
            //        ((TRPO_WPF_app.Subjects)DGreedSubjects.SelectedItem).Id).ToList();

            //var ex = new Excel.Application();
            ////exelApp.SheetsInNewWorkbook = allMarks.Count();
            //ex.SheetsInNewWorkbook = 1;
            //ex.DisplayAlerts = false;

            //Excel.Workbook workbook = ex.Workbooks.Add(Type.Missing);

            //int startRowIndex = 1;

            //for(int i = 0; i<allMarks.Count(); i++)
            //{
            //    Excel.Worksheet worksheet = ex.Worksheets.Item[i + 1];
            //    worksheet.Name = allMarks[i].Students.Name;

            //    worksheet.Cells[1][startRowIndex] = "Преподаватель";
            //    worksheet.Cells[2][startRowIndex] = "Оценка";
            //    worksheet.Cells[3][startRowIndex] = "Дата оценки";

            //    startRowIndex++;

            //    var 
            //}

            var marks = TRPO_DbEntities4.GetContext().Journal.Where(q =>
                    q.Student == CurrentStud.Id && q.Subject ==
                    ((TRPO_WPF_app.Subjects)DGreedSubjects.SelectedItem).Id).ToList();


            var ex = new Excel.Application();
            ex.Visible = true;
            Excel.Workbook workbook = ex.Workbooks.Add();
            Excel.Worksheet worksheet = (Excel.Worksheet)ex.ActiveSheet;
            worksheet.Name = CurrentStud.Name;

            

            worksheet.Cells[1, 1] = "Преподаватель";
            worksheet.Cells[1, 2] = "Оценка";
            worksheet.Cells[1, 3] = "Дата";

            for(int j = 0; j<DgreedMarks.Items.Count;j++)
            {
                int i = 0;
                worksheet.Cells[j + 2, ++i] = ((Journal)DgreedMarks.Items[j]).Teachers.Name;
                worksheet.Cells[j + 2, ++i] = ((Journal)DgreedMarks.Items[j]).Mark;
                worksheet.Cells[j + 2, ++i] = ((Journal)DgreedMarks.Items[j]).Mark_date;
            }

            worksheet.Columns.AutoFit();
            //object filename = @"C:\Users\Misha\Desktop\" + CurrentStud.Name + ".xlsx";
            //workbook.SaveAs(filename);
            //workbook.Close();
            //ex.Quit();
            //MessageBox.Show("Оценки сохранены на рабочий стол");



        }
    }
}