using System;

namespace TRPO_Db
{
    class Program
    {
        static void Main(string[] args)
        {
            using(TRPOContext db = new TRPOContext())
            {
                Student st1 = new Student { Name = "name1" };
                Student st2 = new Student { Name = "name2" };

                db.Students.Add(st1);
                db.Students.Add(st2);
                db.SaveChanges();
                Console.WriteLine("ok");

                var students = db.Students;
                Console.WriteLine(": "); 
                foreach(Student st in students)
                {
                    Console.WriteLine("{0}.{1} - {2} - {3}", st.Id, st.Name, st.Phone, st.E_mail);
                }
            }
        }
    }
}