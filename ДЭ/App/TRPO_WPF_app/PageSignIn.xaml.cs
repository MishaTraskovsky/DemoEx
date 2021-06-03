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
    /// Логика взаимодействия для PageSignIn.xaml
    /// </summary>
    public partial class PageSignIn : Page
    {
        

        private bool CurrentKindUser;
        private Students currentStud = new Students();
        private Teachers currentTeach = new Teachers();
        private int CurrentId;
        //студент - true, преподаватель - false
        public PageSignIn(bool KindOfUser)
        {
            InitializeComponent();
            CurrentKindUser = KindOfUser;            
        }

        private void SignInClick(object sender, RoutedEventArgs e)
        {
            if (CurrentKindUser == true)
            {
                try
                {
                    if ((currentStud = TRPO_DbEntities4.GetContext().Students
                    .Where(q =>
                    q.Login == txtLogin.Text &&
                    q.Password == txtPass.Text)
                    .FirstOrDefault()) != null)
                    {


                        CurrentId = currentStud.Id;
                        MessageBox.Show(currentStud.Name + ", Вход выполнен.");

                        WindowWork winWork = new WindowWork(CurrentKindUser, CurrentId);
                        ManagerFrame.WorkWin = winWork;

                        ManagerFrame.WorkWin.Show();
                        ManagerFrame.MainWin.Close();

                    }
                    else
                    {
                        MessageBox.Show("Неверный логин или праоль");
                    }
                }
                catch
                {
                    MessageBox.Show("Ошибка подключения к БД");
                }
            }
            else if (CurrentKindUser == false)
            {
                try
                {

                    if ((currentTeach = TRPO_DbEntities4.GetContext().Teachers
                        .Where(q =>
                        q.Login == txtLogin.Text &&
                        q.Password == txtPass.Text).FirstOrDefault()) != null)
                    {
                        CurrentId = currentTeach.Id;
                        MessageBox.Show(currentTeach.Name + ", Вход выполнен.");

                        WindowWork winWork = new WindowWork(CurrentKindUser, CurrentId);
                        ManagerFrame.WorkWin = winWork;

                        ManagerFrame.WorkWin.Show();
                        ManagerFrame.MainWin.Close();
                    }
                    else
                    {
                        MessageBox.Show("Неверный логин или пароль");
                    }
                }
                catch
                {
                    MessageBox.Show("Ошибка подключения к БД");
                }
            }
        }

        private void BackClick(object sender, RoutedEventArgs e)
        {
            ManagerFrame.MainFrame.GoBack();
        }
    }
}
