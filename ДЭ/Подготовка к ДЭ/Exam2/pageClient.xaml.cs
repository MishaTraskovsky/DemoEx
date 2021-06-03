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
    /// Логика взаимодействия для pageClient.xaml
    /// </summary>
    public partial class pageClient : Page
    {
        public pageClient()
        {
            InitializeComponent();
        }

        //добавление
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new pageClientAdd(null));
        }

        //обновление страницы
        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                RealEstateAgencyEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(r => r.Reload());
                DgreedClients.ItemsSource = RealEstateAgencyEntities.GetContext().Client.ToList(); //try catch
            }
        }
        // редактирование
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if (DgreedClients.SelectedItems.Count > 0)
                Manager.MainFrame.Navigate(new pageClientAdd(RealEstateAgencyEntities.GetContext().Client.Where(q => q.Id
                == ((Exam2.Client)DgreedClients.SelectedItem).Id).First()));
        }

        //кнопка удаления
        private void btnDel_Click(object sender, RoutedEventArgs e)
        {
            var RemoveRange = DgreedClients.SelectedItems.Cast<Client>().ToList();

            if (MessageBox.Show("Вы уверены что хотите удалить выбранные записи?", "Внимание",
                MessageBoxButton.YesNo) == MessageBoxResult.Yes)
            {
                try
                {
                    RealEstateAgencyEntities.GetContext().Client.RemoveRange(RemoveRange);
                    RealEstateAgencyEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");

                    DgreedClients.ItemsSource = RealEstateAgencyEntities.GetContext().Client.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        //поиск
        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            if (txtSearch.Text.Length != 0)
            {
                DgreedClients.ItemsSource = RealEstateAgencyEntities.GetContext().Client.Where(q =>
                    (q.FirstName == txtSearch.Text || q.LastName == txtSearch.Text
                    || q.MiddleName == txtSearch.Text)).ToList(); //try catch
            }
        }

        //кнопка обновления
        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            try
            {
                DgreedClients.ItemsSource =
                    RealEstateAgencyEntities.GetContext().Client.ToList();
            }
            catch
            {
                MessageBox.Show("Ошибка подключения к базе данных")
            };
        }
    }
}
