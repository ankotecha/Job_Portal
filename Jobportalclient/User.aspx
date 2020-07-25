<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Jobportalclient.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Contact V16</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="Theme/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme/css/util.css">
	<link rel="stylesheet" type="text/css" href="Theme/css/main.css">
<!--===============================================================================================-->
</head>
<body>
    
    
    <div class="bg-container-contact100" style="background-image: url(Theme/images/bg-01.jpg);">
		<div class="contact100-header flex-sb-m">
			<a href="#" class="contact100-header-logo">
				<img src="Theme/images/icons/logo.png" alt="LOGO"/>
			</a>
           
			
		</div>
	</div>


                 
<div class="container-contact100">
		<div class="wrap-contact100">
		

			<div class="contact100-form-title" style="background-image: url(Theme/images/bg-02.jpg);">
				<span>User Dashboard</span>
			</div>
          
               

			<form  runat="server" class="contact100-form validate-form">
                <div class="container-contact100-form-btn">
					 <asp:Button OnClick="Button1_Click" class="contact100-form-btn" ID="Button1" runat="server" Text="Select company" />
                   			
                </div>
               <%-- <div class="container-contact100-form-btn">
					 <asp:Button OnClick="Button2_Click" class="contact100-form-btn" ID="Button2" runat="server" Text="update" />
                   			
                </div>--%>
               
				
               

               
               
                
               
			
			</form>
		</div>
               
                
	</div>
   


         
<!--===============================================================================================-->
	<script src="Theme/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Theme/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Theme/vendor/bootstrap/js/popper.js"></script>
	<script src="Theme/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Theme/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Theme/vendor/daterangepicker/moment.min.js"></script>
	<script src="Theme/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Theme/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Theme/js/main.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
</body>
