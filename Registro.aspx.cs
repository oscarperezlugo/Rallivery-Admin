using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PanelAdmin
{
    public partial class Registro : System.Web.UI.Page
    {
        string FOTO;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (Contraseña.Value.ToString() == Repetir.Value.ToString())
            {
                string verif = DateTime.Now.Ticks.ToString("N6");
                Byte[] Archivo = null;
                string nombreArchivo = string.Empty;
                string extensionArchivo = string.Empty;
                if (FileUpload1.HasFile == true)
                {
                    using (BinaryReader reader = new
                    BinaryReader(FileUpload1.PostedFile.InputStream))
                    {
                        Archivo = reader.ReadBytes(FileUpload1.PostedFile.ContentLength);
                        FOTO = Convert.ToBase64String(Archivo);
                    }
                    nombreArchivo = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
                    extensionArchivo = Path.GetExtension(FileUpload1.FileName);
                }

                using (SqlConnection openCon = new SqlConnection(ConexionString.conexion))
                {
                    string saveStaff = "INSERT into Usuario (Nombre, Correo, Id, Direccion, Telefono, Tipo, Foto, Pass, Ciudad, Tipologia, Servicio, Actividad, Persona, EmailContacto, Celular, Extra, Verif) VALUES (@Nombre, @Correo, @Id, @Direccion, @Telefono, @Tipo, @Foto, @Pass, @Ciudad, @Tipologia, @Servicio, @Actividad, @Persona, @EmailContacto, @Celular, @Extra, @Verif)";

                    using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                    {
                        querySaveStaff.Connection = openCon;
                        querySaveStaff.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = Nombre.Value.ToString();
                        querySaveStaff.Parameters.Add("@Correo", SqlDbType.VarChar).Value = Correo.Value.ToString();
                        querySaveStaff.Parameters.Add("@Id", SqlDbType.VarChar).Value = Text1.Value.ToString();
                        querySaveStaff.Parameters.Add("@Direccion", SqlDbType.VarChar).Value = Dirección.Value.ToString();
                        querySaveStaff.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = Telefono.Value.ToString();
                        querySaveStaff.Parameters.Add("@Tipo", SqlDbType.VarChar).Value = "RESTAURANT";
                        querySaveStaff.Parameters.Add("@Foto", SqlDbType.VarBinary).Value = Archivo;
                        querySaveStaff.Parameters.Add("@Pass", SqlDbType.VarChar).Value = Contraseña.Value.ToString();
                        querySaveStaff.Parameters.Add("@Ciudad", SqlDbType.VarChar).Value = "";
                        querySaveStaff.Parameters.Add("@Tipologia", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
                        querySaveStaff.Parameters.Add("@Servicio", SqlDbType.VarChar).Value = "";
                        querySaveStaff.Parameters.Add("@Actividad", SqlDbType.VarChar).Value = Text3.Value.ToString();
                        querySaveStaff.Parameters.Add("@Persona", SqlDbType.VarChar).Value = Text31.Value.ToString();
                        querySaveStaff.Parameters.Add("@EmailContacto", SqlDbType.VarChar).Value = Text44.ToString();
                        querySaveStaff.Parameters.Add("@Celular", SqlDbType.VarChar).Value = Text2.Value.ToString();
                        querySaveStaff.Parameters.Add("@Extra", SqlDbType.VarChar).Value = Apellido.Value.ToString();
                        querySaveStaff.Parameters.Add("@Verif", SqlDbType.VarChar).Value = verif;

                        try
                        {
                            openCon.Open();
                            querySaveStaff.ExecuteNonQuery();
                            openCon.Close();
                            Response.Write("<script>alert('UTENTE REGISTRATO')</script>");
                        }
                        catch (SqlException ex)
                        {
                            Response.Write("Error" + ex);
                        }
                    }
                }

            }
            else
            {
                Response.Write("<script>alert('LAS CONTRASEÑAS NO COINCIDEN')</script>");
            }
        }
    }
}