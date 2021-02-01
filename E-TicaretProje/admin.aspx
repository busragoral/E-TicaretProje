<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="E_TicaretProje.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="admin/assets/images/favicon.png">
   
    <!-- Custom CSS -->
    <link href="admin/assets/libs/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet" />
    <link href="admin/assets/extra-libs/calendar/calendar.css" rel="stylesheet" />
    <link href="admin/dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <title>ADMİN PANEL</title>
     <style>
   

    
       
    table, th, td{
    border: 2px solid ;


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
              
         .auto-style8 {
             border-left-width: 0px;
             border-top-width: 1px;
             border-bottom-width: 0px;
             width: 708px;
             border-left-color: #00cc00;
             border-right-color: #00cc00;
             border-top-color: #00cc00;
             border-bottom-color: #00cc00;
             height: 28px;
         }
              
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    &nbsp;</div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin5">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon -->
                        <b class="logo-icon p-l-10">
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="admin/assets/images/logo-icon.png" alt="homepage" class="light-logo" />
                           
                        </b>
                        <!--End Logo icon -->
                         <!-- Logo text -->
                        <span class="logo-text">
                             <!-- dark Logo text -->
                             <img src="admin/assets/images/logo-text.png" alt="homepage" class="light-logo" />
                            
                        </span>
                     
                  
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto">
                        <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="mdi mdi-menu font-24"></i></a></li>
                        <!-- ============================================================== -->
                        <!-- create new -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                             <span class="d-none d-md-block">Create New <i class="fa fa-angle-down"></i></span>
                             <span class="d-block d-md-none"><i class="fa fa-plus"></i></span>   
                            </a>
                        
                
                        <!-- ============================================================== -->
                        <!-- End Comment -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- Messages -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" id="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="font-24 mdi mdi-comment-processing"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right mailbox animated bounceInDown" aria-labelledby="2">
                                <ul class="list-style-none">
                                    <li>
                                        
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- End Messages -->
                        <!-- ============================================================== -->

                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="admin/assets/images/users/1.jpg" alt="user" class="rounded-circle" width="31"></a>
                            
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin5">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav" class="p-t-30">
             
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="ekleme.aspx" aria-expanded="false"><i class="mdi mdi-border-inside"></i><span class="hide-menu">ÜRÜN EKLE</span></a></li>
                   
                     
                      
                            </ul>
                      
                    
                     
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">ADMİN PANEL </h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                            
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
              <div>
            
            <div style="font-family: Arial">
  
                 <table  height="199" class="auto-style5" >
                 
                                    <tr>
                                        <th class="auto-style8">
                                          ÜRÜN ADI
                                        </th >
                                        <th class="auto-style8"> 
                                           ÜRÜN DETAY
                                        </th>
                                        <th class="auto-style8"> 
                                          ÜRÜN FİYAT
                                        </th>
                                        <th class="auto-style8"> 
                                          ÜRÜN STOK
                                        </th>

                                    </tr>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                                  <ItemTemplate>

  
                     <tr >

                        <th class="auto-style7" > <%# Eval("urunadi") %> </th>
                           <td class="auto-style7" > <%# Eval("urundetay") %> </td>
                           <td class="auto-style7" > <%# Eval("urunfiyat") %> </td>
                           <td class="auto-style7" > <%# Eval("urunstok") %> </td>
                        
                       </tr>

                            
                         </ItemTemplate>
                     <AlternatingItemTemplate>   <!-- Alternatie template satır satır farklı renk yapar -->
                         <tr>
                               <td class="auto-style7" > <%# Eval("urunadi") %></td>
                              <td class="auto-style7" > <%# Eval("urundetay") %> </td>
                               <td class="auto-style7" > <%# Eval("urunfiyat") %> </td>
                           <td class="auto-style7" > <%# Eval("urunstok") %> </td>
                            
                         
                          
                             </tr>
 
                        </AlternatingItemTemplate>

                 
                              <FooterTemplate>

            
                                 </tbody>
              
       
                                
                                  </table>
          
            </FooterTemplate>

                
            </asp:Repeater>
        
                    </div>

   
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ETicaretDBConnectionString1 %>" SelectCommand="SELECT [urunadi], [urundetay], [urunstok], [urunfiyat] FROM [urunler]"></asp:SqlDataSource>
        
                    
   
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="admin/assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="admin/dist/js/jquery.ui.touch-punch-improved.js"></script>
    <script src="admin/dist/js/jquery-ui.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="admin/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="admin/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="admin/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="admin/assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="admin/dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="admin/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="admin/dist/js/custom.min.js"></script>
    <!-- this page js -->
    <script src="admin/assets/libs/moment/min/moment.min.js"></script>
    <script src="admin/assets/libs/fullcalendar/dist/fullcalendar.min.js"></script>
    <script src="admin/dist/js/pages/calendar/cal-init.js"></script>
    </form>
    </body>
</html>
