<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("id") == null ){
    out.println("<SCRIPT>alert('請先登入');");
    out.println("window.location='login.jsp'");
    out.println("</SCRIPT>");
	}
if(session.getAttribute("id") != null ){
    sql = "SELECT * FROM `member` WHERE `id`='" +session.getAttribute("id")+"';";
	ResultSet rs =con.createStatement().executeQuery(sql);
	String name="", email="", phone="",adr="";
	while(rs.next()){
        name = new String(rs.getString("id").getBytes("ISO-8859-1"),"UTF-8");
        email=rs.getString("email");
        phone=rs.getString("phone");
        adr = new String(rs.getString("address").getBytes("ISO-8859-1"),"UTF-8");
	}

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Member</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/member.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/footer.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/navbar.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css"> 
</head>
<body>
     <!--導覽列-->  

    <nav>

        <ul class="navbar">
            <li class="navbar-option"><a href="../pages/brandconcept.jsp">品牌理念</a></li>
            <li class="navbar-option">
                <span><a href="./allproduct.jsp">全部商品</a></span>
                <ul>
                    <li><a href="./birth.jsp">生日蛋糕</a></li>
                    <li><a href="./pie.jsp">派塔系列</a></li>
                    <li><a href="./other.jsp">伴手禮禮盒</a></li>
                </ul>
            </li>
            <!--logo-->
            <a href="index.jsp"><li class="protrait"></li></a>
            <li class="navbar-option"><a href="./auoutus.jsp" class="aboutus">關於我們</a></li>
            <li class="navbar-option">
                <a href="member.jsp"><span>會員資訊</span></a>
            </li>
            <li class="navbar-option">
<%
	if(session.getAttribute("id").equals("1"))
	{
		out.print("<span><a href='mmember.jsp'>管理者</a></span>");			
	}
%>
            </li>

           <!--搜尋-->
            <div class="right-navbar-option">
                <form action="product_search.jsp">
                        <span class="input-container"><input type="text" name="search" placeholder="searching..."></span>
                        <span><img src="../assets/img/icon/search.png"></span>  
                </form>    
            </div>
            <div class="right-navbar-option"><a href="../pages/index.jsp"><img src="../assets/img/icon/home2.png" alt=""></a></div>
            <div class="right-navbar-option"><a href="../pages/checkout.jsp"><img src="../assets/img/icon/shoppingcart.png"></a></div>
            <div class="right-navbar-option"><form action="logout.jsp"><a href="../pages/index.jsp" ><button>logout</button></a></form></div> 
        </ul>
    </nav>
    <div class="title">
        <div class="logins" >

          <div id="id01" class="modal">
            
            <form class="modal-content animate" action="check.jsp" method="post">
              <div class="imgcontainer">
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
              </div>
          
              <div class="container"><br>
                <h1 style="text-align: center;color: black;">登入</h1><br>
                <label for="uname" style="color: black;size: 10px;"><b><br>使用者名稱</b></label>
                <input type="text" placeholder="請輸入名稱" name="id" required style="border-radius: 10px;">
                <br>
                <label for="psw" style="color: black;size: 10px;"><b><br>密碼</b></label>
                <input type="password" placeholder="請輸入密碼" name="pwd" required style="border-radius: 10px;"><br><br>
                  
                <button class="btn01" type="submit" style="align-items: center;">登入</button><br>
                
              </div>

            </form>
          </div>
        </div>
        <div class="register">
          <button class="btn01" onclick="document.getElementById('id02').style.display='block'" style="width:80px;margin-left:500px;margin-top: 30px;position: absolute;">註冊</button>
        
          <div id="id02" class="modal">
            
            <form class="modal-content1 animate" action="add.jsp" method="post" >
              <div class="imgcontainer">
                <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
              </div>
          
              <div class="container"><br>
                <h1 style="text-align: center;color: black;">註冊</h1><br>
                <label for="uname" style="color: black;size: 10px;"><b><br>使用者名稱</b></label>
                <input type="text" name="id" required style="border-radius: 10px;">
                <br>
                <label for="psw" style="color: black;size: 10px;"><b><br>密碼</b></label>
                <input type="password" name="pwd" required style="border-radius: 10px;">
                <br>
                <label for="psw" style="color: black;size: 10px;"><b><br>E-mail</b></label>
                <input type="text" name="email" required style="border-radius: 10px;">
                <br>
                <label for="psw" style="color: black;size: 10px;"><b><br>電話</b></label>
                <input type="text" name="phone" required style="border-radius: 10px;">                  
                <br><br>  
                <button class="btn01" type="submit" style="align-items: center;">註冊</button><br>
              </div>

            </form>
          </div>
        </div>

      </div>

    
    <div class="m-section1">
    
    </div>
    <div class="m-section2">
        <span id="tab-1" style="display: none;">個人資料</span>
        <span id="tab-2" style="display: none;">訂單紀錄</span>
        <span id="tab-3" style="display: none;">評分紀錄</span>
        <span id="tab-4" style="display: none;">追蹤清單</span>
        <!-- 頁籤按鈕 -->
        <div id="tab">
            <ul style="margin: 0;padding: 10px 20px 0 20px;">
                <li style="list-style-type: none;"><a href="#tab-1">個人資料</a></li>
                <li style="list-style-type: none;"><a href="#tab-2">訂單紀錄</a></li>
                <li style="list-style-type: none;"><a href="#tab-3">評分紀錄</a></li>
                <li style="list-style-type: none;"><a href="#tab-4">追蹤清單</a></li>
            </ul>
            <!-- 頁籤的內容區塊 -->
            <div class="tab-content-1">
                <div class="m-s2-f-form">
                    <div class="m-s2-f-f-person2">
                        <h3>個人資料</h3>
                        <div class="m-s2-f-f-p-text">
                            <h4>帳號：<%=name%></h4>
                            <h4>E-mail：<%=email%></h4>
                            <h4>電話：<%=phone%></h4>
                            <h4>地址：<%=adr%></h4>
                            <div>
                           <!-- <form action="logout.jsp">
                                <a href="#"><br>
                                    <button type="submit" style="width:120px; height:35px; background:#333; color:white; cursor:pointer;">logout</button>
                                </a>
                            </form> -->
                            </div>
                        </div>                                               
                    </div>
                    <div class="m-s2-f-f-person">
                        <h3>修改資料</h3>
                        <form action="update.jsp">
                            <div class="m-s2-f-f-p-text">
                                <h4>E-mail <input type="text" name="email"></h4><br>
                                <h4>電話&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" required name="phone"></h4><br>
                                <h4>地址&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="address"></h4><br>
                                <h4>密碼&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" required name="pwd"></h4><br>
                                <div class="m-s2-f-f-p-text3">
                                    <a href="#">
                                    <button type="submit">Update</button>
                                    </a> 
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>

            <div class="tab-content-2"  style="overflow: auto;">
                <form>
                    <table>
                        <tr>
                            <th><b>訂單編號</b></th>
                            <th><b>送貨日期</b></th>   
                            <th><b>商品及數量</b></th>
                            <th><b>配送方式</b></th>   
                        </tr>
                        
                            <%
                                sql="SELECT * FROM `finish` WHERE `id`='" + session.getAttribute("id") + "' group by orderUID ORDER BY `date` DESC";
		                        rs=con.createStatement().executeQuery(sql);
                                String deUID = "";
				                while(rs.next()){
                                    sql = "select * from `finish` where `orderUID`='"+rs.getString("orderUID")+"'";
                                    ResultSet ss=con.createStatement().executeQuery(sql);                    
				                    out.println("<tr class='list_body'>");
                                    deUID = rs.getString("orderUID");
                                    deUID = deUID.substring(deUID.length()-6);
				                    out.println("<td style='border-bottom: 1px gray solid;'>"+deUID+"</td>");
                                    out.println("<td style='border-bottom: 1px gray solid;'>"+rs.getString("date")+"</td><td style='width:300px;border-bottom: 1px gray solid'>");
                                    //out.println("<td>"+rs.getString("date")+"</td><td style='width:300px;'><hr style='width:900px; z-index: 5;  position: absolute; left:500px'>");
                                    //上面這行是寫死的辦法，但是滾動不會跟著動
                                    while(ss.next()){
                                        sql = "select * from products where cid='"+ss.getString("cid")+"'";
                                        ResultSet bs=con.createStatement().executeQuery(sql);
                                        bs.next();  
                                        out.println(bs.getString("cakeName")+"*"+ss.getString("quantity")+"<br>");
                                    }   
				                    out.println("</td><td style='border-bottom: 1px gray solid;'>"+rs.getString("payf")+"</td></tr>");
				                }
                            %>
                        
                    </table>
                </form>
            </div>
            <div class="tab-content-3"  style="overflow: auto;">
                <div class="s3-text">
                 
                    
                <%
                    
                    sql = " select `customer`,`content`,`putdate`,`rate` from `message` where `customer`='"+session.getAttribute("id")+"'"; 
                    ResultSet ms = con.createStatement().executeQuery(sql);
                    while(ms.next())
                    {
                        out.println("<div class='s3-t-people'>");
                        out.println("<div class='s3-t-p-box'><img src='../assets/img/people .png'>");
                        String new_name = new String(ms.getString("customer").getBytes("ISO-8859-1"),"UTF-8");
                        String new_content = new String(ms.getString("content").getBytes("ISO-8859-1"),"UTF-8");
                        out.println("<h5>"+ new_name +"</h5>");
                        double starr = Double.parseDouble(ms.getString(4));
                        double star = Math.floor(starr);
                        out.println("<div class='s3-t-p-star'>");
                        for(int i=0; i<star; i++)
                        {
                            out.print("★");
                        }
                        if(star-starr<0)
                        {
                            out.println("☆");                            
                        }
                        out.println("</div><div class='s3-t-p-time'  style='width: 100px;'>"+ms.getString(3)+"</div></div>");
                        out.println("<div class='s3-t-p-comment'>"+ ms.getString("content") +"</div><br><hr><br></div>");
                    }
                %>                                              

                                      
                </div> 
                  
           </div>

            <div class="tab-content-4"  style="overflow: auto;">
                <table>
                     <tr>
                        <th class="like"><b>♡</b></th>
                        <th><b>圖片</b></th>
                        <th><b>商品</b></th>
                        <th><b>單價</b></th>
                    </tr>
                    

                    <%
                        sql = "select products.cid, products.imgpath1, products.cakeName, products.cakePrice from products, favorite WHERE favorite.cid = products.cid AND favorite.id='"+session.getAttribute("id")+"'";
	                        ResultSet tmp = con.createStatement().executeQuery(sql);
                                while(tmp.next()){
                                out.println("<tr><td><form action='deletepro_1.jsp'><input type='hidden' name='cid' value='"+tmp.getString(1)+"'><button type='submit' id='like-del2'>刪除</button></form></td>");
                                out.println("<td><img src='../assets/img/productimg/" + tmp.getString(2) + "' style='width: 100px;height: 100px;border:  gray 1px solid;'></td>");
                                out.println("<td>" + tmp.getString(3) + "</td>");
                                out.println("<td>NT$ " + tmp.getString(4) + "</td></tr>");
                                }
                    %>
                                                                 
               
                    
                </table>
            </div>
        </div>
    </div>
</body>  
<footer>
    <div class="f-down"><br>
        <h3>
            瀏覽人數：
            <%
				sql="select * from counter"; // SQL 語法：取得 counter 資料表中的所有資料
				rs=con.createStatement().executeQuery(sql); // ResultSet 用來儲存查詢結果 (*註解1)，將上一行 SQL 執行後並儲存結果
			    while(rs.next()) // 一筆一筆讀取資料，回傳 false 表示讀取結束
				{
				    String c_S= rs.getString(1); // 取得資料表第一個欄位的資料到 c_S 這個字串中
				    int c=Integer.parseInt(c_S); // 將 c_S 這個字串轉成 int 整數並存至 c 變數
				    if (session.isNew()) { // 如果使用者是使用新的 Session 連入
					    c++; // c 變數 +1
					    out.print(c); // 印出 c 變數
						}
				    else  // 如果使用者不是使用新的 Session 連入
					{
				        out.print(c); // 直接印出 c 變數
					} 
			        sql="update counter set counter=\'" + c + "\'"; // SQL 語法：將 c 的數字更新到 counter 資料表中的 count 欄位
				}
			    con.createStatement().execute(sql); // 執行剛剛的 SQL 語法
			    
            %>
            人
        </h3><br>
        <h4>
            Copyright © PiEPAi 版權所有
        </h4>
    </div>
</footer>
<%
}
else{
    
    con.close();
}
%>
</html>