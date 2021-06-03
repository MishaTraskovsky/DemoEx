using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace TRPO_WPF_app
{
    class ManagerFrame
    {
        public static Frame MainFrame { get; set; }
        public static Frame WorkFrame { get; set; }

        public static MainWindow MainWin { get; set; }
        
        public static WindowWork WorkWin { get; set; }
        public static WindowNewMark WinNewMark { get; set; }
    }
}