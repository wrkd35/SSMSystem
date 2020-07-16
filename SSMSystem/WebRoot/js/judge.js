   function validate() {
              var pwd1 = document.getElementById("password").value;
              var pwd2 = document.getElementById("password1").value;
              if(pwd1 == pwd2) {
                  document.getElementById("tishi").innerHTML="<font color='yellow'>The two passwords are the same</font>";
                  document.getElementById("submit").disabled = false;
              }
              else {
                  document.getElementById("tishi").innerHTML="<font color='red'>The two passwords are not the same</font>";
                document.getElementById("submit").disabled = true;
              }
          }
  function validate1() {
              var pwd1 = document.getElementById("password2").value;
              var pwd2 = document.getElementById("password3").value;
              if(pwd1 == pwd2) {
                  document.getElementById("tishi1").innerHTML="<font color='yellow'>The two passwords are the same</font>";
                  document.getElementById("submit").disabled = false;
              }
              else {
                  document.getElementById("tishi1").innerHTML="<font color='red'>The two passwords are not the same</font>";
                document.getElementById("submit").disabled = true;
              }
          }
  function validate2() {
      var pwd1 = document.getElementById("input-36").value;
      var pwd2 = document.getElementById("input-37").value;
      if(pwd1 == pwd2) {
          document.getElementById("tishi1").innerHTML="<font color='blue'>The two passwords are the same</font>";
          document.getElementById("submit").disabled = false;
      }
      else {
          document.getElementById("tishi1").innerHTML="<font color='red'>The two passwords are not the same</font>";
          document.getElementById("submit").disabled = true;
      }
  }
  function myCheck()  
            {  
               for(var i=0;i<document.form.elements.length-1;i++)  
               {  
                  if(document.form.elements[i].value=="")  
                  {  
                     alert("The form can't be empty! ");  
                     document.form.elements[i].focus();  
                     return false;  
                  }  
               }  
               return true;  
                
            }  
  function myCheck1()  
            {  
               for(var i=0;i<document.form1.elements.length-1;i++)  
               {  
                  if(document.form1.elements[i].value=="")  
                  {  
                     alert("The form can't be empty! ");  
                     document.form1.elements[i].focus();  
                     return false;  
                  }  
               }  
               return true;  
                
            }  