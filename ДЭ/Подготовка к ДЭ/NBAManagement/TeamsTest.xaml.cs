using NBAManagement.Properties;
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
    /// Логика взаимодействия для TeamsTest.xaml
    /// </summary>
    public partial class TeamsTest : Page
    {
        public TeamsTest()
        {
            InitializeComponent();
            //dGreedTeams.ItemsSource = DemoExEntities1.GetContext().Team.ToList();
            var team = DemoExEntities1.GetContext().Team.Where(b => b.Discrict == true);
            dGreedTeams.ItemsSource = team.ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            dGreedTeams.ItemsSource = DemoExEntities1.GetContext().Team.Where(b => b.Discrict == false).ToList();
        }
    }
}
