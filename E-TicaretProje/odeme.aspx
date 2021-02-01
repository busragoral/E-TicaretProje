<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="odeme.aspx.cs" Inherits="E_TicaretProje.odeme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title> ÖDEME </title>
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
            width: 400px;
             }
    
         .auto-style3 {
             border-style: none;
            border-color: inherit;
            border-width: medium;
            height: 6px;
              width: 400px;
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
             width: 400px;
             border-left-color: #00cc00;
             border-right-color: #00cc00;
             border-top-color: #00cc00;
             border-bottom-color: #00cc00;
             
             
             }
              
        .auto-style8 {
            width: 388px;
        }

          .auto-style12 {
            width: 496px;
            height: 80px;

        }
              
    </style>
</head>
<body>
    <form id="form1" runat="server" >
         <div>
            <div style="font-family: Arial" >
    <table  colspan="3" align="center"class="auto-style2"  >
        <tr> 
            <td colspan="2" align="center" class="auto-style3"  >


             
                  <table class="auto-style5"  height="150" class="auto-style2" align="center" >

                            <tr>
                            <td class="auto-style8">
                                
                                 

                                <table class="auto-style12" align="center" >
                                    <tr>
                                      
                                       <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/index.aspx" ForeColor="Black" font="weight:bold" text-decoration="none" BackColor="#EC7600" BorderColor="#003366" BorderWidth="3" BorderStyle="Groove"  Font-Bold="True">ANASAYFA</asp:LinkButton> <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" runat="server"  ForeColor="Black" font="weight:bold" text-decoration="none" BackColor="#EC7600" BorderColor="#003366" BorderWidth="3" BorderStyle="Groove"  Font-Bold="True" >ÖDEME</asp:LinkButton>

                                        <th class="auto-style7"style="font-family: 'Arial'; color: #FFFFFF; font-size: medium;"> 
                                          FİYAT
                                        </th>
                                        

                                    </tr>
                                    <asp:Repeater ID="Repeater1" runat="server"  ClientIDMode="AutoID" >
                                        <ItemTemplate>
                                            <tr>
                                         
                                                 <td class="auto-style7" style="font-family: 'Arial '; color: #FFFFFF; font-size: medium;">
                                                     <%# Eval("fiyat") %>
                                                </td>
                                                
                                            </tr>

                                        </ItemTemplate>
                        <AlternatingItemTemplate>  
                         <tr>
                              <tr>
                                                <td class="auto-style7" style="font-family: 'Arial'; color: #FFFFFF; font-size: medium;">
                                                     <%# Eval("fiyat") %>
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






         
                              

       
   
         
                                </div>
          
              
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ETicaretDBConnectionString1 %>" SelectCommand="SELECT [fiyat], [uyeid], [statu] FROM [sepet]"></asp:SqlDataSource>
</body>
</html>
