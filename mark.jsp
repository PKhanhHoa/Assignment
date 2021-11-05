<%-- 
    Document   : mark
    Created on : Nov 5, 2021, 8:29:03 PM
    Author     : Admin
--%>

<%@page import="model.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            ArrayList<Student> students = (ArrayList<Student>)request.getAttribute("students");
        %>
        <script>
            function doUpdate(id){
                window.location.href = "updatemark?id=" + id;
            }
            function doBack(){
                window.location.href = "../student/list";
            }
            function exportTableToExcel(tableID, filename = ''){
            var downloadLink;
            var dataType = 'application/vnd.ms-excel';
            var tableSelect = document.getElementById(tableID);
            var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');

            // Specify file name
            filename = filename?filename+'.xls':'excel_data.xls';

            // Create download link element
            downloadLink = document.createElement("a");

            document.body.appendChild(downloadLink);

            if(navigator.msSaveOrOpenBlob){
                var blob = new Blob(['\ufeff', tableHTML], {
                    type: dataType
                });
                navigator.msSaveOrOpenBlob( blob, filename);
            }else{
                // Create a link to the file
                downloadLink.href = 'data:' + dataType + ', ' + tableHTML;

                // Setting the file name
                downloadLink.download = filename;

                //triggering the function
                downloadLink.click();
            }
        }
        </script>
        <style>
            .color{
                background-color: beige;
            }
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
        </style>
    </head>
    <body>
        <h1>Bảng điểm học sinh</h1><br/>
        
        <table border="1" id="mark">
            <tr style="text-align: center" class="color">
                <td>Họ và Tên</td>
                <td>Tiếng Việt</td>
                <td>Toán</td>
                <td>Tiếng Anh</td>
                <td>Chỉnh sửa</td>
            </tr>
            <%
                for (Student s : students){
        %>
            <tr class="color">
                <td><%=s.getName() %></td>
                <td  style="text-align: center" class="color"><%=s.getVan() %></td>
                <td  style="text-align: center" class="color"><%=s.getToan() %></td>
                <td  style="text-align: center" class="color"><%=s.getAnh() %></td>
                <td>
                    <input type="button" onclick="doUpdate(<%=s.getId() %>)" value="Sửa"/>
                </td>
            </tr>
            <%
                }
            %>
        </table><br/>
        <button onclick="exportTableToExcel('mark', 'Bangdiem')"><i class="fa fa-download"></i> Xuất file Excel</button>
        <br/><br/>
        <button onclick="doBack()" class="button"><span> Trở về</span></button>
    </body>
</html>
