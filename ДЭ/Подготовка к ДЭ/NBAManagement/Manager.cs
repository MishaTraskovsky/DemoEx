using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace NBAManagement
{
    //с помощью этого класса можно получить MainFrame на любой странице
    class Manager 
    {
        public static Frame MainFrame { get; set; }
    }
}
