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
    /// Логика взаимодействия для pageRealtorAdd.xaml
    /// </summary>
    public partial class pageRealtorAdd : Page
    {
        private Realtor currentRealtor = new Realtor();
        private bool swtch;
        public pageRealtorAdd(Realtor selectedRealtor)
        {
            InitializeComponent();
            btnEdit.Visibility = Visibility.Hidden;
            btnAdd.Visibility = Visibility.Hidden;

            //запрос редактирования
            if (selectedRealtor != null)
            {
                currentRealtor = selectedRealtor;
                btnEdit.Visibility = Visibility.Visible;
                swtch = true;
            }

            //запрос добавления
            else
            {
                btnAdd.Visibility = Visibility.Visible;
                swtch = false;
            }

            DataContext = currentRealtor;

        }

        private void btn_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrEmpty(currentRealtor.FirstName) && string.IsNullOrEmpty(currentRealtor.MiddleName) && string.IsNullOrEmpty(currentRealtor.LastName))
            {
                errors.AppendLine("Введите ФИО");
            }

            if (currentRealtor.DealShare != null)
            {
                if (!(currentRealtor.DealShare >= 0) || !(currentRealtor.DealShare <= 100))
                    errors.AppendLine("Процент комиссии должен быть от 0 до 100");
            }

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString(), "Ошибка добавления");
                return;
            }

            if (swtch == false)
                RealEstateAgencyEntities.GetContext().Realtor.Add(currentRealtor);

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
