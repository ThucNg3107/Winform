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
    
    public partial class CTPN
    {
        public int MAPN { get; set; }
        public string MASP { get; set; }
        public int SL { get; set; }
    
        public virtual PHIEUNHAP PHIEUNHAP { get; set; }
        public virtual SANPHAM SANPHAM { get; set; }
    }
}
