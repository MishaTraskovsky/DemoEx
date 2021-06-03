using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Text;

namespace TRPO_Db
{
    class TRPOContext :DbContext
    {
        public TRPOContext() : base("DBConnection")
        { }
       // public DbSet<Groupe> Groupes { get; set; }
       // public DbSet<Journal> Journals { get; set; }
        public DbSet<Student> Students { get; set; }
       // public DbSet<Subject> Subjects { get; set; }
        //public DbSet<Teacher> Teachers { get; set; }
    }
}
