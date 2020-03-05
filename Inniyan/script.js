function validate(){
		var name=document.getElementById("username").value;
		var regexForPassword="(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{6,})";
		var regexForName="^[0-9]+$";
		var password=document.getElementById("password").value;
	
		if(name==""||!(name.match(regexForName))||name.length!=6){
            document.getElementById("usererror").innerHTML="Enter Valid User Id";
            return false;
		}else{
            document.getElementById("usererror").innerHTML="";
        }
		if(!password.match(regexForPassword)){
            document.getElementById("passworderror").innerHTML="Enter Valid Password";
            return false;
		}else{
            document.getElementById("passworderror").innerHTML="";
        }
		return true;
	}