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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace TRPO_WPF_app
{
    /// <summary>
    /// Логика взаимодействия для PageWorkTStudentsList.xaml
    /// </summary>
    public partial class PageWorkTStudentsList : Page
    {
        int TeachId;
        public PageWorkTStudentsList(int _TeachId)
        {
            InitializeComponent();
            TeachId = _TeachId;
            try
            {
                DgreedStudents.ItemsSource = TRPO_DbEntities4.GetContext().Journal.
                    Where(q => q.Teacher == TeachId).ToList();
                DgreedGroups.ItemsSource = TRPO_DbEntities4.GetContext().Groups.ToList();
            }
            catch
            {
                MessageBox.Show("Ошибка подключения к БД");
            }
        }

        private void NewMarkClick(object sender, RoutedEventArgs e)
        {
            WindowNewMark newMark = new WindowNewMark(TeachId);
            newMark.Show();
        }

        private void ReloadClick(object sender, RoutedEventArgs e)
        {
            try
            {
                TRPO_DbEntities4.GetContext().ChangeTracker.Entries().ToList().ForEach(q => q.Reload());
                DgreedStudents.ItemsSource = TRPO_DbEntities4.GetContext().Journal.
                    Where(q => q.Students.Group == ((TRPO_WPF_app.Groups)
                    DgreedGroups.SelectedItem).Id &&
                    q.Teacher == TeachId).ToList();
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

        private void DGreedGroupSel(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                DgreedStudents.ItemsSource = TRPO_DbEntities4.GetContext().Journal.
                    Where(q => q.Students.Group ==
                    ((TRPO_WPF_app.Groups)DgreedGroups.SelectedItem).Id
                    && q.Teacher == TeachId).ToList();
            }
            catch
            {
                MessageBox.Show("Ошибка подключения к БД");
            }
        }
    }
}
