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

    if(session.getAttribute("id") == null ){
        out.println("<SCRIPT>alert('請先登入');");
        out.println("window.location='login.jsp'");
        out.println("</SCRIPT>");
	}else{  
            sql="SELECT * FROM `cart` WHERE `id`='" + session.getAttribute("id") + "' AND `cid`='" + request.getParameter("productid") + "';";
            ResultSet rs =con.createStatement().executeQuery(sql);
            String checkcart = null;
            while(rs.next()){

                try{
                    checkcart = rs.getString("cid");
                }
                catch(Exception nulladd){
                    //判定`cart`是否存在該蛋糕
                    checkcart = null;
                }
                
            }

            if( checkcart != null){ //如果原先購物車已有數字
                sql = "SELECT `quantity` FROM `cart` WHERE `id`='" + session.getAttribute("id") + "' AND `cid`='" + checkcart + "';";
                rs =con.createStatement().executeQuery(sql);
                int orgaincartvalue = 0; //原始購物車數值
                while(rs.next()){
                    orgaincartvalue = rs.getInt("quantity");
                }

                int addcartvalue = Integer.valueOf(request.getParameter("addcartvalue")).intValue(); //新增的值轉int

                sql = "SET SQL_SAFE_UPDATES = 0";
                con.createStatement().executeUpdate(sql);
                sql = "update `cart` set `quantity`='" + (orgaincartvalue + addcartvalue)+ "' where `cart`.`cid`=" + checkcart ;
                con.createStatement().executeUpdate(sql);

                out.println("<SCRIPT>alert('加入數量成功！');");
                out.println("window.location='allproduct.jsp'");
                out.println("</SCRIPT>");
                con.close();
            }
            else    //如果購物車無數據
            {   
                UUID uuid = UUID.randomUUID(); //建立UUID唯一值當主鍵
                String uuidstring = uuid.toString();

                /*sql="SELECT * FROM `cart`";   //算出共幾筆資料
                rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
                rs.last();
                int total=rs.getRow();
                total++;*/

                int addcartvalue = Integer.valueOf(request.getParameter("addcartvalue")).intValue(); //新增的值轉int
                sql = "INSERT INTO `cart` VALUES ('" + uuidstring + "','" + session.getAttribute("id") + "','" + request.getParameter("productid") + "'," + addcartvalue + ")" ;
                con.createStatement().executeUpdate(sql);
            
                out.println("<SCRIPT>alert('新增購物車成功！');");
                out.println("window.location='allproduct.jsp'");
                out.println("</SCRIPT>");
                con.close();
            }

            
            
            
       }

%>
</body>
</html>
