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
    /// Логика взаимодействия для PageWorkStudMenu.xaml
    /// </summary>
    public partial class PageWorkStudMenu : Page
    {
        int StudId;
        bool kindUser;
        public PageWorkStudMenu(int _studId, bool _kindUser)
        {
            InitializeComponent();
            StudId = _studId;
            kindUser = _kindUser;
        }

        private void ExitClick(object sender, RoutedEventArgs e)
        {
            MainWindow main = new MainWindow();
            ManagerFrame.MainWin = main;

            ManagerFrame.MainWin.Show();
            ManagerFrame.WorkWin.Close();
        }

        private void AccountInfoClick(object sender, RoutedEventArgs e)
        {
            ManagerFrame.WorkFrame.Navigate(new PageWorkTeachInfo(StudId, kindUser));
        }

        private void MarkClick(object sender, RoutedEventArgs e)
        {
            ManagerFrame.WorkFrame.Navigate(new PageWorkStudMakrs(StudId));
        }
    }
}
