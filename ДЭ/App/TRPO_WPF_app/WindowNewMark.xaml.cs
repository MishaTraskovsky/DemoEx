using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace TRPO_WPF_app
{
    /// <summary>
    /// Логика взаимодействия для WindowNewMark.xaml
    /// </summary>
    public partial class WindowNewMark : Window
    {
        int TeacherId;
        public WindowNewMark(int _TeachId)
        {
            InitializeComponent();
            TeacherId = _TeachId;
            try
            {
                ComboStudents.ItemsSource = TRPO_DbEntities4.GetContext().Students.ToList();
                ComboSubject.ItemsSource = TRPO_DbEntities4.GetContext().Subjects.ToList();
            }
            catch
            {
                MessageBox.Show("Ошибка подключения к БД");
            }

            ComboStudents.SelectedIndex = 0;
            ComboSubject.SelectedIndex = 0;
        }

        private void AddClick(object sender, RoutedEventArgs e)
        {
            Journal newRecord = new Journal();
            newRecord.Student = ((TRPO_WPF_app.Students)ComboStudents.SelectedItem).Id;
            newRecord.Teacher = TeacherId;
            newRecord.Subject = ((TRPO_WPF_app.Subjects)ComboSubject.SelectedItem).Id;

            if (string.IsNullOrEmpty(txtMark.Text) || !(int.TryParse(txtMark.Text, out int mark)) || mark < 2 || mark > 5)
            {
                MessageBox.Show("Введите корректную оценку");
            }

            else
                newRecord.Mark = txtMark.Text;

            newRecord.Mark = txtMark.Text;
            if (DateTime.TryParse(txtDate.Text, out DateTime date))
                newRecord.Mark_date = date;
            else
                MessageBox.Show("Введите коректную дату");

            
            try
            {
                TRPO_DbEntities4.GetContext().Journal.Add(newRecord);
                TRPO_DbEntities4.GetContext().SaveChanges();
                MessageBox.Show("Оценка успешно поставлена.", "");
            }
            catch
            {
                MessageBox.Show("Ошибка подключения к БД");
            }
            this.Close();
        }

        private void CloseClick(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
