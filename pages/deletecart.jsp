<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../assets/css/member.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/footer.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/navbar.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css"> 
        <title>DELETE</title>
    </head>
    <body>
       
<%  
    sql = "DELETE FROM `cart` WHERE `cid` = '" + request.getParameter("cid")+ "' ";
    con.createStatement().executeUpdate(sql);

    con.close();
    response.sendRedirect("checkout.jsp");
%>
    </body>
</html>