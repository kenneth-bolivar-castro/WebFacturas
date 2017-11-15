﻿using System;
using System.Web.UI;
using slnLogica;
using slnDatos;
using slnPresentacion.cr.fi.bccr.indicadoreseconomicos;
using System.Data;

namespace WebFacturas
{
    public partial class InicioSession : System.Web.UI.Page
    {
        private IServiciosUsuarios usuarios = new AccionesUsuarios();

        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    Usuario usuario = null;
                    if (this.usuarios.iniciarSession(this.txtEmail.Text, this.txtClave.Text, out usuario))
                    {
                        Page.Session.Add("sesion", usuario);
                        Response.Redirect("~/Dashboard.aspx");
                       
                    }
                    else
                    {
                        this.lblInicioSession.Text = "Correo y/o Clave incorrectas. Intente de nuevo.";
                    }
                }
                catch (Exception ex)
                {
                    this.lblInicioSession.Text = ex.Message;
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                wsIndicadoresEconomicos webservice = new wsIndicadoresEconomicos();
                string fecha = DateTime.Today.ToString("dd/MM/yyyy");
                fecha = "01/01/2008";
                DataSet  respuesta = webservice.ObtenerIndicadoresEconomicos("317", fecha, fecha, "FacturacionUACA", "N");
                if(respuesta.Tables[0].Rows.Count > 0)
                {
                    this.lblInicioSession.Text = respuesta.Tables[0].Rows[0].ItemArray[2].ToString();
                }
            }
        }
    }
}