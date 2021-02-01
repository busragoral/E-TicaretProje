<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ekleme.aspx.cs" Inherits="E_TicaretProje.ekleme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ÜRÜN EKLEME</title>
      <link rel="stylesheet" href="style.css" />
      <style>

        
    table, th, td{
    border: 2px solid ;


}
        .auto-style2 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
height: 94px;
            width: 200px;
             }
    
         .auto-style5 {
             width: 100%;
             border-style:solid;

            border-width:5px;

           border-color:#ff6600 #00cc00;
	 
         }
    
          .auto-style14 {
              width: 286px;
              height: 467px;
          }
          .auto-style15 {
              width: 249px;
              height: 94px;
          }
              
          .auto-style16 {
              width: 221px;
              height: 17px;
          }
          .auto-style17 {
              border-style: none;
              border-color: inherit;
              border-width: medium;
          }
              
    </style>
</head>
<body>
    <form id="form1" runat="server">
     

             <div>
              <div style="font-family: Arial" >



   <table class="auto-style5"  height="199" class="auto-style2" align="center" >

                            <tr>
                            <td class="auto-style14">

                                <table  border="0" style="width:40%" align="center" >
        <tr>
            <th class="auto-style2">
               <p align="left"> <asp:Label ID="Label5" runat="server" Text="Ürün Adı:" ForeColor="White"></asp:Label></p>
            </th>
            <th class="auto-style15">
                 <p align="left" class="auto-style16"> <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style17" Width="210px" Height="19px"></asp:TextBox></p>
            </th>
            
        </tr>
                                    <tr>
            <th class="auto-style2">
               <p align="left"> <asp:Label ID="Label1" runat="server" Text="Ürün Detay:" ForeColor="White"></asp:Label></p>
            </th>
            <th class="auto-style15">
                 <p align="left"> <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style17" Width="210px" Height="19px"></asp:TextBox></p>
            </th>
            
        </tr>
                                    <tr>
            <th class="auto-style2">
               <p align="left"> <asp:Label ID="Label2" runat="server" Text="Ürün Stok:" ForeColor="White"></asp:Label></p>
            </th>
            <th class="auto-style15">
                 <p align="left"> <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style17" Width="210px" Height="19px"></asp:TextBox></p>
            </th>
            
        </tr>
        <tr>
            <th class="auto-style2">
               <p align="left"> <asp:Label ID="Label3" runat="server" Text="Ürün Fiyat:" ForeColor="White"></asp:Label></p>
            </th>
            <th class="auto-style15">
                 <p align="left"> <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style17" Width="210px" Height="19px"></asp:TextBox></p>
            </th>
            
        </tr>

</table>
    <center><asp:LinkButton ID="LinkButton1"  runat="server" OnClick="LinkButton1_Click" ForeColor="Black" font="weight:bold" text-decoration="none" BackColor="#EC7600" BorderColor="#003366" BorderWidth="3" BorderStyle="Groove"  Font-Bold="True">EKLE</asp:LinkButton></center>   


    </form>
</body>
</html>
