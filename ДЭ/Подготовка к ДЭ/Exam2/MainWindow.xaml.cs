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

namespace Exam2
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        string currentPage;
        public MainWindow()
        {
            InitializeComponent();
            Manager.MainFrame = MainFrame;
        }

        private void btnClient_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new pageClient());
            btnClient.IsEnabled = false;
            btnRealtor.IsEnabled = true;
            currentPage = "pageClient";
        }

        private void btnRealtor_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new pageRealtor());
            btnClient.IsEnabled = true;
            btnRealtor.IsEnabled = false;
            currentPage = "pageRealtor";
        }
    }
}
