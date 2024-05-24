<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/allproduct.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/footer.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/navbar.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css"> 
</head>
<body>
     <!--導覽列-->
   <header>
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
                <ul>
                    <li><button class="btn01" onclick="document.getElementById('id01').style.display='block'" style="width:120px; background-color: white; color: black; height:60px; margin-left: 0px;font-size:15px;">登入</button></li>
                    <li><button class="btn01" onclick="document.getElementById('id02').style.display='block'" style="width:120px; background-color: white; color: black; height:60px; margin-left: 0px;font-size:15px;">註冊</button></li>
                </ul>
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
            <div class="right-navbar-option"><a href="mailto:tartine@gmail.com" ><button>Contact</button></a></div> 
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
                <input type="text" placeholder="Tina12345" name="id" required style="border-radius: 10px;">
                <br>
                <label for="psw" style="color: black;size: 10px;"><b><br>密碼</b></label>
                <input type="password" placeholder="password" name="pwd" required style="border-radius: 10px;">
                <br>
                <label for="psw" style="color: black;size: 10px;"><b><br>E-mail</b></label>
                <input type="text" placeholder="Tina12345@gmail.com" name="email" required style="border-radius: 10px;">
                <br>
                <label for="psw" style="color: black;size: 10px;"><b><br>電話</b></label>
                <input type="text" placeholder="0912345678" name="phone" required style="border-radius: 10px;">                  
                <br>
                <label for="psw" style="color: black;size: 10px;"><b><br>地址</b></label>
                <input type="text" placeholder="桃園市中北路200號" name="address" required style="border-radius: 10px;"> <br><br>  
                <button class="btn01" type="submit" style="align-items: center;">註冊</button><br>
              </div>

            </form>
          </div>
        </div>

      </div>
</header>
    
    <div class="all" style=" height: 1150px;margin-top:120px;">
        <div class="a-section1">
            <h2>伴手禮禮盒</h2>
        </div>
        <div class="a-section2">
            <div class="a-s2-left">
                <div class="a-s2-l-all">
                    <a href="./allproduct.jsp" style="text-decoration:none;font-size: 25px;">全部商品</a>
                </div>
                <div class="a-s2-l-birth">
                    <a href="./birth.jsp" style="text-decoration:none;font-size: 25px;">
                        <img src="../assets/img/cake.png">生日蛋糕</a>
                </div>
                <div class="a-s2-l-pie">
                    <a href="./pie.jsp" style="text-decoration:none;font-size: 25px;">
                        <img src="../assets/img/pie.png">派塔系列</a>
                </div>
                <div class="a-s2-l-other">
                    <a href="./other.jsp" style="text-decoration:none;font-size: 25px;">
                        <img src="../assets/img/giftbox.png">伴手禮禮盒</a>
                </div>
            </div>
            <div class="a-s2-right">
                <div class="a-s2-r-first">
                    <%
                        sql = "SELECT * FROM `products` WHERE `class`='other'";
                        ResultSet rs = con.createStatement().executeQuery(sql);
                        int i =0;
                        while(rs.next()){
                            out.println("<div class='a-s2-r-f-one'><form method='post' action='product.jsp'><div class='a-s2-r-f-o-img'>");
                            out.println("<input type='image' src='../assets/img/productimg/" + rs.getString("imgpath1") + "'style='width: 350px;height: 350px;border: 25px white 5px solid;opacity: 1;padding-bottom: 0px;'>");
                            out.println("<input type='hidden' name='id' value='" + rs.getString("cid") + "'></div></form><div class='a-s2-r-f-o-text'>");
                            out.println("<h3>" + rs.getString("cakeName") + "</h3>");
                            out.println("<h4>NT$" + rs.getString("cakePrice") + "</h4>");
                            out.println("<form action='addcart.jsp' method='post'><button type='submit' name='productid' value='" + rs.getString("cid") + "' style='width: 350px; height: 40px; margin-top: 15px; margin-left: 0px; background-color: bisque; color: rgb(131, 130, 106); border: none; font-size: 15px; cursor: pointer;}'>");
                            out.println("加入購物車</button></form></div></div>");
                            i++;
                            if(i%3 == 0){
                                out.println("</div><div class='a-s2-r-second'>");
                            }
                        }
                    %>
                    </div>         
                </div>
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
				ResultSet rs1=con.createStatement().executeQuery(sql); // ResultSet 用來儲存查詢結果 (*註解1)，將上一行 SQL 執行後並儲存結果
			    while(rs1.next()) // 一筆一筆讀取資料，回傳 false 表示讀取結束
				{
				    String c_S= rs1.getString(1); // 取得資料表第一個欄位的資料到 c_S 這個字串中
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
			    con.close(); // 關閉 MySQL 連線
            %>
            人
        </h3><br>
        <h4>
            Copyright © PiEPAi 版權所有
        </h4>
    </div>
</footer>
</html>