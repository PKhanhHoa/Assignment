<%-- 
    Document   : forgotpass
    Created on : Sep 29, 2021, 7:50:46 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="forgotpass" method="post" border="2px">
            <h2>Quên mật khẩu</h2>
            Tên đăng nhập<br/>
            <input type="text" name="username" value=""><br>
            Email<br/>
            <input type="text" name="email" value=""><br><br>
            <h4><input type="submit" value="Lấy lại mật khẩu"></h4>
        </form><br/><br/>
    </body>
</html>
