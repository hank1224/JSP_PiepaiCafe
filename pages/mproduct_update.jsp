<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("id") == null ){
response.sendRedirect("mproduct.jsp") ;}
%>


    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Member</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/member.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/footer.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/navbar.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css"> 
<body>
<header>
    <nav>
        <ul class="navbar" style="padding-left:20px">
            <li class="navbar-option"><a href="mmember.jsp">會員資料</a></li>
            <li class="navbar-option"><span><a href="mproduct.jsp">商品資訊</a></span></li>
            <li class="navbar-option"><a href="msrecord.jsp">銷售紀錄</a></li>
            <li class="navbar-option"><span><a href="mcontent.jsp">評價紀錄</a></span></li>
            <li class="navbar-option"><span><a href="logout.jsp">登出</a></span></li>
        </ul>
    </nav>
</header>
<div style="margin-top:10%">
    <table style="margin-left:auto; margin-right:auto;">
        <form method="post" action="mproduct_update1.jsp">
        <tr>
            <td>商品id<br><input type="hidden" name="cid" value="<%=request.getParameter("cid") %>"><%=request.getParameter("cid")%></td>
            <td>商品名稱<br><input type="text" required name="cakeName"></td>
            <td>商品庫存<br><input type="text" required name="stock"></td>
            <td>商品價錢<br><input type="text" required name="cakePrice"></td>
            <td>商品種類<br><input type="text" required name="class"></td>
            <td><br><button>更改</button></td>
        </tr>
        </form>
    </table>
</div>
<div>


    </table>
</div>
</body>