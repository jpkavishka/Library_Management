<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
</head>

<body>
  <div class="bg"></div>
  <div class="login-box">
  <img src="img/avatar.png" class="avatar">
      <h1>MEMBER LOGIN</h1>
          <form action="login" method="post" name="myform" onsubmit="return validateform();">
          <p>Email ID</p>
          <input type="text" name="email" placeholder="Enter Your Email Id">
          <p>Password</p>
          <input type="password" name="password" placeholder="Enter Password">
          <input type="submit" name="submit" value="LogIn">
          
          <div class="Signup">
              <a href="signup.jsp">SignUp</a>
              
          </div>
          </form>
  </div>
  <script>
    function validateform(){
        var email=document.myform.email.value;
		var pwd=document.myform.password.value;
		if(email==null || email==""){
            alert("Enter Valid User Name");
            return false;
        }
		else if(pwd.length<6){     
                    alert("Password Incorrect");
                    return false;
        }
        else{
            return true;
        }
    }
</script>
</body>
 
</html>