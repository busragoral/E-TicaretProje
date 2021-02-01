<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="E_TicaretProje.loginsayfasıaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> LOGIN PAGE</title>
      <link rel="stylesheet" href="style.css" />
</head>
<body>
    <form id="form1" runat="server" class="box">
        <div>
            <h1>LOGIN PAGE</h1>
       <asp:TextBox ID="Kullanici" runat="server" placeholder="Username" > </asp:TextBox>
        <asp:TextBox ID="Sifre" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox> <br />
            <asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="Ridge" BorderWidth="4px" Font-Bold="True" Font-Overline="False" Font-Size="Medium" ForeColor="White" Height="24px" Width="69px" OnClick="LinkButton1_Click">LOGIN</asp:LinkButton>
      &nbsp;
            
            <asp:LinkButton ID="LinkButton2" runat="server" BorderStyle="Ridge" BorderWidth="4px" Font-Bold="True" Font-Overline="False" Font-Size="Medium" ForeColor="White" Height="24px" Width="69px" Font-Strikeout="False" PostBackUrl="~/kaydol.aspx"  > SIGN UP</asp:LinkButton>
            </div>
    </form>
</body>
</html>
