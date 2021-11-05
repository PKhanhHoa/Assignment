<%-- 
    Document   : updatemark
    Created on : Nov 5, 2021, 8:36:13 PM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <style> 
            .center-text{
                margin: auto;
                width: 50%;
            }
            
            .center {
  margin: auto;
  width: 30%;
  border: 3px solid purple;
  padding: 10px;
}
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
input[type=date] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  text-align: center;
}
input[type=submit] {
            width: 20%;
            background-color: #58257b;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
            float: right;
          }
       

          
</style>
    </head>
    <body>
        <br/>
        <h1 class="center-text">Chỉnh sửa điểm</h1><br/><br/>
        <form action="updatemark" method="POST" class="center">
            Họ và Tên : <input type="hidden" value="${requestScope.student.name}" name="name" /> <br/><br/>
            Tiếng Việt : <input type="text" value="${requestScope.student.van}" name="van"/> <br/>
            Toán : <input type="text" value="${requestScope.student.toan}" name="toan"/> <br/>
            Tiếng Anh : <input type="text" value="${requestScope.student.address}" name="anh"/> <br/>
            <input type="submit" value="Lưu"/>
        </form>
    </body>
</html>
