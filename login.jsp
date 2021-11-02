<%-- 
    Document   : login
    Created on : Sep 28, 2021, 9:18:40 AM
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
        <header>
            <jsp:include page="header.jsp"/>
        </header><br/><br/>
        <form action="" method="post" border="2px">
            <h2 align="center">Đăng nhập</h2>
            <section align="center">
            <input type="text" placeholder="Tên đăng nhập" name="username" value=""><br>
            <input type="password" placeholder="Mật khẩu" name="password" value=""><br><br>
            <p class="text-warning">${mess}</p>
            </section>
            <h4 align="center"><label class="checkbox"> 
            <input type="checkbox" name="checkbox"/>Remember me
            </label></h4>
            <h4 align="center"><input type="submit" value="Đăng nhập" width="40" height="20"></h4>
            <h5 align="center"><a href="view/forgotpass.jsp">Quên mật khẩu</a></h5><br/>
        </form><br/><br/>
        <footer>
            <jsp:include page="footer.jsp"/>
        </footer>
    </body>
</html>
