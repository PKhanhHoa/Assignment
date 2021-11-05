<%-- 
    Document   : detail
    Created on : Nov 5, 2021, 7:35:55 PM
    Author     : Admin
--%>

<%@page import="model.Teacher"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script>
            function doBack(){
                window.location.href = "../student/list";
            }
        </script>
                        <style> 
                            .button {
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 14px;
  padding: 5px;
  width: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
            .center-text{
                margin: auto;
                width: 50%;
            }
            
            .center {
            margin: auto;
            width: 50%;
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
        <h1 class="center-text">Thông tin giáo viên</h1><br/><br/>
        <form action="" method="" class="center">
        <%--ID: ${requestScope.student.id} <br/>--%>
        Họ và Tên : Mr A <br/>
        Ngày sinh : 1980-02-21  <br/>
        Giới tính : Nam <br/>
        Điện thoại : 0978457813 <br/>
        Địa chỉ: Hà Nội <br/>
        <br/><br/>
        <a href="../../student/list" class="button"><span>  Trở về  </span></a>
        </form>
    </body>
</html>
