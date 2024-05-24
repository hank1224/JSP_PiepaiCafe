<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About us</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/aboutus.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/footer.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/navbar.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css">  
</head>
<body>
       <!--導覽列-->
       <header>
        <nav>
            <ul class="navbar" style="height: 120px;">
                <li class="navbar-option"><a href="../pages/allproduct.jsp">品牌理念</a></li>
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
    
    <div class="as-section1">
        <h1>About us</h1>
    </div>
    <div class="as-section2">
        <div class="as-s2-person">
            <div class="as-s2-p-img">
                <img src="../assets/img/people/13.jpg">
            </div>
            <div class="as-s2-p-text">
                <div class="as-s2-p-t-name">
                    <h3>蔡怡珊</h3>
                    <h4>資管二乙  前端設計人員</h4>
                </div>
                <div class="as-s2-p-t-text">
                    <h4>經過兩個學期的學習，我自己感覺我還是比較喜歡前端。在這兩個學期的學習中，真的學到很多也收穫很多。</h4>
                </div>
                <div class="as-s2-p-t-ig">
                    <a href="https://www.instagram.com/caii.o.caii/">
                        <img src="../assets/img/ig.png">
                    </a>
                </div>
            </div>
        </div>
        <div class="as-s2-person">
            <div class="as-s2-p-img">
                <div class="as-s2-p-img">
                    <img src="../assets/img/people/44.jpg">
                </div>
            </div>
            <div class="as-s2-p-text">
                <div class="as-s2-p-t-name">
                    <h3>陳念廷</h3>
                    <h4>資管二乙  前端設計人員</h4>
                </div>
                <div class="as-s2-p-t-text">
                    <h4>因為上學期學習到後端，所以更清楚這次前端要如何做，雖然在這之中還是會遇到許多困難，但還是學習到許多，很感謝隊友們的幫助，才能夠順利完成。</h4>
                </div>
                <div class="as-s2-p-t-ig">
                    <a href="https://www.instagram.com/nianting0917/">
                        <img src="../assets/img/ig.png">
                    </a>
                </div>
            </div>
        </div>
        <div class="as-s2-person">
            <div class="as-s2-p-img">
                <div class="as-s2-p-img">
                    <img src="../assets/img/people/1.jpg">
                </div>
            </div>
            <div class="as-s2-p-text">
                <div class="as-s2-p-t-name">
                    <h3>謝佩芸</h3>
                    <h4>資管二甲  後端設計人員</h4>
                </div>
                <div class="as-s2-p-t-text">
                    <h4>這一次的合作很感謝前端給的時間很充裕！後端不會趕時間～
                        在做各種後端資料的呈現還有連結不上時，有許多不是同一組的人都會一起來幫忙或指導，還有我的隊友也真的是很鬼，寫出一些奇怪的東西，居然也能跑，各方大神真的是必須被讚嘆。</h4>
                </div>
                <div class="as-s2-p-t-ig">
                    <a href="https://www.instagram.com/hsieh_0605/">
                        <img src="../assets/img/ig.png">
                    </a>
                </div>
            </div>
        </div>
        <div class="as-s2-person">
            <div class="as-s2-p-img">
                <div class="as-s2-p-img">
                    <img src="../assets/img/people/2.jpg">
                </div>
            </div>
            <div class="as-s2-p-text">
                <div class="as-s2-p-t-name">
                    <h3>陳澔恩</h3>
                    <h4>資管二甲  後端設計人員</h4>
                </div>
                <div class="as-s2-p-t-text">
                    <h4>經歷上下學期的前後端，後端部分我寫的比較順手，也謝謝前端這次給我們充足的時間作業，還有我的隊友也很認真在這專題上，貢獻很多，最後特別感謝那些凌晨被我騷擾的網程大師。</h4>
                </div>
                <div class="as-s2-p-t-ig">
                    <a href="https://www.instagram.com/how_en_hank/">
                        <img src="../assets/img/ig.png">
                    </a>
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
				ResultSet rs=con.createStatement().executeQuery(sql); // ResultSet 用來儲存查詢結果 (*註解1)，將上一行 SQL 執行後並儲存結果
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