<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/?serverTimezone=UTC";
Connection con=DriverManager.getConnection(url,"root","1234");

    String sql="use `finalwork`";
    con.createStatement().execute(sql);
    //request.setCharacterEncoding("UTF-8");


%>