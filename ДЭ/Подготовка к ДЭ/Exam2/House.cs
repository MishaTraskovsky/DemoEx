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
    
    public partial class House
    {
        public int Id { get; set; }
        public int FloorCount { get; set; }
        public int RoomCount { get; set; }
    
        public virtual Estate Estate { get; set; }
    }
}
