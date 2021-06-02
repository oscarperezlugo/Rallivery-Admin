<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="PanelAdmin.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Administrativo JEBCPHARMA</title>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="Content/columnas.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200&display=swap" rel="stylesheet"/>  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="Content/Print.css" rel="stylesheet" media="print"/>
        <link rel="preconnect" href="https://fonts.gstatic.com"/>       
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100&family=Roboto:wght@100&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@700&display=swap" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <nav  id="nave" class="fila fijador nave">
                <div  class="col2L  col0M col0S col0T" >
                    <a href="http://rallivery.somee.com/Default.aspx"><img id="logo" src="img/Recurso3.png" /></a>
                </div>               
                <div id="registro" class="col6L  col1M col1S col2T">
                    <div class="fila">
                        <a href="http://rallivery.somee.com/Site1.aspx" id="registrobot" class="col10L">Chi Siamo</a>
                        <a href="http://rallivery.somee.com/Site2.aspx" id="sesion" class="col10L">Diventa Rallista</a>
                        <a href="http://rallivery.somee.com/Home.aspx" id="zonat" class="col10L">Diventa Partner</a>
                    </div>                             
                </div>                
                <div id="moneda" class="col2L  col1M col1S col2T">
                    <div class="fila">
                        <a href="Login.aspx" id="monedat" class="col10L">Accedi</a>
                        <a href="Registro.aspx" id="botoncarrito">Registrati</a>   
                    </div>                   
                </div>                                                                                
            </nav>
        <nav class="subnave fijadordos">
            <%--<label class="fa fa-bars botonsub no-print" for="check"/>&ensp; 
            <i class="fas fa-user"></i>&ensp;<asp:Label ID="Label1" runat="server" CssClass="nomlog" for="chek"></asp:Label>--%>
        </nav> 
        <div id="cajacontenedor" class="container body-content">
         <div class="container">
        <div class="card">
        <div class="card-header">
                <div class="form-row">
                    <div class="col10L">                        
                        <asp:Label ID="Label6" runat="server" Text="Acceso" CssClass="titulocard"></asp:Label>                                                
                    </div>                   
                </div>
            </div>
             
        <div class="card-body">
                <div class="form-row">   
   
<%--        <div class="baseform" style="width:60%; margin-left:20%;">--%>
             <table style="width: 100%;">
                <tr>                    
                    <td><div class="fila col10L">
                        <asp:Label ID="Label1" runat="server" Text="Nome della attività" class="formularioTIT"></asp:Label><br />                        
                <input class="formulario" placeholder="Nome della attività" id="Nombre" type="text" required runat="server"/>            
            </div></td>
                    <td> <div class="fila col10L">
                        <asp:Label ID="Label2" runat="server" Text="Email" class="formularioTIT"></asp:Label><br />   
                <input class="formulario" placeholder="Email" id="Correo" type="email" required runat="server"/>            
            </div></td>
                     </tr>
                <tr>
                    <td><div class="fila col10L">
                        <asp:Label ID="Label3" runat="server" Text="Telefono" class="formularioTIT"></asp:Label><br />   
                <input class="formulario" placeholder="Télefono" id="Telefono" type="text" maxlength="11" required runat="server"/>            
            </div></td>
                    <td><div class="fila col10L">
                        <asp:Label ID="Label7" runat="server" Text="Tipologia di attività svolta" class="formularioTIT"></asp:Label><br />   
                 <asp:DropDownList ID="DropDownList1" runat="server" CssClass="formulario">
                    <asp:ListItem>Prenota e ritira</asp:ListItem>
                    <asp:ListItem>Consegna a domicilio autonoma</asp:ListItem>
                    <asp:ListItem>Consegna a domicilio con il team di Rallisti</asp:ListItem>
                    <asp:ListItem>Tutti i servizi</asp:ListItem>
                </asp:DropDownList>         
            </div></td>
                </tr>
                <tr>
                    <td><div class="fila col10L">
                       <asp:Label ID="Label4" runat="server" Text="CAP" class="formularioTIT"></asp:Label><br />   
                <input class="formulario" placeholder="CAP" id="Text1" type="text" maxlength="11" required runat="server"/>            
            </div></td>
                    <td><div class="fila col10L">
                        <asp:Label ID="Label5" runat="server" Text="Indirizzo e numero civico del locale" class="formularioTIT"></asp:Label><br />   
                <input class="formulario" placeholder="Indirizzo e numero civico del locale" id="Dirección" type="text" required runat="server"/>            
            </div></td>
                     </tr>
                <tr>
                    <td><div class="fila col10L">                       
                                    <asp:Label ID="Label8" runat="server" Text="Password" class="formularioTIT"></asp:Label><br />  
                <input class="formulario" placeholder="Password" id="Contraseña" type="password" required runat="server"/>   
            </div></td>
                    
                    <td><div class="fila col10L">
                        <asp:Label ID="Label9" runat="server" Text="Conferma Password" class="formularioTIT"></asp:Label><br />  
                <input class="formulario" placeholder="Conferma Password" id="Repetir" type="password" required runat="server"/>            
            </div></td>
                </tr>
                <tr>
                    <td><div class="fila col10L">
                       <asp:Label ID="Label10" runat="server" Text="Nome e cognome" class="formularioTIT"></asp:Label><br />   
                <input class="formulario" placeholder="Nome e cognome" id="Text31" type="text" maxlength="11" required runat="server"/>            
            </div></td>
                    <td><div class="fila col10L">
                        <asp:Label ID="Label11" runat="server" Text="Indirizzo email" class="formularioTIT"></asp:Label><br />   
                <input class="formulario" placeholder="Indirizzo email" id="Text44" type="email" required runat="server"/>            
            </td></div>
                     </tr>
                <tr>
                    <td><div class="fila col10L">
                        <asp:Label ID="Label12" runat="server" Text="Cellulare" class="formularioTIT"></asp:Label><br />   
                       <input class="formulario" placeholder="Cellulare" id="Text2" type="text" required runat="server"/> 
            </div></td>
                    
                    <td><div class="fila col10L">
                        <asp:Label ID="Label13" runat="server" Text="Manzione svolta nella attività" class="formularioTIT"></asp:Label><br />   
                <input class="formulario" placeholder="Manzione svolta nella attività" id="Text3" type="text" required runat="server"/>            
            </div></td>
                </tr> 
                <tr>
                    <td>
                        <div class="fila col10L">
                                <asp:Label ID="Label15" runat="server" Text="Foto" class="formularioTIT"></asp:Label><br /> 
               <c></c><asp:FileUpload ID="FileUpload1" runat="server" CssClass="formulario" />       </c>            
            </div> 
                    </td>
                    <td>
                        <div class="fila col10L">
                            <asp:Label ID="Label14" runat="server" Text="Qualche info da darci?" class="formularioTIT"></asp:Label><br /> 
                <input class="formulario" placeholder="Qualche info da darci?" id="Apellido" type="text" required runat="server"/>            
            </div>
                    </td>
                </tr>
            </table>
                     <div class="fila col10L">
               <center><asp:Button class="botonsubmit" value="REGISTRAR CLIENTE" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="REGISTRAR CLIENTE"/></center>       
            </div>
            </div>
        </div>    
                       </div>
        </div>    
              </div>   
       
