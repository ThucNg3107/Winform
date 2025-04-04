//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLST.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class SANPHAM
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SANPHAM()
        {
            this.CTHDs = new HashSet<CTHD>();
            this.CTPNs = new HashSet<CTPN>();
        }
    
        public string MASP { get; set; }
        public string TENSP { get; set; }
        public int GIA { get; set; }
        public string MOTA { get; set; }
        private string _HINHSP;
        public string HINHSP
        {
            get
            {
                if (_HINHSP.Contains(Const._localLink))
                    return _HINHSP;
                return Const._localLink + _HINHSP;
            }
            set
            {
                _HINHSP = value;
            }
        }
        public int SL { get; set; }
        public string LOAISP { get; set; }
        public string SIZE { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTHD> CTHDs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTPN> CTPNs { get; set; }
    }
}
