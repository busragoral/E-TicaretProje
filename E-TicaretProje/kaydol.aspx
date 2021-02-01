<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kaydol.aspx.cs" Inherits="E_TicaretProje.kaydol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>SIGN UP</title>
    <link rel="stylesheet" href="style.css" />

</head>
<body>
    <form id="form1" runat="server" class="box">
        <div>
             <h1>SIGN UP </h1>
            <asp:TextBox ID="Adi" runat="server" placeholder="Name"> </asp:TextBox>
            <asp:TextBox ID="Soyadi" runat="server" placeholder="Lastname"></asp:TextBox>
            <asp:TextBox ID="Email" runat="server" placeholder="E-mail" ></asp:TextBox>
            <asp:TextBox ID="Kullanici" runat="server" placeholder="Username"></asp:TextBox>
            <asp:TextBox ID="Sifre" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
            <asp:LinkButton ID="Buton_Kaydol" runat="server"  BorderStyle="Ridge" BorderWidth="4px" Font-Bold="True" Font-Overline="False" Font-Size="Medium" ForeColor="White" Height="24px" Width="69px" OnClick="Buton_Kaydol_Click"  >SIGN UP</asp:LinkButton>
           

        </div>
    </form>
</body>
</html>
