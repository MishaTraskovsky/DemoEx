//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TRPO_WPF_app
{
    using System;
    using System.Collections.Generic;
    
    public partial class Journal
    {
        public int Id { get; set; }
        public int Student { get; set; }
        public int Subject { get; set; }
        public int Teacher { get; set; }
        public string Mark { get; set; }
        public Nullable<System.DateTime> Mark_date { get; set; }
    
        public virtual Students Students { get; set; }
        public virtual Subjects Subjects { get; set; }
        public virtual Teachers Teachers { get; set; }
    }
}
