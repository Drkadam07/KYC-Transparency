<%-- 
    Document   : create_kyc
    Created on : Jan 23, 2023, 12:59:44 PM
    Author     : Gulshan
--%>
<%@include file="flash.jsp" %>
<%@include file="user_navigation.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
function showHint() {
    var s=document.getElementById("amt").value;
    alert(str);
//    if(str>10000){
//        
//        alert("Please Update KYC")
//    }else{
//        alert("Ready")
//    }
    
//  if (str.length == 0) {
//    document.getElementById("txtHint").innerHTML = "";
//    return;
//  } else {
//    var xmlhttp = new XMLHttpRequest();
//    xmlhttp.onreadystatechange = function() {
//      if (this.readyState == 4 && this.status == 200) {
//          alert(this.responseText);
//        document.getElementById("txtHint").innerHTML = this.responseText;
//      }
//    };
//    alert("amount_error.jsp?q=" + str);
//    xmlhttp.open("GET", "amount_error.jsp?q=" + str, true);
//    xmlhttp.send();
//  }
//}
</script>
        <style>
/*            body {
  align-items: center;
  background-color: #000;
  display: flex;
  justify-content: center;
  height: 100vh;
}*/

.form {
  background-color: #15172b;
  border-radius: 20px;
  box-sizing: border-box;
  height: 520px;
  padding: 20px;
  width: 320px;
}

.title {
  color: #eee;
  font-family: sans-serif;
  font-size: 36px;
  font-weight: 600;
  margin-top: 30px;
}

.subtitle {
  color: #eee;
  font-family: sans-serif;
  font-size: 16px;
  font-weight: 600;
  margin-top: 10px;
}

.input-container {
  height: 50px;
  position: relative;
  width: 100%;
}

.ic1 {
  margin-top: 40px;
}

.ic2 {
  margin-top: 30px;
}

.input {
  background-color: #303245;
  border-radius: 12px;
  border: 0;
  box-sizing: border-box;
  color: #eee;
  font-size: 18px;
  height: 100%;
  outline: 0;
  padding: 4px 20px 0;
  width: 100%;
}

.cut {
  background-color: #15172b;
  border-radius: 10px;
  height: 20px;
  left: 20px;
  position: absolute;
  top: -20px;
  transform: translateY(0);
  transition: transform 200ms;
  width: 76px;
}

.cut-short {
  width: 50px;
}

.input:focus ~ .cut,
.input:not(:placeholder-shown) ~ .cut {
  transform: translateY(8px);
}

.placeholder {
  color: #65657b;
  font-family: sans-serif;
  left: 20px;
  line-height: 14px;
  pointer-events: none;
  position: absolute;
  transform-origin: 0 50%;
  transition: transform 200ms, color 200ms;
  top: 20px;
}

.input:focus ~ .placeholder,
.input:not(:placeholder-shown) ~ .placeholder {
  transform: translateY(-30px) translateX(10px) scale(0.75);
}

.input:not(:placeholder-shown) ~ .placeholder {
  color: #808097;
}

.input:focus ~ .placeholder {
  color: #dc2f55;
}

.submit {
  background-color: #08d;
  border-radius: 12px;
  border: 0;
  box-sizing: border-box;
  color: #eee;
  cursor: pointer;
  font-size: 18px;
  height: 50px;
  margin-top: 38px;

  text-align: center;
  width: 100%;
}

.submit:active {
  background-color: #06b;
}

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
                        <script>
                          document.addEventListener('contextmenu', function(e) {
                            e.preventDefault();
                          });
                        </script>
    </head>
    <body>
        <br>
    <center>
        <form action="fund_transfer_controller.jsp" method="POST">
        <div class="form">
      <div class="title">Fund Transfer</div>
      <!--<div class="subtitle">Let's create your account!</div>-->
      <div class="input-container ic1">
          <input id="firstname" class="input" type="text" name="acc_name" placeholder=" " />
        <div class="cut"></div>
        <label for="firstname" class="placeholder">Account name</label>
      </div>
      <div class="input-container ic2">
          <input id="lastname" class="input" type="number" name="acc_no" placeholder=" " />
        <div class="cut"></div>
        <label for="lastname" class="placeholder">Account Number</label>
      </div>
      <div class="input-container ic2">
          <input id="email" class="input" type="text" name="acc_ifsc" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="email" class="placeholder">IFSC</>
      </div>
       <div class="input-container ic2">
           <input id="email" class="input" type="number" name="amt"  placeholder=" " />
        <div class="cut cut-short"></div>
        
        <label for="email" class="placeholder">Amount</>
      </div>
      <!--<p>Suggestions: <span id="txtHint"></span><//p>-->
        
      <button type="text" class="submit">submit</button>
    </div></form>
    </center>
    </body>
</html>
