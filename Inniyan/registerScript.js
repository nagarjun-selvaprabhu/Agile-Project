function validate(){
				var name=document.getElementById("employeeId").value;
				var password=document.getElementById("password").value;
				var firstName=document.getElementById("firstName").value;
				var lastName=document.getElementById("lastName").value;
                var mail=document.getElementById("email").value;
                var Q1=document.getElementById("Q1").value;
                var Q2=document.getElementById("Q2").value;
                var Q3=document.getElementById("Q3").value;
				var regexForPassword="(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{6,})";
				var regexForName="^[0-9]+$";
				var regexForFirstname="^[a-zA-Z]+$";
                var regexForLastname="^[a-zA-Z]+$";
                var regexForEmail="^[a-zA-Z0-9]+@[a-zA-Z0-9.-]+\.[A-Za-z]{2,}";
				
			    var regexForQuestions="^[a-zA-Z]+[?]$";
				if(name==""||!(name.match(regexForName))||name.length!=6){
                    document.getElementById("errorEmpid").innerHTML="Enter a valid Employee Id";
                   
				}else{
                    document.getElementById("errorEmpid").innerHTML="";
                }
			
				if(firstName=""||!(firstName.match(regexForFirstname))||firstName.length>20){
                    document.getElementById("errorfirstName").innerHTML="Enter a valid Name";
                   
				}else{
                    document.getElementById("errorfirstName").innerHTML="";
                }
		       if(lastName=""||!(lastName.match(regexForLastname))||lastName.length>20){
                    document.getElementById("errorlastName").innerHTML="Enter a valid Name";
                    
                }
                else{
                    document.getElementById("errorlastName").innerHTML="";
                }
                if(!(mail.match(regexForEmail))){
                    document.getElementById("erroremail").innerHTML="Enter a valid Email";
                    
				}else{
                    document.getElementById("erroremail").innerHTML="";
                }
                 if(!password.match(regexForPassword)){
                    document.getElementById("errorpassword").innerHTML="Enter a valid Password";
                    
				}else{
                    document.getElementById("errorpassword").innerHTML="";
                }
				
                if(Q1=""||!(Q1.match(regexForQuestions))||!(Q1.length>=10)){
                    document.getElementById("q1").innerHTML="Enter a valid question";
                    
                }else{
                    document.getElementById("q1").innerHTML="";
                }
                 if(Q2=""||!(Q2.match(regexForQuestions))||!(Q2.length>=10)){
                    document.getElementById("q2").innerHTML="Enter a valid question";
                    
                }else{
                    document.getElementById("q2").innerHTML="";
                }
                 if(Q3=""||!(Q3.match(regexForQuestions))||!(Q3.length>=10)){
                    document.getElementById("q3").innerHTML="Enter a valid question";
                   
				}else{
                    document.getElementById("q3").innerHTML="";
                }
				return false;
			}
