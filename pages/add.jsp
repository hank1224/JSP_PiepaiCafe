<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>註冊會員</title>
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
            String id=request.getParameter("id");
		      String pwd=request.getParameter("pwd");
            String email=request.getParameter("email");
		      String phone=request.getParameter("phone");
            String address=request.getParameter("address");

           sql="INSERT member (`id`, `pwd`, `email`, `phone`,`address`) ";
           sql+="VALUES ( ";
		     sql+="'"+id+"', ";
           sql+="'"+pwd+"', ";
           sql+="'"+email+"', ";
           sql+="'"+phone+"', "; 
            sql+="'"+address+"') ";
           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           response.sendRedirect("membersite.jsp");
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