<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Tripia Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main2.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-77 p-b-30">
				<form class="login100-form validate-form" id="login" action="member?param=loginAf" method="post">				
					<span class="login100-form-title p-b-55">
						Login
					</span>
						<div class="wrap-input100 validate-input m-b-16">
							<input class="input100" type="text" id="_userId" name="userID" placeholder="ID" required>
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<span class="lnr lnr-envelope"></span>
							</span>
						</div>
					
						<div class="wrap-input100 validate-input m-b-16">
							<input class="input100" type="password" name="userPassword" placeholder="Enter Password" required>
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<span class="lnr lnr-lock"></span>
							</span>
						</div>
	
						<div class="contact100-form-checkbox m-l-4">							
							<input type="checkbox" id="chk_save_id" type="checkbox" name="remember-me">
								Remember me
						</div>
						
						<div class="container-login100-form-btn p-t-25">
							<button class="login100-form-btn">
								Login
							</button>
						</div>

					<div class="text-center w-full p-t-42 p-b-22">
						<span class="txt1">
							Our Blogs
						</span>
					</div>

					<a href="https://www.facebook.com/profile.php?id=100065663813068" class="btn-face m-b-10">
						<i class="fa fa-facebook-official"></i>
						Facebook
					</a>

					<a href="https://www.instagram.com/travel_with_tripia/" class="btn-google m-b-10">
						<img src="images/icons/icon-instagram.png" alt="Instagram">
						Instagram
					</a>

					<div class="text-center w-full p-t-115">
						<span class="txt1">
							Not a member?
						</span>

						<a class="txt1 bo1 hov1" href="Register.jsp">
							Sign up now							
						</a>
					</div>
				</form> <!-- ????????? ??? ??? -->
			</div>
		</div>
	</div>
	
	
	<script type="text/javascript">
	

    let user_id = $.cookie("user_id");
    if(user_id != null){   // ????????? id??? ??????
  
       $("#_userId").val( user_id );
       $("#chk_save_id").attr("checked", "checked");
   
    }

    $("#chk_save_id").click(function() {
       
       if( $("#chk_save_id").is(":checked") ){

          if( $("#_userId").val().trim() == "" ){
             alert('id??? ????????? ????????????');
             $("#chk_save_id").prop("checked", false);         
          }else{
             // ????????? ??????
             $.cookie("user_id", $("#_userId").val().trim(), { expires:7, path:'./'});   
          }
       }
       else{
          $.removeCookie("user_id", { path:'./' });
       }
       
    }); </script>

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>