<%-- 
    Document   : danhsach1A
    Created on : Sep 28, 2021, 7:22:05 PM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            ArrayList<Student> students1A = (ArrayList<Student>)request.getAttribute("students1A");
        %>
        <script>
            function doDetail(id){
                window.location.href = "detail?id=" + id;
            }
            function doUpdate(id){
                window.location.href = "update?id=" + id;
            }
            function doDelete(id){
                var c = confirm("Do you sure?");
                if(c)
                {
                    window.location.href = "delete?id=" + id;
                }
            }
        </script>
    </head>
    <body>
        <a href="search">Search</a><br/><br/>
        <h1>Danh sách lớp 1A</h1>
        GVCN : <input type="text" value=""><br/>
        <table border="1">
            <tr style="text-align: center">
                <td>ID</td>
                <td>Họ và Tên</td>
                <td>Ảnh</td>
                <td>Giới Tính</td>
                <td>Ngày sinh</td>
                <td>Địa chỉ</td>
                <td>Chi tiết</td>
                <td>Sửa</td>
                <td>Xóa</td>
            </tr>
            <%
                for (Student s : students1A){
            %>
            <tr>
                <td  style="text-align: center"><%=s.getId() %></td>
                <td><%=s.getName() %></td>
                <td><%=s.getImg() %><td/>
                <td><% if(s.isGender()){%>
                    <img src="../img/male.png" alt="" height="40" width="40"/>
                    <%} else {%>
                    <img src="../img/female.png" alt="" height="40" width="40"/>
                    <%}%>
                </td>
                <td><%=s.getDob() %></td>
                <td><%=s.getAddress() %></td>
                <td>
                    <input type="button" onclick="doDetail(<%=s.getId() %>)" value="Detail"/>
                </td>
                <td>
                    <input type="button" onclick="doUpdate(<%=s.getId() %>)" value="Edit"/>
                </td>
                <td>
                    <input type="button" onclick="doDelete(<%=s.getId() %>)" value="Delete"/>
                </td>
            </tr>
            <%
                }
            %>
        </table><br/>
        More students :<br/>
        <a href="insert">Insert</a>
        <a>Thêm học sinh :</a>
        <a href="insert">Thêm mới</a>
    </body>
</html>
