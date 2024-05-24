<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>
<html lang="en">

<%
    String id=request.getParameter("id");
%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Producter</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/product.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/footer.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/navbar.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css"> 
    <script src="../assets/js/products.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="../assets/js/jquery.star-rating-svg.js"></script>
    <script src="../assets/js/jquery.star-rating-svg.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
    <link rel="stylesheet" type="text/css" href="star-rating-svg.css">
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
                        <li><button class="btn01" onclick="document.getElementById('id02').style.display='block'" style="width:120px; background-color: white; color: black; height:60px; margin-left: 0px;font-size:15px">註冊</button></li>
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

    <div class="page">    
        <div class="section1">
            <div class="s1-img">

                <%
                sql = "SELECT `cakeName`,`imgpath1`,`imgpath2` FROM `products` WHERE `cid`="+id;
					ResultSet tmp = con.createStatement().executeQuery(sql);                 
					while(tmp.next())
					{
                        out.println("<img src='../assets/img/productimg/" + tmp.getString(2) + "'>");
                        out.println("<img src='../assets/img/productimg/" + tmp.getString(3) + "'>");
                    }
                %>
                
            </div>  
            <div class="s1-text">
                <div class="s1-t-title">

                    <%
                    sql = "SELECT `cakeName`,`cakePrice`,`stock` FROM `products` WHERE `cid`="+id;
					tmp =  con.createStatement().executeQuery(sql);
					while(tmp.next())
					{
                        out.println("<h1>" + tmp.getString(1) + "</h1></div>");
                        out.println("<div class='s1-t-star'>★★★★</div><hr>");
                        out.println("<div class='s1-t-money'><h4>NT$" + tmp.getString(2) + "</div>");
                        out.println("<div class='s1-t-count'><h3>庫存:" + tmp.getString(3) + "</h3><h3>數量:</h3>");
                    }	
                    %>
                    <form action='addcart_plus.jsp' method='post'>
                    <input type="button" class="s1-t-c-but" value="-" id="btnone" onclick="muinusNUM()">
                    <input type="text" class="s1-t-c-item" id="s1-t-c-item" name="addcartvalue" value="1">
                    <input type="button"  class="s1-t-c-but" value="+" id="btntwo" onclick="addNUM()">
                    <script>
                        function addNUM(){                            
                            var value =document.getElementById('s1-t-c-item').value;
                            value *= 1;
                            console.log(+value);
                            parseInt(value);
                            if(value >=1){
                                document.getElementById('s1-t-c-item').value = value+1 ;
                            }
                        }
                        function muinusNUM(){
                            var value =document.getElementById('s1-t-c-item').value;
                            if(value !=1){
                                document.getElementById('s1-t-c-item').value = value-1;
                            }
                        }
                    </script>
					
                </div>
                <div class="s1-t-button">
                    
                        <button type="submit" class="s1-t-b-button" name="productid" value="<%=id%>">加入購物車</button> 
                    </form>
                    <form action='addfavorite.jsp' method='post' style="margin-left:300px;margin-top: -90px;">
                    <button class="s1-t-b-l-button" style="margin-top:-15px;" name="productid" value="<%=id%>" >♡</button>
                    <h3 style="margin-left:100px;margin-top:50px;">加入追蹤</h3>
                    </form>
                </div>
            </div>
        </div>
        <div class="section2">
            <div class="s2-text">
                <h2>商品詳情</h2><br><hr><br>
                <h3>
                    <%
                    sql = "SELECT `cakeName`,`intor` FROM `products` WHERE `cid`="+id;
					tmp =  con.createStatement().executeQuery(sql);
					while(tmp.next())
					{
                        out.println(tmp.getString(2));
                    }
                %>
                </h3>
            </div>
            <div class="s2-img">
                <img src="../assets/img/page.jpg">
            </div>
        </div>
        <div class="section3">
            <div class="s3-comment">
                <h2>Comment</h2><br>
                <div class="s3-c-text">             
                    <form id="form1" method="post" action="addmessage.jsp">
                        <textarea placeholder="請寫下評論" name="content"></textarea>
                        <div class="star">
                                <div class="my-rating-6"></div>
                                <input type="hidden" id="test" name="star" > <!--會傳值的星星-->
                        </div>
                        <input type="hidden" name="productid" value="<% out.print(id); %>">
                        <input type = "reset" value = "取消">
                        <input type = "submit" value = "確定送出" style="margin-left:350px;">
                    </form>
                          
                    
                     
                </div>
            </div>
            <div class="s3-text" style="overflow: auto; height:500px;">
                <h2>Rewiew</h2><br><br>
                <%  
                    sql = "SELECT `customer`,`content`,`rate` FROM `message` WHERE `cid`="+id;

                    tmp =  con.createStatement().executeQuery(sql);
                    request.setCharacterEncoding("UTF-8");
					while(tmp.next())
                    {   
                        String new_name = new String(tmp.getString(1).getBytes("ISO-8859-1"),"UTF-8");
                        out.println("<div class='s3-t-people'><div class='s3-t-p-box'><img src='../assets/img/people .png'>");
                        out.println("<h5>"+ new_name +"</h5>");
                        double starr = Double.parseDouble(tmp.getString(3));
                        double star = Math.floor(starr);
                        out.print("<div class='s3-t-p-star'>");
                        for(int i=0;i<star;i++){
                            out.print("★");
                        }
                        if(star-starr<0){
                            out.println("☆");
                        }
                        out.println("</div>");
                        out.println("</div><br>");
                        out.println("<div class='s3-t-p-comment'>"+tmp.getString(2)+"</div><br><br><hr><br></div>");
                    }
                    
                %>

                <div class="s3-t-people">
                    <div class="s3-t-p-box">
                        <img src="../assets/img/people .png">
                        <h5>蔡杉杉</h5>
                        <div class="s3-t-p-star">★★★☆</div>
                    </div><br>
                    <div class="s3-t-p-comment">蛋糕好好看~</div><br><br><hr><br>
                </div>
                
            </div>
        </div>
        <div class="section4">
            <div class="s4-text">
                <h3>相關商品</h3>
            </div>
            <%
                int random1, random2, random3 = 0;
                random1 = (int)(Math.random()*8)+1; //pie
                random2 = (int)(Math.random()*9)+1; //birth
                random3 = (int)(Math.random()*5)+1; //other
            %>
            <div class="s4-href">            
                <div class="s4-h-entry">
                    <div class="s4-h-e-img">
                        <form method="post" action="product.jsp">
                            <input type="image" src="../assets/img/productimg/pie0<%=random1%>-1.jpg"  style="width: 350px;
                            border: 1px solid rgb(218, 218, 218);box-shadow: 12px 12px 7px rgba(126, 125, 125, 0.4);border: gainsboro 2px solid;">
                             <input type="hidden" name="id" value="10<%=random1%>">
                        </form>
                    </div><br>
                    <%  
                        random1 = random1 + 100;
                        String random_pie = String.valueOf(random1);
                        sql = "select `cakeName`, `cakePrice` from `products` WHERE `cid`="+random_pie;
                        ResultSet randomRS = con.createStatement().executeQuery(sql);
                        String cakePrice = "";
                        String cakeName = "";
                        while(randomRS.next()){
                            cakeName = randomRS.getString("cakeName");
                            cakePrice = randomRS.getString("cakePrice");
                            }
                    %>
                    <div class="s4-h-e-text">
                        <h5><%=cakeName%></h5>
                    </div><br>
                    <div class="s4-h-e-money">
                        <h5>NT$ <%=cakePrice%></h5>
                    </div>
                </div>
                <div class="s4-h-entry">
                    <div class="s4-h-e-img">
                        <form method="post" action="product.jsp">
                            <input type="image" src="../assets/img/productimg/birth0<%=random2%>-1.jpeg" style="width: 350px;
                            border: 1px solid rgb(218, 218, 218);box-shadow: 12px 12px 7px rgba(126, 125, 125, 0.4);border: gainsboro 2px solid;">
                             <input type="hidden" name="id" value="20<%=random2%>">
                        </form>
                    </div><br>
                    <%  
                        random2 = random2 + 200;
                        String random_birth = String.valueOf(random2);
                        sql = "select `cakeName`, `cakePrice` from `products` WHERE `cid`="+random_birth;
                        randomRS = con.createStatement().executeQuery(sql);
                        while(randomRS.next()){
                            cakeName = randomRS.getString("cakeName");
                            cakePrice = randomRS.getString("cakePrice");
                            }
                    %>
                    <div class="s4-h-e-text">
                        <h5><%=cakeName%></h5>
                    </div><br>
                    <div class="s4-h-e-money">
                        <h5>NT$ <%=cakePrice%></h5>
                    </div>
                </div>
                <div class="s4-h-entry">
                    <div class="s4-h-e-img">
                        <form method="post" action="product.jsp">
                            <input type="image" src="../assets/img/productimg/other0<%=random3%>-1.jpeg" style="width: 350px;
                            border: 1px solid rgb(218, 218, 218);box-shadow: 12px 12px 7px rgba(126, 125, 125, 0.4);border: gainsboro 2px solid;">
                             <input type="hidden" name="id" value="30<%=random3%>">
                        </form>
                    </div><br>
                    <%  
                        random3 = random3 + 300;
                        String random_other = String.valueOf(random3);
                        sql = "select `cakeName`, `cakePrice` from `products` WHERE `cid`="+random_other;
                        randomRS = con.createStatement().executeQuery(sql);
                        while(randomRS.next()){
                            cakeName = randomRS.getString("cakeName");
                            cakePrice = randomRS.getString("cakePrice");
                            }
                    %>
                    <div class="s4-h-e-text">
                        <h5><%=cakeName%></h5>
                    </div><br>
                    <div class="s4-h-e-money">
                        <h5>NT$ <%=cakePrice%></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        var array = '';
    
        $(".my-rating-6").starRating({
          totalStars: 5,
          emptyColor: 'gray',
          hoverColor: 'gold',
          activeColor: 'cornflowerblue',
          initialRating: 4,
          strokeWidth: 0,
          useGradient: false,
          minRating: 1,
          callback: function (currentRating, $el) {
            alert('rated ' + currentRating);
            console.log('DOM element ', $el);
            $('#test').attr("value", currentRating);
            array = currentRating;
          }
        });
      </script>
      

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