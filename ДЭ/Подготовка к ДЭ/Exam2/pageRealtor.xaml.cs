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
    /// Логика взаимодействия для pageRealtor.xaml
    /// </summary>
    public partial class pageRealtor : Page
    {
        public pageRealtor()
        {
            InitializeComponent();
            DgreedRealtor.ItemsSource = RealEstateAgencyEntities.GetContext().Realtor.ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new pageRealtorAdd(null));
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                RealEstateAgencyEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(r => r.Reload());
                DgreedRealtor.ItemsSource = RealEstateAgencyEntities.GetContext().Realtor.ToList();
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if (DgreedRealtor.SelectedItems.Count > 0)
                Manager.MainFrame.Navigate(new pageRealtorAdd(RealEstateAgencyEntities.GetContext().Realtor.Where(q => q.Id
                == ((Exam2.Realtor)DgreedRealtor.SelectedItem).Id).First()));
        }

        private void btnDel_Click(object sender, RoutedEventArgs e)
        {
            var RemoveRange = DgreedRealtor.SelectedItems.Cast<Realtor>().ToList();

            if (MessageBox.Show("Вы уверены что хотите удалить выбранные записи?", "Внимание",
                MessageBoxButton.YesNo) == MessageBoxResult.Yes)
            {
                try
                {
                    RealEstateAgencyEntities.GetContext().Realtor.RemoveRange(RemoveRange);
                    RealEstateAgencyEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");

                    DgreedRealtor.ItemsSource = RealEstateAgencyEntities.GetContext().Realtor.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            if (txtSearch.Text.Length != 0)
            {
                DgreedRealtor.ItemsSource = RealEstateAgencyEntities.GetContext().Realtor.Where(q => (q.FirstName == txtSearch.Text || q.LastName == txtSearch.Text || q.MiddleName == txtSearch.Text)).ToList();
            }
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            DgreedRealtor.ItemsSource = RealEstateAgencyEntities.GetContext().Realtor.ToList();

        }
    }
}
