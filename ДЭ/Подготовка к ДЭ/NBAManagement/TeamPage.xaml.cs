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

namespace NBAManagement.Properties
{
    /// <summary>
    /// Логика взаимодействия для TeamPage.xaml
    /// </summary>
    public partial class TeamPage : Page
    {
        bool ?district;
        public TeamPage()
        {
            InitializeComponent();
        }

        private void btnEast_Click(object sender, RoutedEventArgs e)
        {
            if(district != true)
            {
                tableHead1.Text = "Atlantic";
                tableHead2.Text = "Central";
                tableHead3.Text = "Southeast";
                dGreed1.ItemsSource = DemoExEntities1.GetContext().Team.Where(b => b.division == "Atlantic").ToList();
                dGreed2.ItemsSource = DemoExEntities1.GetContext().Team.Where(b => b.division == "Central").ToList();
                dGreed3.ItemsSource = DemoExEntities1.GetContext().Team.Where(b => b.division == "Southeast").ToList();
                district = true;
                btnEast.IsEnabled = false;
                btnWest.IsEnabled = true;
            }
        }

        private void btnWest_Click(object sender, RoutedEventArgs e)
        {
            if(district != false)
            {
                tableHead1.Text = "Northwest";
                tableHead2.Text = "Pacific";
                tableHead3.Text = "Southwest";
                dGreed1.ItemsSource = DemoExEntities1.GetContext().Team.Where(b => b.division == "Northwest").ToList();
                dGreed2.ItemsSource = DemoExEntities1.GetContext().Team.Where(b => b.division == "Pacific").ToList();
                dGreed3.ItemsSource = DemoExEntities1.GetContext().Team.Where(b => b.division == "Southwest").ToList();
                district = false;
                btnWest.IsEnabled = false;
                btnEast.IsEnabled = true;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new teamDetail((sender as Button).DataContext as Team));
        }
    }
}
