<%-- 
    Document   : Account
    Created on : 6 Apr, 2023, 5:26:02 PM
    Author     : Varad
--%>


<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="core.db.DBConn"%>
<%@include file="flash.jsp" %>
<%@include file="bank_navi.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            h2{
                margin-top: 30px;
            }
table {
  border-collapse: collapse;
  width: 100%;
  margin-top: 50px;
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
</style>
<title>Account Table</title>
</head>
<body>
    <h2>Account Holders</h2>
    <table>
  <tr>
     <th>ID</th>
    <th>ACC No </th>
    <th>Mobile No</th>
    <th>Email</th>
    <th>Address</th>
     </tr>
    <%
      try {
                Connection con = DBConn.getConnection();
                Statement stmt =con.createStatement();
                String q="select `account_no`,`user_name`,`mobile`,`email`,`address` from bank_acc";
                ResultSet rs=stmt.executeQuery(q);    
         
                          
   %>
   
<!--     <th>DELETE</th>
      <th>Update</th>-->

  <%
      while(rs.next()){
    %>      
      <tr>
         <td><%=rs.getString(2)%></td>
         <td><%=rs.getString(1)%></td>
         <td><%=rs.getString(3)%></td>
         <td><%=rs.getString(4)%></td>
         <td><%=rs.getString(5)%></td>
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
    </body>
</html>
