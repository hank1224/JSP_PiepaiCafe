<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>check</title>
<link rel="stylesheet" type="text/css" href="../assets/css/allproduct.css">
<link rel="stylesheet" type="text/css" href="../assets/css/footer.css">
<link rel="stylesheet" type="text/css" href="../assets/css/navbar.css">
<link rel="stylesheet" type="text/css" href="../assets/css/login.css">  

<%
if(request.getParameter("id") !=null && !request.getParameter("id").equals("") && request.getParameter("pwd") !=null && !request.getParameter("pwd").equals(""))
{
    sql = "SELECT * FROM `member` WHERE `id` =? AND `pwd`=?";
    PreparedStatement pstmt = null;
    pstmt=con.prepareStatement(sql);
    pstmt.setString(1,request.getParameter("id"));
    pstmt.setString(2,request.getParameter("pwd"));

    ResultSet paperrs = pstmt.executeQuery();

    if(paperrs.next()){
        session.setAttribute("id", request.getParameter("id"));
        con.close();
        response.sendRedirect("member.jsp");
    }
    else
    {
        con.close();
        out.println("<SCRIPT>alert('帳號或密碼錯誤');");
        out.println("window.location='login.jsp'");
        out.println("</SCRIPT>");
        //out.print("<h2>帳號或密碼錯誤！ <meta http-equiv='refresh' content='3;url=index.jsp'> ") ;
    }
}
else{
    response.sendRedirect("login.jsp");
}
%>


