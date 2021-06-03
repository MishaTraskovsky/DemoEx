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

namespace NBAManagement
{
    /// <summary>
    /// Логика взаимодействия для teamDetail.xaml
    /// </summary>
    public partial class teamDetail : Page
    {
        Team currentTeam;
        public teamDetail(Team selectedTeam)
        {
            InitializeComponent();
            currentTeam = selectedTeam;
            dGreedDetail.Visibility = Visibility.Hidden;
        }

        private void btnRoster_Click(object sender, RoutedEventArgs e)
        {
            dGreedDetail.ItemsSource = DemoExEntities1.GetContext().Player.Where(b => b.TeamId == currentTeam.TeamId).ToList();

            string currentDistr;
            if (currentTeam.Discrict == true)
                currentDistr = "Eastern";
            else
                currentDistr = "Western";

            txtSecondHead.Text = currentTeam.Name + "  |  " + currentDistr + "  |  " + currentTeam.division;

            dGreedDetail.Visibility = Visibility.Visible;
            btnRoster.IsEnabled = false;
            btnMtchUp.IsEnabled = true;
            btnLnUp.IsEnabled = true;
        }

        private void btnMtchUp_Click(object sender, RoutedEventArgs e)
        {
            dGreedDetail.Visibility = Visibility.Hidden;
            btnRoster.IsEnabled = true;
            btnMtchUp.IsEnabled = false;
            btnLnUp.IsEnabled = true;
        }

        private void btnLnUp_Click(object sender, RoutedEventArgs e)
        {
            dGreedDetail.Visibility = Visibility.Visible;
            btnRoster.IsEnabled = true;
            btnMtchUp.IsEnabled = true;
            btnLnUp.IsEnabled = false;
        }
    }
}