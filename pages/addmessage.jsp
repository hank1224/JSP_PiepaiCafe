<%@ page import= "java.sql.*, java.util.*, java.util.UUID.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="config.jsp"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<title>addmessage</title>
</head>
<body onload="startPost()">

<%!
            String newline(String str){     //自動換行
            int index=0;
            while((index=str.indexOf("\n"))!=-1){
               str=str.substring(0,index)+"<br>"+str.substring(index+1);
            }
            return str;
            }
%>


<%

    if(session.getAttribute("id") == null){
        out.println("<SCRIPT>alert('請先登入');");
        out.println("window.location='login.jsp'");
        out.println("</SCRIPT>");
    }else{  
            
            UUID uuid = UUID.randomUUID(); //建立UUID唯一值當主鍵
            String uuidstring = uuid.toString();
            
            /*sql="SELECT * FROM `message`";   //算出共幾筆留言
            ResultSet rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
            rs.last();
            int total_content=rs.getRow();
            total_content++;*/

            String productid=request.getParameter("productid");
            String ratedscore=request.getParameter("star");
            //String new_content=request.getParameter("content");
            String new_content=new String(request.getParameter("content").getBytes("ISO-8859-1"),"UTF-8");
            new_content=newline(new_content);

            if(request.getParameter("content") == ""){
                out.println("<SCRIPT>alert('留言內容不得為空！');");
                out.println("window.location='allproduct.jsp'");
                out.println("</SCRIPT>");
                con.close();
            }
            else if(request.getParameter("star") == ""){
                out.println("<SCRIPT>alert('評分不得為空！');");
                out.println("window.location='allproduct.jsp'");
                out.println("</SCRIPT>");
                con.close();
            }
            else
            {
                java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
                sql = "INSERT `message` VALUES ('" + uuidstring + "','" + productid + "','" + session.getAttribute("id") + "','" + new_content + "','" + new_date + "','" + ratedscore + "')";
                con.createStatement().execute(sql);
            

                out.println("<SCRIPT>alert('留言成功！');");
                out.println("window.location='allproduct.jsp'");
                out.println("</SCRIPT>");
                con.close();
            }

            

            
       }

%>
    <form id="form1" method="post">
    <input type="hidden" name="id" value="<%  out.print(request.getParameter("productid"));  %>" action="product.jsp">
    </form>

    <!--<script type="text/javascript">
        function startPost(){
            setTimeout("submit()",1);
        }
        function submit(){
            document.getElementById("form1").submit();
        }
    </script> -->

</body>
</html>
