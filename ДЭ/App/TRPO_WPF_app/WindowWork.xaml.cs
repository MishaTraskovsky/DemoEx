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
using System.Windows.Shapes;

namespace TRPO_WPF_app
{
    /// <summary>
    /// Логика взаимодействия для WindowWork.xaml
    /// </summary>
    public partial class WindowWork : Window
    {
        //KindUser: студент - true, преподаватель - false
        int UserId;
        bool kindUser;
        public WindowWork(bool _KindUser, int Id)
        {
            InitializeComponent();
            UserId = Id;
            kindUser = _KindUser;
            ManagerFrame.WorkFrame = WorkFrame;


            if (kindUser)
            {
                WorkFrame.Navigate(new PageWorkStudMenu(UserId, kindUser));
            }
            else if (!kindUser)
            {
                WorkFrame.Navigate(new PageWorkTeachMenu(UserId, kindUser));
            }
        }
    }
}
