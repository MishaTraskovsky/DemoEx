//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Exam2
{
    using System;
    using System.Collections.Generic;
    
    public partial class Estate
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Estate()
        {
            this.Supply = new HashSet<Supply>();
        }
    
        public int Id { get; set; }
        public Nullable<decimal> Price { get; set; }
        public Nullable<double> Area { get; set; }
        public Nullable<int> HouseNum { get; set; }
        public Nullable<int> FlatNum { get; set; }
        public Nullable<float> CoordinateLatitude { get; set; }
        public Nullable<float> CoordinateLongitude { get; set; }
        public string City { get; set; }
        public string Street { get; set; }
    
        public virtual Flat Flat { get; set; }
        public virtual House House { get; set; }
        public virtual LandPlot LandPlot { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Supply> Supply { get; set; }
    }
}
