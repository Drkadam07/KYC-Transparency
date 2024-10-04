<%-- 
    Document   : create_kyc
    Created on : Jan 23, 2023, 12:59:44 PM
    Author     : Gulshan
--%>
<%@include file="flash.jsp" %>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
/*            body {
  align-items: center;
  background-color: #000;
  display: flex;
  justify-content: center;
  height: 100vh;
}*/
          body {
                  font-family: "Open Sans", sans-serif;
                  background-color: #040404;
                  color: #fff;
                  position: relative;
                  background: transparent;
                  place-items: center;
                  text-align: center;
                  background-size: cover;
                }

                body::before {
                  content: "";
                  position: fixed;
                  background: #040404 url("images/contact.jpg") top right no-repeat;
                  background-size: cover;
                  left: 0;
                  right: 0;
                  top: 0;
                  height: 100vh;
                  z-index: -1;
                  /* background-position: center; */
                  background-repeat: no-repeat;
                }


.form {
  /* background-color: #15172b; */
  background: #040404 url("images/con1.jpg");
  border-radius: 20px;
  box-sizing: border-box;
  height: 480px;
  padding: 20px;
  width: 420px;
  
  box-shadow: -3px -3px 9px #aaa9a9a2,
              3px 3px 7px rgba(147, 149, 151, 0.671);

}

.title {
  color: #ffffff;
  font-family: sans-serif;
  font-size: 36px;
  font-weight: 600;
  margin-top: 30px;
}

.subtitle {
  color: #ffffff;
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
  /* background-color: #15172b; */

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
  transform: translateY(-40px) translateX(10px) scale(1);
}

.input:not(:placeholder-shown) ~ .placeholder {
  color: #808097;
}

.input:focus ~ .placeholder {
  color: #f6f6f6;
  /* placeholder */
}

.submit {
  background-color: rgb(0, 221, 184);
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

.submit:hover {
  /* background-color: #06b; */
  background-color: rgb(5, 206, 220);
  color:#0a0b0b;
}

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
      
        <br>
        
    <center>
      
        <form action="contact" method="POST">
        <div class="form">
      <div class="title">CONTACT US</div>
      <!--<div class="subtitle">Let's create your account!</div>-->
      <div class="input-container ic1">
          <input id="firstname" class="input" type="text" name="fname" placeholder=" " />
        <div class="cut"></div>
        <label for="firstname" class="placeholder">First name</label>
      </div>
      
      <div class="input-container ic2">
          <input id="email" class="input" type="text" name="email" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="email" class="placeholder">Email</>
      </div>
      <div class="input-container ic2">
        <textarea placeholder="Message" required="" id="email" class="input" type="text" name="mobile"></textarea>
        <div class="cut cut-short"></div>
        <label for="email" class="placeholder">Message</> 
      </div>
      
      <button type="text" class="submit">SEND</button>
    </div></form>
    </center>

      <!-- disable right-click -->
      <script>
        document.addEventListener('contextmenu', function(e) {
          e.preventDefault();
        });
      </script>
    </body>
</html>
