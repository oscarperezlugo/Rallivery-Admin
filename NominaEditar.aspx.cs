using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PanelAdmin
{
    public partial class NominaEditar : System.Web.UI.Page
    {
        string ROW;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["indexC"] != null)
            {
                Nombre.Value = Request.Cookies["nombreNomC"].Value;
                Correo.Value = Request.Cookies["correoC"].Value;
                Telefono.Value = Request.Cookies["telefonoC"].Value;
                Dirección.Value = Request.Cookies["direccionC"].Value;
                Text1.Value = Request.Cookies["rifC"].Value;
                //Text2.Value = Request.Cookies["sicmC"].Value;
                Text41.Value = Request.Cookies["tel2C"].Value;
                ROW = Request.Cookies["rowC"].Value;
                Text2.Value = Request.Cookies["apellidoC"].Value;
                Text3.Value = Request.Cookies["sueldoC"].Value;
                DropDownList2.SelectedValue = Request.Cookies["tipoC"].Value;
                //DropDownList4.SelectedValue = Request.Cookies["vendedorC"].Value;
                //DropDownList2.SelectedValue = Request.Cookies["tipoC"].Value;
                Text31.Value = Request.Cookies["persC"].Value;
                Response.Cookies["nombreNomC"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["correoC"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["telefonoC"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["direccionC"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["rifC"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["sueldoC"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["tel2C"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["vendedorC"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["tipoC"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["apellidoC"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["indexC"].Expires = DateTime.Now.AddDays(-1);
            }
            else
            {

            }
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            int Row = Int32.Parse(Request.Cookies["rowC"].Value);
            using (SqlConnection openCon = new SqlConnection("workstation id=jebcpharma.mssql.somee.com;packet size=4096;user id=paladar_SQLLogin_1;pwd=bgofrm6416;data source=jebcpharma.mssql.somee.com;persist security info=False;initial catalog=jebcpharma"))
            {
                    string saveStaff = "UPDATE Clientes SET Nombre=@Nombre, Correo=@Correo, Telefono=@Telefono, Direccion=@Direccion, Rif=@Rif, Sueldo=@sueldo, Telefono2=@Telefono2, Tipo=@Tipo, Persona=@Persona, Apellido=@Apellido WHERE Row=@Row";

                    using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                    {
                        querySaveStaff.Connection = openCon;
                        querySaveStaff.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = Nombre.Value.ToString();                        
                        querySaveStaff.Parameters.Add("@Correo", SqlDbType.VarChar).Value = Correo.Value.ToString();
                        querySaveStaff.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = Telefono.Value.ToString();
                        querySaveStaff.Parameters.Add("@Direccion", SqlDbType.VarChar).Value = Dirección.Value.ToString();
                        //querySaveStaff.Parameters.Add("@DireccionEntF", SqlDbType.VarChar).Value = Text3.Value.ToString();                                                
                        querySaveStaff.Parameters.Add("@Rif", SqlDbType.VarChar).Value = Text1.Value.ToString();
                        querySaveStaff.Parameters.Add("@sueldo", SqlDbType.Money).Value = Decimal.Parse(Text3.Value.ToString());
                        querySaveStaff.Parameters.Add("@Telefono2", SqlDbType.VarChar).Value = Text41.Value.ToString();
                        querySaveStaff.Parameters.Add("@Tipo", SqlDbType.VarChar).Value = DropDownList2.SelectedValue.ToString();
                        querySaveStaff.Parameters.Add("@Persona", SqlDbType.VarChar).Value = DropDownList2.SelectedValue.ToString();
                        querySaveStaff.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = Text2.Value.ToString();
                        querySaveStaff.Parameters.Add("@Row", SqlDbType.Int).Value = Row;
                    try
                        {
                            openCon.Open();
                            querySaveStaff.ExecuteNonQuery();
                            openCon.Close();
                            Response.Cookies["indexC"].Expires = DateTime.Now.AddDays(-1);
                            Response.Write("<script>alert('CLIENTE ACTUALIZADO')</script>");
                        }
                        catch (SqlException ex)
                        {
                            Response.Write("Error" + ex);
                        }
                    }
            }

            
        }
    }
}