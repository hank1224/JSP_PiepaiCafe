<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>品牌理念</title>
    <link rel="stylesheet" href="../assets/css/brandconcept.css">
    <link rel="stylesheet" href="../assets/css/navbar.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/footer.css">
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

<!--主要內容-->
    <main>
        <!--section1-->
        <section class="section1">
            <div class="s1-lcontainer">
                <p>
                    2015 28歲的那個夏天 <br>
                    Alicia結束了她的夜市人生<br>
                    賣著衣服 從擺攤  到店面 歷經了5年時光<br>
                    在店面租約剩最後半年的時候<br>
                    好好思考 她的下一步<br>
                    毅然決然 結束吧！<br>
                    給自己一年的時間<br>
                    從谷底 再慢慢 漫漫 醞釀<br>
                </p>
            </div>
            <div class="s1-rcontainer">
                <img src="../assets/img/doorface.jpeg" alt="">   
               
            </div>
        </section>

        <!--section2-->
        <section class="section2">
            <div class="s2-lcontainer">
                <div class="s2-lcontainer-img">
                    <img src="../assets/img/index1.png" alt="">

                </div>
                
                <div class="s2-lcontainer-txt">
                    <p>
                       『為何不好好賣衣服就好』？<br>
                        在最低潮的時候 下著雨看著天空<br>
                       『何不把彩虹做出來』？<br>
                        試了一次兩次<br>
                        在2016/4做出第一顆初版的 ＃彩虹<img src="../assets/img/icon/rainbow.png" alt=""><br>
    
                    </p>

                </div>
                
            </div>
            <div class="s2-rcontainer">
                <div class="s2-rcontainer-txt">
                    <p>
                        連麵粉都分不清 毫無底子的她<br>
                        開始了每天下午包衣服出貨<br>
                        晚上到凌晨練習她的甜點路<br>
                        做出自己喜歡的味道<br>
                        過程中<br>
                        迷茫了半年 毫無方向<br>
                        低潮中曾想放棄 <br>
                    </p>
                </div>
                <div class="s2-rcontainer-img">
                    <img src="../assets/img/cake3.png" alt="">
                </div>
            </div>
        </section>

        <!--section3-->
        <section class="section3">     
                <div class="s3-lcontainer">
                    <p>
                        
                        也許不是這麼美 這麼好吃<br>
                        但卻是Alicia心中一道彩虹<br>
                        -她 ,知道 <br>
                        大家會喜歡這道彩虹的<br>
                        因為療癒了她 <br>
                        -她 , 知道<br>
                        這是條不一樣的路<br>
                        但她 選擇堅持<br>
                        延續 ＰＩＥＰＡＩ精神
                    </p>
                </div>
                <div class="s3-rcontainer">
                    <img src="../assets/img/rainbow.jpeg" alt="">
                </div>
        </section>

        <!--section4-->
        <section class="section4">
           <div class="s4-lcontainer">
               <div class="s4-lcontainer-img"><img src="../assets/img/pie.jpeg" alt=""></div>
              <div class="s4-lcontainer-txt">
                  <p>
                    我是Alicia.<br>
                    我們一起陪著ＰＩＥＰＡＩ劃過許多天空
                  </p>
              </div>
            </div>  
            <div class="s4-rcontainer">
                <div class="s4-rcontainer-txt">
                    <p>
                        - 派 派<br>
                        繼續做出跟彩虹一樣美麗的派<br>
                        讓派不在只有7種口味<br>
                        謝謝你看到這裡
                    </p> 
                </div>
                <div class="s4-rcontianer-img">
                    <img src="../assets/img/pie2.jpeg" alt="">
                </div>
            </div>     
       </section>
    </main>
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