<%--              </div>  --%>
            
         <footer class="footer fila ">
        <div id="footer1" class="col2L col1M col1S col1T divfoot">
            <div class="fila">
                <img id="logobajo" src="img/Isologo_5.png" />
                <a class="elefoot col10L">© 2021 - Rallivery.</a><br />
                <a class="elefoot col10L">Tutti i diritti riservati.</a>
            </div>
        </div>
        <div id="footer2" class="col2L col1M col1S col1T divfoot">
            <a class="elefoottres col10L">Categorie</a><br />
            <br />
            <a class="elefootdos col10L">Ristoranti</a><br />
            <a class="elefootdos col10L">Supermercati</a><br />
            <a class="elefootdos col10L">Farmacie</a><br />
            <a class="elefootdos col10L">Florerie</a><br />
            <a class="elefootdos col10L">Ferramente</a>
        </div>
        <div id="footer3" class="col2L col1M col1S col1T divfoot">
            <a class="elefoottres col10L">Informazione</a><br />
            <br />
            <a class="elefootdos col10L">Termini e Condizione</a><br />
            <a class="elefootdos col10L">Privacy Policy</a><br />
            <a class="elefootdos col10L">Cookie Policy</a><br />
            <a class="elefootdos col10L">Contatacci</a><br />
            
        </div>
        <div id="footer4" class="col2L col1M col1S col1T divfoot">
            <br />
            <br />
            <br />
            <a class="elefootdos col10L">Chi Siamo</a><br />
            <a class="elefootdos col10L">Diventa Rallista</a><br />
            <a class="elefootdos col10L">Diventa Partner</a><br />
        </div>
        <div id="footer5" class="col2L col1M col1S col1T divfoot">
            <a class="elefoottres col10L">Portaci ovunque</a><br />
            <img class="logodes" src="img/Frame1.png" /><br />
            <img class="logodes" src="img/imagen7.png" /><br />  
            <a class="elefoottres col10L">Seguici su</a><br />
            <i class="fa fa-instagram elefoottres" aria-hidden="true" style="font-size:25px;"></i>
            <i class="fa fa-facebook-official elefoottres" aria-hidden="true" style="font-size:25px;"></i>
            <br />
        </div>
    </footer>
    </form>
</body>
</html>
