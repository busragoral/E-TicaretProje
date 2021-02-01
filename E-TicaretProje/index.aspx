<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="E_TicaretProje.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" href="style.css" />


     <style>
   

    
       
    table, th, td{
    border: 2px solid ;


}
        .auto-style2 {
            height: 140px;
            width: 841px;
             border: none;
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
    
         .auto-style6 {
             border-style: none;
             border-color: inherit;
             border-width: medium;
             width: 100%;
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
    <form id="form1" runat="server"  >
   
        <div>
            
            <div style="font-family: Arial">
    <table  colspan="3" align="center"class="auto-style2"  >
        <tr> 
            <td colspan="2" align="center" class="auto-style3"  >
                
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/bnr.jpg" Height="187px" Width="876px"  />
                
            </td>
        </tr>
        <tr>
            <td width="60%"  class="auto-style6" >
                 <table  height="199" class="auto-style5" >
                    
                     <asp:TextBox ID="txtKelime" runat="server"  placeholder=" Ürün adını giriniz..."  ></asp:TextBox>
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  Text="ÜRÜN ARA"  ForeColor="Black" font="weight:bold" text-decoration="none" BackColor="#EC7600" BorderColor="#003366" BorderWidth="3" Font-Bold="True" BorderStyle="Groove" /> &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &nbsp;
                     <asp:LinkButton ID="LinkButton3" Text="Sepete Ekle" ForeColor="Black" font="weight:bold" text-decoration="none" BackColor="#00cc00" BorderColor="#003366" BorderWidth="3" BorderStyle="Groove"  Font-Bold="True" runat="server" PostBackUrl="~/sepet.aspx">SEPETE GİT</asp:LinkButton>
                     <asp:Repeater ID="Repeater1" runat="server" ClientIDMode="AutoID" OnItemCommand="Repeater1_ItemCommand1" >
                 
                  <ItemTemplate>
  
                     <tr >

                        <th class="auto-style7"style="font-family: 'Arial Black'; color: #FFFFFF; font-size: medium;" > <%# Eval("urunadi") %> </th>


                       <th class="auto-style7" > <asp:Image ID="Image8" ImageUrl="~/Images/3.jpg" runat="server" /></th> 
                         <td class="auto-style7" >&nbsp; <asp:LinkButton  Text="Sepete Ekle" ID="LinkButton1" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="sepet"  ForeColor="Black" font="weight:bold" text-decoration="none" BackColor="#EC7600" BorderColor="#003366" BorderWidth="3" Font-Bold="True" BorderStyle="Groove">SEPETE EKLE</asp:LinkButton> <font color="green" size="6"  > | </font>
                           <asp:LinkButton ID="LinkButton2" runat="server"  Text="Ürün Detay"  ForeColor="Black" font="weight:bold" CommandArgument='<%# Eval("ID") %>' CommandName="detay"  text-decoration="none" BackColor="#EC7600" BorderColor="#003366" BorderWidth="3" BorderStyle="Groove" Font-Bold="True" > DETAY </asp:LinkButton></td>                          
                            
                         </ItemTemplate>
                     <AlternatingItemTemplate>   <!-- Alternatie template satır satır farklı renk yapar -->
                         <tr>
                               <th class="auto-style7" style="font-family: 'Arial Black'; color: #FFFFFF; font-size: medium;"> <%# Eval("urunadi") %></th>
                              <th class="auto-style7" > <asp:Image ID="Image8" ImageUrl="~/Images/pc2.jpg" runat="server" /></th>
                              <td class="auto-style7"> &nbsp; <asp:LinkButton  Text="Sepete Ekle" ID="LinkButton1" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="sepet" ForeColor="Black" font="weight:bold" text-decoration="none" BackColor="#EC7600" BorderColor="#003366" BorderWidth="3" BorderStyle="Groove"  Font-Bold="True">SEPETE EKLE</asp:LinkButton> <font color="green" size="6"  > | </font>
                             <asp:LinkButton ID="LinkButton2" runat="server"  Text="Ürün Detay"  ForeColor="Black" font="weight:bold" text-decoration="none" BackColor="#EC7600" CommandArgument='<%# Eval("ID") %>' CommandName="detay"  BorderColor="#003366" BorderWidth="3" BorderStyle="Groove" Font-Bold="True" > DETAY </asp:LinkButton></td> 
                          
                             </tr>
 
                        </AlternatingItemTemplate>

                 
                              <FooterTemplate>

            
                                 </tbody>
              
       
        </table>
                                
                                  </table>
          
            </FooterTemplate>
               </asp:Repeater>
             </div>
            
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ETicaretDBConnectionString1 %>" SelectCommand="SELECT [urunadi], [urunresim] FROM [urunler]"></asp:SqlDataSource>
            
                 </form>

                </body>
   
</html>
