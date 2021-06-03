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
    /// Логика взаимодействия для PageWorkTeachInfo.xaml
    /// </summary>
    public partial class PageWorkTeachInfo : Page
    {
        public PageWorkTeachInfo(int _UserhId, bool kindUser)
        {
            InitializeComponent();

            Teachers currentTeach = new Teachers();
            Students currentStud = new Students();
            txtGroup.Visibility = Visibility.Hidden;
            tbGroup.Visibility = Visibility.Hidden;

            if (kindUser)
            {
                txtGroup.Visibility = Visibility.Visible;
                tbGroup.Visibility = Visibility.Visible;

                try
                {
                    currentStud = TRPO_DbEntities4.GetContext().Students.Where(q => q.Id == _UserhId).First();
                    tbId.Text = currentStud.Id.ToString();
                    tbName.Text = currentStud.Name;
                    tbGroup.Text = currentStud.Groups.Name;
                    tbLog.Text = currentStud.Login;
                    tbPass.Text = currentStud.Password;
                    tbEmail.Text = currentStud.E_mail;
                    tbPhone.Text = currentStud.Phone;
                }
                catch
                {
                    MessageBox.Show("Ошибка подключения к БД");
                }
            }
            else if(!kindUser)
            {
                try
                {
                    currentTeach = TRPO_DbEntities4.GetContext().Teachers.Where(q => q.Id == _UserhId).First();
                    tbId.Text = currentTeach.Id.ToString();
                    tbName.Text = currentTeach.Name;
                    tbLog.Text = currentTeach.Login;
                    tbPass.Text = currentTeach.Password;
                    tbEmail.Text = currentTeach.E_mail;
                    tbPhone.Text = currentTeach.Phone;
                }
                catch
                {
                    MessageBox.Show("Ошибка подключения к БД");
                }
            }
            
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ManagerFrame.WorkFrame.GoBack();
        }
    }
}
