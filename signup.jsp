<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" href="signup.css">
    </head>
   
    <body>
        <div class="bg"></div>
        <div class="signup-box">
            <img src="img/avatar.png" class="avatar">
           <h1 style="color: white">SIGNUP</h1>
           
                    <form action="signup" method="post" name="myform" onsubmit="return validateform();">
                    <p>Name</p>
                    <input type="text" name="uname" placeholder="Enter Username">
                    
                    <p>Email Id</p>
                    <input type="email" name="email" placeholder="Enter Email">
                    
                    <p>Department</p>
                    <input type="text" name="dep" placeholder="Enter Your Department">
                    
                    <p>Mobile Number</p>
                    <input type="number" name="mobileno" placeholder="Enter Mobile Number">
                    
                    <p class="name">Password</p>
                    <input class="password" type="password" name="password" placeholder="Enter Password">
                    
                    <p class="name">Confirm Password</p>
                    <input class="password" type="password" name="cpassword" placeholder="Re-enter the password">

		    <input type="submit" name="SIGNUP" id="submit" value="SignUp">
                    <div class="Signup">
                    <a href="login.jsp">LogIn</a>
                        
                    </div>
                    </form>
        </div>
 <script>
    function validateform(){
        var username=document.myform.uname.value;
        var email=document.myform.email.value;
        var dep=document.myform.dep.value;
        var phoneno=document.myform.mobileno.value;
        var atposition=email.indexOf("@");  
        var dotposition=email.lastIndexOf("."); 
        var password=document.myform.password.value;
        var cpassword=document.myform.cpassword.value;

      
        if(username == null || username == ""){
            alert("User Name can't be blank");
            return false;
        }
        else if (atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){  
            alert("Please enter a valid e-mail address");  
            return false;  
        }
        if(dep == null || dep == ""){
            alert("Enter your Department");
            return false;
        }
        else if(phoneno.length != 10) {
            alert("Enter a valid mobile Number");
            return false;
        }
        else if(password.length<6){     
            alert("Password must be at least 6 characters long and must contain 1 digit and 1 special character");
            return false;
        }
        else if(password!=cpassword){
            alert("Password mismatched");
            return false;
        }
        else{
            return true;
        }
    }
</script>
    
        
    </body>
</html>
