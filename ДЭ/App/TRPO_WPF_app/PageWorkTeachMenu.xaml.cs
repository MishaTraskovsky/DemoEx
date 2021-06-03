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
    /// Логика взаимодействия для PageWorkTeachMenu.xaml
    /// </summary>
    public partial class PageWorkTeachMenu : Page
    {
        int TeachId;
        bool kindUser;
        public PageWorkTeachMenu(int _TeachId, bool _kindUser)
        {
            InitializeComponent();
            TeachId = _TeachId;
            kindUser = _kindUser;
        }

        

        private void StudentsClick(object sender, RoutedEventArgs e)
        {
            ManagerFrame.WorkFrame.Navigate(new PageWorkTStudentsList(TeachId));
        }

        private void GroupsClick(object sender, RoutedEventArgs e)
        {

        }

        private void AccountInfoClick(object sender, RoutedEventArgs e)
        {
            ManagerFrame.WorkFrame.Navigate(new PageWorkTeachInfo(TeachId, kindUser));
        }

        private void ExitClick(object sender, RoutedEventArgs e)
        {
            MainWindow main = new MainWindow();
            ManagerFrame.MainWin = main;

            ManagerFrame.MainWin.Show();
            ManagerFrame.WorkWin.Close();
        }
    }
}
