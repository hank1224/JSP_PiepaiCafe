<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("id") == null ){
    out.println("<SCRIPT>alert('請先登入');");
    out.println("window.location='login.jsp'");
    out.println("</SCRIPT>");
	}else{   
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>結帳確認</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/checkout.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/navbar.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/footer.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css"> 
    <script src="../assets/js/checkout.js"></script>
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

    <main>
        <section class="section1">
            <div class="order">
                <div class="check-order">
                    <img src="../assets/img/icon/check.png" alt="">
                    <h1>購物車</h1>
                </div>
                <table>
                    <tbody>
                        <tr class="or-title">
                            <th colspan="2">商品</th>
                            <th>單價</th>
                            <th>數量</th>
                            <th>小計</th>
                        </tr>

                        <%
                            sql = "SELECT cid, quantity FROM cart WHERE id = '" + session.getAttribute("id") + "'";  //判斷購物車是否為空
                            ResultSet trynull = con.createStatement().executeQuery(sql);
                            String trynullset = "";
                            while(trynull.next()){
                                trynullset = trynull.getString("cid");
                            }
            
                            if(trynullset == ""){
                                    out.print("<tr><td></td> <td></td><td></td><td><h1><br>購物車為空<br></h1></td><td></td><td></td></tr>");
                            }


                            sql = "select products.imgpath1, products.cakeName, products.cakePrice, cart.quantity, cart.cid from products, cart WHERE cart.cid = products.cid AND cart.id='"+session.getAttribute("id")+"'";                        
                            ResultSet tmp = con.createStatement().executeQuery(sql);
                                int oneprice, quantity, totalprice, totalcake = 0;
                                while(tmp.next()){
                                    oneprice = Integer.valueOf(tmp.getString("products.cakePrice")).intValue();
                                    quantity = Integer.valueOf(tmp.getString("quantity")).intValue();
                                    out.println("<tr class='or-text'><td class='or-img'><img src='../assets/img/productimg/" + tmp.getString(1) + "'></td>");
                                    out.println("<td class='or-txt'>" + tmp.getString("products.cakeName") + "</td>");
                                    out.println("<td>NT" + tmp.getString("products.cakePrice") + "</td>");
                                    out.println("<td>"+ tmp.getString("quantity") +"</td>");
                                    out.println("<td>NT$" + (oneprice*quantity) + "</td>");
                                    out.println("<td class='cp4'><form action='deletecart.jsp'><input type='hidden' name='cid' value='"+ tmp.getString("cart.cid") +"'><button>刪除</button></form></td></tr>");
                                }
                            
                            sql = "select SUM(products.cakePrice*cart.quantity), SUM(cart.quantity) from cart, products WHERE cart.cid = products.cid AND cart.id='" + session.getAttribute("id") + "'";
                            ResultSet rs1 =  con.createStatement().executeQuery(sql);                 
				            rs1.next();
				            totalprice = rs1.getInt(1);
                            totalcake = rs1.getInt(2);
                        %>                                                                                   
                    </tbody>
                    <tfoot >
                        <tr>
                            <td colspan="3"></td>
                            <td >
                                
                                    <div class="check-txt-top">Subtotal:</div>
                                    <div class="check-txt">運費:</div>
                                    <div class="check-txt">總件數:</div>
                                    <div class="check-txt">Total:</div>
                                                             
                            </td>
                            <td>
                                <div class="check-txt-top">NT$<%=totalprice%></div>
                                <div class="check-txt">NT$120</div>
                                <div class="check-txt"><%=totalcake%>個商品</div>
                                <div class="check-txt">NT$<%=(totalprice+120)%></div>
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div> 
        </section>

        <section class="section2">
            <div class="write-data">
                <img src="../assets/img/icon/signature.png" alt="">
                <h1>填寫資料</h1>
            </div>
            <div class="data">
                <!--左邊資料欄位-->
                <div class="group-left">
                                <%
                                    sql = "SELECT * FROM `member` WHERE `id`='" + session.getAttribute("id") +"'";
	                                ResultSet rs =con.createStatement().executeQuery(sql);
	                                while(rs.next()){
                                        String name = new String(rs.getString("id").getBytes("ISO-8859-1"),"UTF-8");
                                        String phone = rs.getString(4);
                                        String email = rs.getString(3);
                                %>
                        <div class="form-header-top">訂購人資料</div>
                        <div class="form-body">
                            <form action="finish.jsp" class="customer-information">
                                <span>訂購人id：</span>
                                <span><%=name%></span><br>
                                <span>電話號碼：</span>
                                <span><%=rs.getString(4)%></span><br>
                                <span>電子郵件：</span>
                                <span><%=rs.getString(3)%></span><br>
                        </div>    
                        <div class="form-header">付款資料</div>
                        <div class="form-body">
                                <select name="payf" class="answer">
                                    <option value="貨到付款" name="payf">貨到付款</option>
                                    <option value="信用卡匯款" name="payf">信用卡匯款</option>
                                </select>
                        </div>
                        <div class="form-header">其他</div>
                        <div class="form-body">
                                <label>是否需要數字蠟燭？</label><br>
                                <input type="text" name="candle" class="answer"><br>
                                
                        </div>
                        <div class="form-header">訂單備註</div>
                        <div class="form-body">
                                <textarea class="memo" name="note" cols="20" rows="3" wrap="hard" placeholder="有什麼想要告訴賣家的嗎？"></textarea>
                        </div>
                    
                </div>
                <!--右邊資料欄-->
                <div class="group-right"> 
                        <div class="form-header-top">收件人資訊</div>
                        <div class="form-body">
                                
                                <label>收件人</label><br>
                                <input type="text" required name="recipient" class="answer"><br>
                                <label>電話號碼</label><br>
                                <input type="text" required name="tel" class="answer"><br>
                                <label>電子郵件</label><br>
                                <input type="text" required name="mail" class="answer"><br>  
                                <%
                                    }
                                %>
                        </div>
                        <div class="form-header">送貨資料</div>
                        <div class="form-body">
                                <label>選擇日期</label><br>
                                <input type="date" required name="date" class="answer"><br>
                                <label>選擇時段</label><br>
                                <select name="time" class="answer">
                                    <option>12:00</option>
                                    <option>13:00</option>
                                    <option>14:00</option>
                                    <option>15:00</option>
                                    <option>16:00</option>
                                    <option>17:00</option>
                                    <option>18:00</option>
                                    <option>19:00</option>
                                </select><br>
                                <label>宅配地址</label><br>
                                <input type="text" required name="address" class="answer"><br>
                        </div>
                </div>
            </div>
        </section>
            <input type="submit" value="完成訂單" style='margin:50px auto;
        width:150px;
        height:50px;
        border-radius: 10px;
        background-color: rgb(240,229,217);
        text-align: center;
        display: flex;
        justify-content: center;
        align-items: center; cursor:pointer;
        border:none'>
        </form>
        

    </main>
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
			    con.close(); // 關閉 MySQL 連線
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