<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>add</title>
</head>
<body>
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
			
			
		     sql="USE finalwork";
           con.createStatement().execute(sql);
           request.setCharacterEncoding("UTF-8");
           String CID=request.getParameter("cid");
		     String CN=request.getParameter("cakeName");
           String STO=request.getParameter("stock");
		     String CP=request.getParameter("cakePrice");
           String CL=request.getParameter("class");

           sql="INSERT products (`cid`, `cakeName`, `stock`, `cakePrice`,`class`) ";
           sql+="VALUES ( ";
		     sql+="'"+CID+"', ";
           sql+="'"+CN+"', ";
           sql+="'"+STO+"', ";
           sql+="'"+CP+"', "; 
           sql+="'"+CL+"') ";
           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           response.sendRedirect("mproduct.jsp");
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
</html>