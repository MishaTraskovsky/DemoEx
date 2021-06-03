using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TRPO_Db_WPF.Db
{
    class Db_Context : DbContext
    {
        public Db_Context() : base("DBConnection") { }

        public DbSet<Student> Students { get; set; }
        //public DbSet<Teacher> Teachers { get; set; }
    }
}