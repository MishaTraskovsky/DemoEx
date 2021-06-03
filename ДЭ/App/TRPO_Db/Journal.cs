using System;
using System.Collections.Generic;
using System.Text;

namespace TRPO_Db
{
    class Journal
    {
        public int Id_group { get; set; }
        public int Id_stud { get; set; }
        public int Mark { get; set; }
        public DateTime Date_mark { get; set; }
        public int Final_mark { get; set; }
        public bool Admiss_exam { get; set; }
    }
}
