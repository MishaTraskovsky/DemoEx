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
    /// Логика взаимодействия для pageClientAdd.xaml
    /// </summary>
    public partial class pageClientAdd : Page
    {
        private Client currentClient = new Client();
        private bool swtch;
        public pageClientAdd(Client selecrtedClient)
        {
            InitializeComponent();
            
            btnEdit.Visibility = Visibility.Hidden;
            btnAdd.Visibility = Visibility.Hidden;

            //запрос редактирования
            if (selecrtedClient != null) 
            {
                currentClient = selecrtedClient;
                btnEdit.Visibility = Visibility.Visible;
                swtch = true;
            }

            //запрос добавления
            else
            {
                btnAdd.Visibility = Visibility.Visible;
                swtch = false;
            }

            DataContext = currentClient;

        }

        private void btn_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrEmpty(currentClient.Phone) && string.IsNullOrEmpty(currentClient.Email))
                errors.AppendLine("Введите телефон или Электронную почту");
            if(errors.Length > 0)
            {
                MessageBox.Show(errors.ToString(), "Ошибка добавления");
                return;
            }

            if (swtch == false)
                RealEstateAgencyEntities.GetContext().Client.Add(currentClient);

            try
            {
                RealEstateAgencyEntities.GetContext().SaveChanges();
                MessageBox.Show("Изменения успешно внесены", "");
                Manager.MainFrame.GoBack();
            }
            catch (Exception ex)
            { 
                MessageBox.Show(ex.Message.ToString(), "Ошибка");
            }
        }

    }
}
