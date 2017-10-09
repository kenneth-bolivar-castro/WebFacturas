﻿using System;
using slnLogica;
using slnDatos;

namespace slnPresentacion
{
    public partial class ProveedorForm : System.Web.UI.Page
    {
        private IserviciosProveedores proveedores = new AccionesProveedores();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!string.IsNullOrEmpty(Request.QueryString["Id"]))
            {
                int Identificador = int.Parse(Request.QueryString["Id"]);
                Proveedore proveedor = this.proveedores.obtenProveedorSegunIdentificador(Identificador);
                this.txtNombre.Text = proveedor.Nombre;
                this.hdnId.Value = Identificador.ToString();
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            
            try
            {
                string Identificador = this.hdnId.Value;
                if (String.IsNullOrEmpty(Identificador))
                {
                    this.proveedores.incluirProveedor(this.txtNombre.Text);
                }
                else
                {
                    this.proveedores.actualizaProveedor(int.Parse(Identificador), this.txtNombre.Text);
                }
                Page.Session.Add("mensaje", "Proveedor salvado!");
                Response.Redirect("~/Proveedores.aspx");
            }
            catch (Exception ex)
            {
                this.lblMensaje.Text = ex.Message;
            }
        }
    }
}