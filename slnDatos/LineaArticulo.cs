//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace slnDatos
{
    using System;
    using System.Collections.Generic;
    
    public partial class LineaArticulo
    {
        public int Id { get; set; }
        public int IdProducto { get; set; }
        public int Cantidad { get; set; }
        public int IdFactura { get; set; }
        public decimal Precio { get; set; }
    
        public virtual Producto Producto { get; set; }
        public virtual Factura Factura { get; set; }
    }
}
