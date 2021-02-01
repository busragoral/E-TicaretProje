<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="sepet.aspx.cs" Inherits="E_TicaretProje.sepet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> ÜRÜN SEPETİM</title>
 <link rel="stylesheet" href="style.css" />

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
             border-left-width:1px;
             border-top-width:1px;
              border-bottom-width:1px;
           
             border-left-color: #00cc00;
             border-right-color: #00cc00;
             border-top-color: #00cc00;
             border-bottom-color: #00cc00;
             
             }
              
        .auto-style9 {
            border-left-width: 0px;
            border-top-width: 1px;
            border-bottom-width: 1px;
            width: 492px;
            border-left-color: #00cc00;
            border-right-color: #00cc00;
            border-top-color: #00cc00;
            border-bottom-color: #00cc00;
        }
        .auto-style12 {
            width: 496px;
            height: 80px;

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
    <form id="form1" runat="server"  >
   
        <div>
            <div style="font-family: Arial" >
    <table  colspan="3" align="center"class="auto-style2"  >
        <tr> 
            <td colspan="2" align="center" class="auto-style3"  >



             
                  <table class="auto-style5"  height="199" class="auto-style2" align="center" >

                            <tr>
                            <td class="auto-style14">
                                
                                 <h3 id="sonuc" runat="server"  style="font-family: 'Arial Black'; font-size: large; font-weight: bold; color: #FFFFFF"></h3>
                                 <h4 id="sonuc2" runat="server"  style="font-family: 'Arial Black'; font-size: large; font-weight: bold; color: #FFFFFF"></h4>
                                <h5 id="sonuc3" runat="server" style="font-family: 'Arial Black'; font-size: large; font-weight: bold; color: #FFFFFF"></h5>
                                &emsp; &emsp; &nbsp;                                 <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/index.aspx" ForeColor="Black" font="weight:bold" text-decoration="none" BackColor="#EC7600" BorderColor="#003366" BorderWidth="3" BorderStyle="Groove"  Font-Bold="True">ANASAYFA</asp:LinkButton>
 <asp:LinkButton ID="odeme" runat="server" CommandArgument='<%# Eval("ID") %>'  CommandName ="odeme" ForeColor="Black" font="weight:bold" text-decoration="none" BackColor="#EC7600" BorderColor="#003366" BorderWidth="3" BorderStyle="Groove"  Font-Bold="True" PostBackUrl="~/odeme.aspx">ÖDEME</asp:LinkButton>

                                <table class="auto-style12" align="center" >
                                    <tr>
                                        <th class="auto-style7"style="font-family: 'Arial Black'; color: #FFFFFF; font-size: medium;">
                                            Ürün İsim
                                        </th >
                                        <th class="auto-style7"style="font-family: 'Arial Black'; color: #FFFFFF; font-size: medium;"> 
                                           Detay
                                        </th>
                                        <th class="auto-style7"style="font-family: 'Arial Black'; color: #FFFFFF; font-size: medium;"> 
                                          FİYAT
                                        </th>
                                         <th class="auto-style7"style="font-family: 'Arial Black'; color: #FFFFFF; font-size: medium;"> 
                                          SİL
                                        </th>

                                    </tr>
                                    <asp:Repeater ID="Repeater1" runat="server"  ClientIDMode="AutoID" OnItemCommand="Repeater1_ItemCommand">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="auto-style7" style="font-family: 'Arial '; color: #FFFFFF; font-size: medium;">
                                                     <%# Eval("urunadi") %>
                                                </td>
                                                <td class="auto-style7" style="font-family: 'Arial '; color: #FFFFFF; font-size: medium;">
                                                     <%# Eval("urundetay") %>
                                                </td>
                                                 <td class="auto-style7" style="font-family: 'Arial '; color: #FFFFFF; font-size: medium;">
                                                     <%# Eval("fiyat") %>
                                                </td>
                                                <td class="auto-style7">
                                                      <asp:LinkButton runat="server" ID="LinkButton1"   CommandName="sil" CommandArgument='<%# Eval("ID") %>' Text="SİL" ForeColor="Black" font="weight:bold" text-decoration="none" BackColor="#EC7600" BorderColor="#003366" BorderWidth="3" BorderStyle="Groove"  Font-Bold="True" Font-Underline="True" Font-Overline="False" ></asp:LinkButton><font color="green" size="6" / >
                                     
                                                
                                                    </td>
                                            </tr>

                                        </ItemTemplate>
                        <AlternatingItemTemplate>  
                         <tr>
                              <tr>
                                                <td class="auto-style7" style="font-family: 'Arial '; color: #FFFFFF; font-size: medium;">
                                                     <%# Eval("urunadi") %>
                                                </td>
                                                <td class="auto-style7" style="font-family: 'Arial'; color: #FFFFFF; font-size: medium;">
                                                     <%# Eval("urundetay") %>
                                                </td>
                                          <td class="auto-style7" style="font-family: 'Arial'; color: #FFFFFF; font-size: medium;">
                                                     <%# Eval("fiyat") %>
                                                </td>
                             
                              <td class="auto-style7">  <asp:LinkButton ID="LinkButton1" runat="server"  CommandName="sil" CommandArgument='<%# Eval("ID") %>' Text="SİL" ForeColor="Black" font="weight:bold" text-decoration="none" BackColor="#EC7600" BorderColor="#003366" BorderWidth="3" BorderStyle="Groove"  Font-Bold="True" Font-Underline="True" > </asp:LinkButton><font color="green" size="6" / > 
                                    
                                                
                                                    </td>
                                  </tr>
 
                        </AlternatingItemTemplate>

                 
                              <FooterTemplate>

            
                                 </tbody>
              
       
        </table>
                                
                                  </table>
          
            </FooterTemplate>
               </asp:Repeater>
                                </table>
                             </tr>
                            
                       </table>





            </td>
        </tr>   
  
       
        </table>
             
    </form>
</body>
</html>
