<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login success!</title>
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
        <div>
            <h1>註冊成功！請點選登入進入會員資訊！</h1>
        </div>
    </div>
</body>
<footer>
    <div class="f-down"><br>
        <h4>
            Copyright © PiEPAi 版權所有
        </h4>
    </div>
</footer>
</html>