<%-- 
    Document   : home
    Created on : Sep 28, 2021, 8:42:01 AM
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
        </header>
        <h1>Danh sách lớp học</h1>
        
        Khối 1 : <select name="class1" onchange="location = this.value;">
            <option selected>Danh sách lớp 1</option>
            <option value="../view/class/danhsach1A.jsp">Lớp 1A<a/></option>
            <option value="../view/class/danhsach1B.jsp">Lớp 1B<a/></option>
            <option value="../view/class/danhsach1C.jsp">Lớp 1C<a/></option>
        </select><br/><br/>
        Khối 2 : <select name="class2" onchange="location = this.value;">
            <option selected>Danh sách lớp 2</option>
            <option value="../view/class/danhsach2A.jsp">Lớp 2A<a/></option>
            <option value="../view/class/danhsach2B.jsp">Lớp 2B<a/></option>
            <option value="../view/class/danhsach2C.jsp">Lớp 2C<a/></option>
        </select><br/><br/>
        Khối 3 : <select name="class3" onchange="location = this.value;">
            <option selected>Danh sách lớp 3</option>
            <option value="../view/class/danhsach3A.jsp">Lớp 3A<a/></option>
            <option value="../view/class/danhsach3B.jsp">Lớp 3B<a/></option>
            <option value="../view/class/danhsach3C.jsp">Lớp 3C<a/></option>
        </select><br/><br/>
        Khối 4 : <select name="class4" onchange="location = this.value;">
            <option selected>Danh sách lớp 4</option>
            <option value="../view/class/danhsach4A.jsp">Lớp 4A<a/></option>
            <option value="../view/class/danhsach4B.jsp">Lớp 4B<a/></option>
            <option value="../view/class/danhsach4C.jsp">Lớp 4C<a/></option>
        </select><br/><br/>
        Khối 5 : <select name="class5" onchange="location = this.value;">
            <option selected>Danh sách lớp 5</option>
            <option value="../view/class/danhsach5A.jsp">Lớp 5A<a/></option>
            <option value="../view/class/danhsach5B.jsp">Lớp 5B<a/></option>
            <option value="../view/class/danhsach5C.jsp">Lớp 5C<a/></option>
        </select><br/><br/>
        <a href="view/class/tatcahocsinh.jsp">Danh sách học sinh :
        <header>
            <jsp:include page="footer.jsp"/>
        </header>
    </body>
</html>
