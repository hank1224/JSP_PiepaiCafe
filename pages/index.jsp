<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index</title>
    <link rel="stylesheet" href="../assets/css/navbar.css">
    <link rel="stylesheet" href="../assets/css/index.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/footer.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/navbar.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css"> 
    <!--動態廣告的js-->
    <script type="text/javascript" src="../assets/js/index.js"></script>
</head>
<body>
  <!--導覽列-->
  <header>
    <nav>
        <ul class="navbar" style="height: 120px;">
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
<main>
    <div id="container">
        <!--section1:照片-->
        <section id="img1" class="img"></section>
        <!--section2:動態廣告-->
        <section class="section2">
          
                <div class="s2-txt">
                    <div class="s2-txt-title">
                        <div class="s2-line"></div>
                        <p class="h1">官網價格皆享有預購價</p>
                        <div class="s2-line"></div>
                    </div>
                    <div class="s2-txt-box">
                        <p>
                            派派不僅美味，還可以療癒你。<br>
                            重最初到至今，派派已經邁向五周年了<br>
                            我們秉持著使用最好的原料<br>
                            重派皮到餡料都堅持手工製作<br>
                            就是要讓消費者吃得出我們的用心與創新<br>
                        </p>
                    </div>
                </div>

                <div class="com" id="com">
                    <ul id="pic">
                        <li><img src="../assets/img/index1.png" alt=""/></li>
                        <li><img src="../assets/img/index2.jpeg" alt=""/></li>
                        <li><img src="../assets/img/pie.jpeg" alt=""/></li>
                        <li><img src="../assets/img/index4.png" alt=""/></li>
                        
                    </ul>
                    <ol id="num">
                        <li class="on">1</li>
                        <li>2</li>
                        <li>3</li>
                        <li>4</li>
                    </ol>
                </div>    
        </section>

        <!--section3:照片-->
        <section id="img2" class="img"></section>

        <!--section4:熱門商品-->
        <section class="section4">
            <div class="top-title">
                TOP-SELLING<br>
                PRODUCTS
            </div>
            <div class="toppie">
                
                <div class="top1">
                    <div class="top-img">
                       <img src="../assets/img/top/top1.png" alt=""> 
                       <div class="topimg-txt">
                            <p>
                                <span>
                                    尺寸：8吋（適合8人吃）<br>
                                    門市有提供切片販售<br>
                                </span><br>
                                <span>
                                    (可免費題字) :<br>
                                    如需題字<br>
                                    請先選擇需題字<br>
                                    在打備註<br>
                                    題字建議使用英文
                                </span>
                            </p><br>
                            <a>shopping&nbsp;now</a>
                       </div>
                    </div>

                    <div class="top-txt">
                        <h1>Top1:&nbsp;&nbsp;超級芝麻</h1>
                       
                           <p>
                            芝麻戚風蛋糕體<br> 
                            內含芝麻內餡&nbsp;&&nbsp;焦糖脆粒<br>
                            配上鮮奶油&nbsp;&&nbsp;檸檬片<br>
                        </p>

                    
                        <p>
                            售價：<span class="price">NT$1,000</span>
                        </p>
                    </div>
                </div>

                <div class="top2">
                    <div class="top-txt">
                        <h1>Top2:&nbsp;&nbsp;伯爵火山+果乾</h1>
                        <p>
                            布朗尼＋核桃的派底<br>
                            比利時巧克力製作的巧克力奶凍<br>
                            海綿蛋糕&nbsp;每層的ＴＷＧ伯爵巧克力<br>
                            淋上巧克力甘納許<br>
                            搭配果乾與小餅乾<br><br>
                            ps:冷藏吃原味 冷凍吃像冰淇凌
                        </p>
                        <p>
                            售價：&nbsp;<span class="price">NT$1,300</span>
                        </p>
                       
                        
                    </div>
                    <div class="top-img">
                        <img src="../assets/img/top/top2.jpeg" alt="">
                        <div class="topimg-txt">
                            <p>
                                <span>
                                    尺寸：9吋（適合8~10人吃）<br>
                                    門市有提供切片販售<br>
                                </span><br>
                                <span>
                                    (可免費題字) :<br>
                                    如需題字<br>
                                    請先選擇需題字<br>
                                    在打備註<br>
                                    題字建議使用英文
                                </span>
                            </p><br>
                            <form action="product.jsp" method="post">
                            <a>shopping&nbsp;now</a>
                            <input type="hidden" name="id" value="201">
                            </form>
                       </div>

                    </div>
               </div>
               <div class="top1">
                <div class="top-img">
                   <img src="../assets/img/top/top3.png" alt="">
                   <div class="topimg-txt">
                    <p>
                        <span>
                            尺寸：4吋/7吋<br>
                            門市有提供切片販售<br>
                        </span><br>
                        <span>
                            如需題字<br>
                            請先選擇需題字<br>
                            在打備註<br>
                            題字建議使用英文<br>
                            
                        </span>
                    </p><br>
                    <a>shopping&nbsp;now</a>
               </div>
                </div>
                <div class="top-txt">
                    <h1>Top3:&nbsp;&nbsp;伯爵夫人與雙莓公主</h1>
                    <p>
                        TWG伯爵茶&覆盆子奶油<br>
                        白巧克力淋面<br>
                        法國發酵奶油.日本麵粉.<br>
                        日本上白糖.殺菌洗選蛋<br>
                       

                    </p>
                    <p>
                        售價：&nbsp;<span class="price">NT$864</span>
                    </p>
                    
                </div>
            </div>  
        </div>               

        </section>
       

        <!--section5:照片-->
        <section id="img3" class="img"></section>
        <!--section6:聯絡資訊-->
        <section class="section6">
            <div class="s6-top">
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3617.4224842024405!2d121.23465351553442!3d24.95173658401104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x34682240ff783f19%3A0x4fcb1aa7d95cf650!2zUGllcGFpIENhZmXigJkg5Lit5aOi5bqX!5e0!3m2!1szh-TW!2stw!4v1655114352573!5m2!1szh-TW!2stw" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"  width="500" height="450" ></iframe>
                        <!-- 嵌入 Google map -->
                </div>
                <div class="map-txt">
                    <div class="s6-txt-title">
                        <div class="s6-line"></div>
                        <h1>門市資訊: 中壢門市</h1>
                        <div class="s6-line"></div>
                    </div>
                    <div class="s6-txt-box">
                        <p>
                            餐點以義大利麵、燉飯為主<br>
                            
                            適合姊妹聚餐、情侶約會的空間<br>
                            
                            有提供包場、周歲派對等<br>
                            
                            桃園市中壢區莒光路89號<br>
                            
                            (莒光公園旁) 03-4162546 提供免費車位
                        </p>
                    </div>

                </div>
               
            </div>
            <div class="s6-dowm">
                <div class="s6-down-left">
                    <h3>Contact us</h3>
                    <h6>唯樂食品企業社 Co.,Lt</h6>   
                </div>
                <div class="s6-down-right">
                    <div class="dr-box"></div>
                    <div class="dr-txt">
                        <p>
                            <img src="../assets/img/icon/placeholder.png">&nbsp;桃園縣中壢區莒光路89號<br>
                            <img src="../assets/img/icon/phone-contact.png">&nbsp;0910-791-851 <br>
                            <img src="../assets/img/icon/open.png">&nbsp;(10:00-18:00)<br>
                            <img src="../assets/img/icon/mail.png">&nbsp;piepai89@gmail.com<br><br>
                            Fellow us on<br>
                            <img src="../assets/img/icon/facebook.png">&nbsp;<a href="https://www.facebook.com/piepaicafe/?ref=page_internal">Facebook</a>
                            <img src="../assets/img/icon/instagram.png">&nbsp;<a href="https://www.instagram.com/piepai_cafe/">Instergram</a>
                        </p>
                    </div>    
                </div>
            </div>
        </section>
    </div>
</main>



</body>
<footer>
    <div class="f-down"><br>
        <h3>
            瀏覽人數：
            <%

try { // 例外處理
    Class.forName("com.mysql.jdbc.Driver"); // 啟動 JDBC 驅動程式
    try {	// 例外處理

        if(con.isClosed()) // con.isClosed() 回傳 ture 代表連線關閉
           out.println("警告：連線建立失敗！"); // 連線關閉代表連線沒有被建立
        else { // 連線成功建立就可以開始取得與更新資料庫的資料
				sql="use finalwork"; // SQL 語法：使用 資料庫
				con.createStatement().execute(sql); // 執行上一行的 SQL
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
			}
		}
    catch (SQLException sExec) {
           out.println("警告：MySQL 錯誤！"+sExec.toString()); // MySQL 錯誤警告
    }
}
catch (ClassNotFoundException err) {
   out.println("警告：class 錯誤！"+err.toString()); // JDBC 錯誤警告
}
%>
            人
        </h3><br>
        <h4>
            Copyright © PiEPAi 版權所有
        </h4>
    </div>
</footer>
</html>