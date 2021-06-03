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
    /// Логика взаимодействия для PageReg.xaml
    /// </summary>
    public partial class PageReg : Page
    {
        public PageReg()
        {
            InitializeComponent();
            try
            {
                ComboGroup.ItemsSource = TRPO_DbEntities4.GetContext().Groups.ToList();
            }
            catch
            {
                MessageBox.Show("Ошибка подключения к БД");
            }
            ComboGroup.SelectedIndex = 0;
        }

        private void RbStud_Checked(object sender, RoutedEventArgs e)
        {
            tbGroup.Visibility = Visibility.Visible;
            ComboGroup.Visibility = Visibility.Visible;

            
            
        }

        private void RbTeach_Checked(object sender, RoutedEventArgs e)
        {
            tbGroup.Visibility = Visibility.Hidden;
            ComboGroup.Visibility = Visibility.Hidden;
        }

        private void RegClick(object sender, RoutedEventArgs e)
        {
            if (RbStud.IsChecked == true)
            {
                StringBuilder errors = new StringBuilder();
                if (string.IsNullOrEmpty(txtName.Text))
                    errors.AppendLine("Введите Имя в формате varChar(50)");
                if (string.IsNullOrEmpty(txtLog.Text))
                    errors.AppendLine("Введите Логин в формате varChar(50)");
                if (string.IsNullOrEmpty(txtPass.Text))
                    errors.AppendLine("Введите пароль в формате varChar(50)");
                if (errors.Length > 0)
                {
                    MessageBox.Show(errors.ToString());
                    return;
                }

                Students NewStud = new Students();
                NewStud.Name = txtName.Text;
                NewStud.Login = txtLog.Text;
                NewStud.Password = txtPass.Text;
                NewStud.Phone = txtPhone.Text;
                NewStud.E_mail = txtEmail.Text;
                NewStud.Group = ((TRPO_WPF_app.Groups)ComboGroup.SelectedItem).Id;

                try
                {
                    TRPO_DbEntities4.GetContext().Students.Add(NewStud);
                    TRPO_DbEntities4.GetContext().SaveChanges();
                    MessageBox.Show("Пользователь успешно добавлен");

                }
                catch
                {
                    MessageBox.Show("Ошибка подключения к БД");
                }
            }

            else if(RbTeach.IsChecked == true)
            {
                

                StringBuilder errors = new StringBuilder();
                if (string.IsNullOrEmpty(txtName.Text))
                    errors.AppendLine("Введите Имя в формате varChar(50)");
                if (string.IsNullOrEmpty(txtLog.Text))
                    errors.AppendLine("Введите Логин в формате varChar(50)");
                if (string.IsNullOrEmpty(txtPass.Text))
                    errors.AppendLine("Введите пароль в формате varChar(50)");
                if (errors.Length > 0)
                {
                    MessageBox.Show(errors.ToString());
                    return;
                }

                Teachers NewTeach = new Teachers();
                NewTeach.Name = txtName.Text;
                NewTeach.Login = txtLog.Text;
                NewTeach.Password = txtPass.Text;
                NewTeach.Phone = txtPhone.Text;
                NewTeach.E_mail = txtEmail.Text;

                try
                {
                    TRPO_DbEntities4.GetContext().Teachers.Add(NewTeach);
                    TRPO_DbEntities4.GetContext().SaveChanges();
                    MessageBox.Show("Пользователь успешно добавлен");
                    ManagerFrame.MainFrame.GoBack();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Ошибка: \n" + ex.ToString(), "Неудача");
                }
            }
        }

        private void BackClick(object sender, RoutedEventArgs e)
        {
            ManagerFrame.MainFrame.GoBack();
        }

        
    }
}
