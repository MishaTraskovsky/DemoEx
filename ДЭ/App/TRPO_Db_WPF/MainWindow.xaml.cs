using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Entity;
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
using TRPO_Db_WPF.Db;

namespace TRPO_Db_WPF
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Db_Context db;
        public MainWindow()
        {
            InitializeComponent();

            db = new Db_Context();
            db.Students.Load();
            trpo_db.ItemsSource = db.Students.Local.ToBindingList();

            //this.Closing += MainWindow_Closing;
        }

        private void MainWindow_Closing(object sender, CancelEventArgs e)
        {
            db.Dispose();
        }

        private void updateButton_Click(object sender, RoutedEventArgs e)
        {
            db.SaveChanges();
        }

        private void deleteButton_Click(object sender, RoutedEventArgs e)
        {
            if (trpo_db.SelectedItems.Count > 0)
            {
                for (int i = 0; i < trpo_db.SelectedItems.Count; i++)
                {
                    Student student = trpo_db.SelectedItems[i] as Student;
                    if (student != null)
                    {
                        db.Students.Remove(student);
                    }
                }
            }
        }
    }
}