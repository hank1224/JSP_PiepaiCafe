<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>update</title>
<link rel="stylesheet" type="text/css" href="../assets/css/aboutus.css">
<link rel="stylesheet" type="text/css" href="../assets/css/footer.css">
<link rel="stylesheet" type="text/css" href="../assets/css/navbar.css">
<link rel="stylesheet" type="text/css" href="../assets/css/login.css"> 



<%
  
 try {
  Class.forName("com.mysql.jdbc.Driver");
  try { 
   String url="jdbc:mysql://localhost/?serverTimezone=UTC";
   String sql="";
   Connection con=DriverManager.getConnection(url,"root","1234");
   if(con.isClosed())
   out.println("連線建立失敗");
   else {  
    sql = "USE finalwork"; 
    con.createStatement().execute(sql);
    sql= "select * from products";
    con.createStatement().execute(sql);
    sql = "UPDATE `products` SET `cakeName`='"+request.getParameter("cakeName")+"', `stock`='"+request.getParameter("stock")+"', `cakePrice`='"+request.getParameter("cakePrice")+"', `class`='"+request.getParameter("class")+"' WHERE `cid`='"+request.getParameter("cid")+"'";
    con.createStatement().execute(sql);
    out.println("<SCRIPT>alert('修改完成！');");
    out.println("window.location='mproduct.jsp'");
    out.println("</SCRIPT>");
       con.close();
      
    }
   }
  catch (SQLException sExec) {
      out.println("SQL錯誤"+sExec.toString());
  }
  }
 catch (ClassNotFoundException err) {
    out.println("class錯誤"+err.toString());
}
%>
</body>