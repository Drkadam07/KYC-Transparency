<%-- 
    Document   : create_kyc
    Created on : Jan 23, 2023, 12:59:44 PM
    Author     : Gulshan
--%>
<%@include file="flash.jsp" %>
<%@page import="controller.SendEmail"%>
<%@page import="controller.OTPGenerator" %>
<%@include file="bank_navi.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="core.db.DBConn"%>
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
         <style>
            h2{
                margin-top: 30px;
            }
table {
  border-collapse: collapse;
  width: 100%;
  margin-top: 30px;
  margin-bottom: 20px;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #04AA6D;
  color: white;
}
input {
    border: none;
    background: transparent;
    border-style:none;
}
</style>
    </head>
    <body>
        <br>
    <center>
        <form action="create_account" method="POST" >
            <table>
  <tr>
     <th>ID</th>
    <th>Mobile Number </th>
    <th>Email </th>
    <th>Address</th>
    <th>Pan No</th>
     </tr>
     <tr>
          <%
              OTPGenerator op = new OTPGenerator();
         String otp = op.generateOTP();
          String email = request.getParameter("email");
           SendEmail.mailSnd(email,"Your Otp is: "+otp);
        try {
                Connection con = DBConn.getConnection();
                Statement stmt =con.createStatement();
                String q="select `pan_number` from kyc_details where (select id from users where users.id=kyc_details.uid)";
                ResultSet rs=stmt.executeQuery(q); 
            
       
           if(rs.last())
           {
         
                          
   %>
   <td> <input id="firstname"  type="text" name="pname" placeholder=" " value="<%=request.getParameter("pname")%>" /> </td>
         <td><input id="firstname" type="text" name="mobno" placeholder=" " value="<%=request.getParameter("mobno")%>" /></td>
         <td><input id="firstname" type="text" name="email" placeholder=" " value="<%=request.getParameter("email")%>" /></td>
         <td> <input id="firstname" type="text" name="addre" placeholder=" " value="<%=request.getParameter("addre")%>" /></td>
         <td><%=rs.getString(1)%></td>
      </tr> 
          
              
              
            
      <%
    }      
            rs.close();
            stmt.close();
            con.close();
          } catch (Exception e) {
           }
             
    
  
     %>

            </table>
      <input type="hidden" name="otpver" value="<%=otp%>"/>
        <div class="form">
      <div class="title">Verify Kyc</div>
      <!--<div class="subtitle">Let's create your account!</div>-->
      <div class="input-container ic1">
          <input id="firstname" class="input" type="text" name="pannumber" placeholder=" " />
        <div class="cut"></div>
        <label for="firstname" class="placeholder">Unique ID</label>
      </div>
        <div class="input-container ic1">
        <input id="firstname" class="input" type="text" name="otp" minlength="6" maxlength="6" placeholder=" " />
        <div class="cut"></div>
        <label for="firstname" class="placeholder">OTP</label>
      </div>
      <hr>
      <label style="color: white">OR</label>
      <div class="input-container ic2">
          <input id="email" class="input" type="file" name="adharfile"  placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="email" class="placeholder">Adhar File</>
      </div>
       <div class="input-container ic2">
           <input id="email" class="input" type="file" name="panfile" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="email" class="placeholder">Pan Files</>
      </div>
       
      <button type="text" class="submit">submit</button>
    </div></form>
    </center>
    </body>
</html>
