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
    /// Логика взаимодействия для pageWelcome.xaml
    /// </summary>
    public partial class pageWelcome : Page
    {
        bool KindOfUser;
        public pageWelcome()
        {
            InitializeComponent();
        }

        private void StudentClick(object sender, RoutedEventArgs e)
        {
            KindOfUser = true;
            ManagerFrame.MainFrame.Navigate(new PageSignIn(KindOfUser));
        }

        private void TeachClick(object sender, RoutedEventArgs e)
        {
            KindOfUser = false;
            ManagerFrame.MainFrame.Navigate(new PageSignIn(KindOfUser));
        }

        private void RegClick(object sender, RoutedEventArgs e)
        {
            ManagerFrame.MainFrame.Navigate(new PageReg());
        }
    }
}
