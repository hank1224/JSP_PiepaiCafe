<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*, java.util.UUID.*"%>
<%@include file="config.jsp"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<title>finish</title>
</head>
<body>



<%

    if(session.getAttribute("id") == null){
        out.println("<SCRIPT>alert('請先登入');");
        out.println("window.location='login.jsp'");
        out.println("</SCRIPT>");
    
    }else{  
            String id = String.valueOf(session.getAttribute("id"));
            
           String payf=request.getParameter("payf");
		   String candle=request.getParameter("candle");
           String note=request.getParameter("note");
		   String recipient=request.getParameter("recipient");
           String tel=request.getParameter("tel");
           String mail=request.getParameter("mail");
           String date=request.getParameter("date");
           String time=request.getParameter("time");
           String address=request.getParameter("address");

           
            UUID uuid1 = UUID.randomUUID(); //建立UUID唯一值當主鍵
            String orderuuid = uuid1.toString();//order UUID 這訂單的唯一值(有很多cid) 

            java.sql.Date submitdate=new java.sql.Date(System.currentTimeMillis()); //取得當前時間

            sql = "SELECT cid, quantity FROM cart WHERE id = '"+id+"'";
            ResultSet trynull = con.createStatement().executeQuery(sql);
            String trynullset = "";
            while(trynull.next()){
                trynullset = trynull.getString("cid");
            }
            
            if(trynullset == ""){
                out.println("<SCRIPT>alert('購物車不得為空！');");
                out.println("window.location='checkout.jsp'");
                out.println("</SCRIPT>");
                con.close();
            }else{
                sql = "SELECT cid, quantity FROM cart WHERE id = '"+id+"'";
			    ResultSet tmp1 = con.createStatement().executeQuery(sql);
			    while(tmp1.next()){
                
                UUID uuid2 = UUID.randomUUID(); //建立UUID唯一值當主鍵
                String finishuuid = uuid2.toString();//finish UUID 表單的唯一值(一筆一個cid)

                sql="INSERT finish (`finishUID`, `orderUID`, `payf`, `candle`, `note`, `recipient`,`tel`, `mail`, `date`, `time`, `address`, `cid`, `quantity`, `id`, `submitdate`)";
                sql+="VALUES ( ";
                sql+="'"+finishuuid+"', ";
                sql+="'"+orderuuid+"', ";
		        sql+="'"+payf+"', ";
                sql+="'"+candle+"', ";
                sql+="'"+note+"', ";
                sql+="'"+recipient+"', ";
                sql+="'"+tel+"',";
                sql+="'"+mail+"',";
                sql+="'"+date+"',";
                sql+="'"+time+"',";
                sql+="'"+address+"',";
                sql+="'"+tmp1.getString("cid")+"',";
                sql+=""+tmp1.getString("quantity")+",";
                sql+="'"+session.getAttribute("id")+"',";
                sql+="'"+submitdate+"')";
                con.createStatement().executeUpdate(sql);

                sql = "SELECT `stock` FROM `products` WHERE `cid`=" + tmp1.getString("cid"); //找出原先庫存並轉int
                ResultSet tmp2 = con.createStatement().executeQuery(sql);
                while(tmp2.next()){
                    int originalstock = tmp2.getInt("stock");
                    int quantity = Integer.valueOf(tmp1.getString("quantity")).intValue();
                    sql = "Update `products` SET `stock`="+(tmp2.getInt("stock")-quantity)+" WHERE `cid`="+tmp1.getString("cid"); //寫入新庫存
                    con.createStatement().executeUpdate(sql);
                }
            }

            sql = "SET SQL_SAFE_UPDATES = 0;";  //清空購物車
            con.createStatement().execute(sql);
            sql = "DELETE FROM `cart` WHERE `id`='" + session.getAttribute("id")+"'";
            con.createStatement().executeUpdate(sql);


            out.println("<SCRIPT>alert('完成訂單！已清空購物車');");
            out.println("window.location='member.jsp#tab-2'");
            out.println("</SCRIPT>");
            con.close();
            }
                       
       }

%>


</body>
</html>
