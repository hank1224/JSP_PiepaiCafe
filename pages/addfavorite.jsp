<%@ page import = "java.sql.*, java.util.*, java.util.UUID.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="config.jsp"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<title>addcart</title>
</head>
<body>

<%

    if(session.getAttribute("id") == null){
        out.println("<SCRIPT>alert('請先登入');");
        out.println("window.location='login.jsp'");
        out.println("</SCRIPT>");
    }else{  
            sql="SELECT * FROM `favorite` WHERE `id`='" + session.getAttribute("id") + "' AND `cid`='" + request.getParameter("productid") + "';";
            ResultSet rs =con.createStatement().executeQuery(sql);
            String checkfavorite = null;
            while(rs.next()){

                try{
                    checkfavorite = rs.getString("cid");
                }
                catch(Exception nulladd){
                    //判定`favorite`是否存在該蛋糕
                    checkfavorite = null;
                }
                
            }

            if( checkfavorite != null){
                out.println("<SCRIPT>alert('先前已加入過追蹤清單了！');");
                out.println("window.location='allproduct.jsp'");
                out.println("</SCRIPT>");
                con.close();
            }
            else
            {
                UUID uuid = UUID.randomUUID(); //建立UUID唯一值當主鍵
                String uuidstring = uuid.toString();

                /*sql="SELECT * FROM `favorite`";   //算出共幾筆資料
                rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
                rs.last();
                int total=rs.getRow();
                total++;*/

                sql = "INSERT INTO `favorite` VALUES ('" + uuidstring + "','" + session.getAttribute("id") + "','" + request.getParameter("productid") + "');";
                con.createStatement().executeUpdate(sql);
            
                out.println("<SCRIPT>alert('加入追蹤清單成功！請至會員介面查看');");
                out.println("window.location='allproduct.jsp'");
                out.println("</SCRIPT>");
                con.close();
            }

            

            
       }

%>
</body>
</html>
