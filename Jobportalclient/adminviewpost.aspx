<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminviewpost.aspx.cs" Inherits="Jobportalclient.adminviewpost" %>


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
   <style>
        @import url(https://fonts.googleapis.com/css?family=Open+Sans);

html {
 
  /*background-image: linear-gradient(to right top, #8e44ad 0%, #3498db 100%);*/
}

nav {
  
}

nav ul {
  text-align: center;
  background: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 0.2) 25%, rgba(255, 255, 255, 0.2) 75%, rgba(255, 255, 255, 0) 100%);
  box-shadow: 0 0 25px rgba(0, 0, 0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
}

nav ul li {
  display: inline-block;
}

nav ul li a {
  padding: 18px;
  font-family: "Open Sans";
  text-transform:uppercase;
  color: rgba(0, 35, 122, 0.5);
  font-size: 18px;
  text-decoration: none;
  display: block;
}

nav ul li a:hover {
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
  background: rgba(200, 200, 200 , 0.1);
  color: rgba(0, 35, 122, 0.7);
}
body {
    background:url("Theme1/images/bg-01.jpg") no-repeat  center fixed; 
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
   }
</style>
</head>

    
    <nav class="bg-white">
  <ul>
    <li>
      <a href="AdminHome.aspx">Home</a>
    </li>
    
    <li>
      <a href="#">About us</a>
    </li>

    <li>
      <a href="LogOut.aspx">Logout</a>
    </li>
  </ul>
</nav>
    
    
   
    
    
<div class="container-contact100" style=" background:url("Theme1/images/bg-01.jpg") no-repeat  center fixed; 
    -webkit-background-size: cover;">
		<div class="wrap-contact100" style="width:1000px">
		

			<div class="contact100-form-title" style="background-image: url(Theme/images/bg-02.jpg);">
				<span>All job application posted by company</span>
			</div>
          
               

			<form  runat="server" class="contact100-form validate-form">
			  
                <asp:GridView ID="GridView1" runat="server"  CssClass="table table-striped table-bordered table-hover" ></asp:GridView>
               
               
                
               
			
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