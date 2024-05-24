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
        <form method="post" action="mproduct_add.jsp">
        <tr>
            <td>商品id<br><input type="text" name="cid"></td>
            <td>商品名稱<br><input type="text" name="cakeName"></td>
            <td>商品庫存<br><input type="text" name="stock"></td>
            <td>商品價錢<br><input type="text" name="cakePrice"></td>
            <td>商品種類<br><input type="text" name="class"></td>
            <td><br><button>新增</button></td>
        </tr>
        </form>
    </table>
</div>
<div>
    <table style="margin-left:auto; margin-right:auto;">
        <tr>
            <td>商品id</td>
            <td>商品名稱</td>
            <td>商品庫存</td>
            <td>商品價錢</td>
            <td>商品種類</td>
        </tr>

<%
           sql="SELECT * FROM `products`"; //算出共幾筆留言
           ResultSet rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
           rs.last();
           int total_content=rs.getRow();
           
           

           //每頁顯示5筆, 算出共幾頁
           int page_num=(int)Math.ceil((double)total_content/11.0); //無條件進位
           out.println("<h2><center>請選擇頁數</h2>");
           //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
           for(int i=1;i<=page_num;i++) //建立1,2,...頁超連結
		   {out.print("<center><a href='mproduct.jsp?page="+i+"'><button type='button'><center>第"+i+"頁</button></a>&nbsp;");}			
           //讀取page變數
           String page_string = request.getParameter("page");
           if (page_string == null) 
               page_string = "0";          
           int current_page=Integer.valueOf(page_string);
           if(current_page==0) //若未指定page, 令current_page為1
	          current_page=1;
			out.println("<h2><center>共"+page_num+"頁，目前在第"+current_page+"頁</h2>");

			if(current_page!=1)
			out.print("<center><a href='mproduct.jsp?page="+1+"'><button type='button'>第一頁</button></a>&nbsp;");	
			if(current_page>=2)
			out.print("<center><a href='mproduct.jsp?page="+(current_page-1)+"'><button type='button'>上一頁</button></a>&nbsp;");	
			if(current_page<page_num)
			out.print("<center><a href='mproduct.jsp?page="+(current_page+1)+"'><button type='button'>下一頁</button></a>&nbsp;");			
			if(current_page<page_num)
			out.print("<center><a href='mproduct.jsp?page="+(page_num)+"'><button type='button'>最後一頁</button></a>&nbsp;");			
			
			out.println("<hr>");
           out.println("<p>");
	       //計算開始記錄位置   
           int start_record=(current_page-1)*11;
           //遞減排序, 讓最新的資料排在最前面
           sql="SELECT * FROM `products` ORDER BY `cid` DESC LIMIT ";
           sql+=start_record+",11";
		    rs=con.createStatement().executeQuery(sql);
				while(rs.next())
                {
				out.println("<tr class='list_body'>");
				out.println("<td>"+rs.getString("cid")+"</td>");
				out.println("<td>"+rs.getString("cakeName")+"</td>");
				out.println("<td>"+rs.getString("stock")+"</td>");
				out.println("<td>"+rs.getString("cakePrice")+"</td>");
				out.println("<td>"+rs.getString("class")+"</td>");
                out.print("<td><a href='deletepro.jsp?cid="+rs.getString("cid")+"';><button>刪除</button></a>&nbsp;<a href='mproduct_update.jsp?cid="+rs.getString("cid")+"';><button>更改</button></a></td>");
				}
%>

    </table>
</div>
</body>