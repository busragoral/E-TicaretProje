<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeBehind="arama.aspx.cs" Inherits="E_TicaretProje.arama" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title> ÜRÜN BİLGİSİ </title>
    <link rel="stylesheet" href="style.css" />

    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>

    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style>

       table, th, td{
    border: 2px solid ;


}
        .auto-style2 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            height: 336px;
            width: 615px;
             }
    
         .auto-style3 {
             height: 6px;
              border: none;

         }
    
         .auto-style5 {
             width: 100%;
             border-style:solid;

            border-width:5px;

           border-color:#ff6600 #00cc00;
	 
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
              
        .auto-style9 {
            border-left-width: 0px;
            border-top-width: 1px;
            border-bottom-width: 0px;
            width: 492px;
            border-left-color: #00cc00;
            border-right-color: #00cc00;
            border-top-color: #00cc00;
            border-bottom-color: #00cc00;
        }
        .auto-style12 {
            width: 491px;
            height: 190px;

        }
              
        .auto-style13 {
            border-left-width: 0px;
            border-top-width: 1px;
            border-bottom-width: 0px;
            width: 784px;
            border-left-color: #00cc00;
            border-right-color: #00cc00;
            border-top-color: #00cc00;
            border-bottom-color: #00cc00;
        }
        .auto-style14 {
            border-left-width: 0px;
            border-top-width: 1px;
            border-bottom-width: 0px;
            width: 708px;
            border-left-color: #00cc00;
            border-right-color: #00cc00;
            border-top-color: #00cc00;
            border-bottom-color: #00cc00;
            height: 378px;
        }
        .auto-style15 {
            border-left-width: 0px;
            border-top-width: 1px;
            border-bottom-width: 0px;
            width: 628px;
            border-left-color: #00cc00;
            border-right-color: #00cc00;
            border-top-color: #00cc00;
            border-bottom-color: #00cc00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server"   class="box" >
          <div style="font-family: Arial" >
            <h1>ÜRÜN BİLGİSİ</h1>
          
              
                           
            <asp:Repeater ID="Repeater1" runat="server"  >
                <ItemTemplate>
                    <table class="auto-style5"  height="77" >
                   <tr>
                    <td class="auto-style7" style="font-family: 'Arial Black'; font-size: large; color: #FFFFFF">
                        
                             <%# Eval("urunadi") %>

                    </tr>
                                                
                      </table>
                                                
                </ItemTemplate>
            </asp:Repeater>

                      
              </div>
      
    </form>
</body>
</html>
