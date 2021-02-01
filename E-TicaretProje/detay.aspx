<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detay.aspx.cs" Inherits="E_TicaretProje.detay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> ÜRÜN DETAYLARI</title>
    <link rel="stylesheet" href="style.css" />
      <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>

    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style>

      table, th, td{
    border: 2px solid ;
    }

        .auto-style5 {
            width: 100%;
            border-style: solid;
            border-width: 5px;
            border-color: #ff6600 #00cc00;
        }
        
         .auto-style7 {
             border-left-width:0px;
             border-top-width:1px;
              border-bottom-width:0px;
             width: 708px;
             border-left-color: #00cc00;
             border-right-color: #00cc00;
             border-top-color: #00cc00;
             border-bottom-color: #00cc00;
             
             }
    </style>
   

</head>
<body>
        
   
   <form id="form1" runat="server" class="box">
               <div>
            <h1>ÜRÜN DETAYLARI</h1>
                   <table class="auto-style5"  height="199" >
                            <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label1" runat="server" Text="Label"  Font-Bold="True" Font-Names="Arial Black" ForeColor="White"></asp:Label></td>
                             </tr>
                             <tr>
                            <td class="auto-style7"> <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial Black" ForeColor="White"></asp:Label> </td>
                            </tr>
                       </table>
       
       
            </div>
    </form>
</body>
</html>
