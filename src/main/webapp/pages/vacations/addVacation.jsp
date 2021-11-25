<%--
  Created by IntelliJ IDEA.
  User: 刘浩松
  Date: 2021/11/6
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>申请假期</title>
    <%@include file="/pages/common/head.jsp"%>
    <style type="text/css">
        h1 {
            text-align: center;
            margin-top: 200px;
        }

        h1 a {
            color:red;
        }

        input {
            text-align: center;
        }
        #main table{
            margin: auto;
            margin-top: 20px;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
<div id="header">
    <img style="float:left; height: 77px;" src="resources/img/logo.gif"/>
    <span class="wel_word" style="font-size: 50px">&nbsp;&nbsp;申请假期</span>
    <%@include file="/pages/common/login_success_menu.jsp"%>
</div>

<div id="main">
    <form action="vacationsController/addVacation" method="post">
        <input type="hidden" name="vsno" value="${param.vsno}"/>
        <input type="hidden" name="vmno" value="1001"/>
        <table>
            <tr>
                <td>假期号</td>
                <td>请假日期</td>
                <td>审核状态</td>
                <td>前往地点</td>
                <td>请假原因</td>
                <td>操作</td>
            </tr>

            <tr>
                <td rowspan="3"><input name="vno" type="text"/></td>
                <td rowspan="3"><input name="vdate" type="text" value="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())%>"/></td>
                <td rowspan="3"><input name="vstatus" type="text" value="未审核" readonly/></td>
                <td rowspan="3"><input name="vdestination" type="text" value="河南省郑州市"/></td>
                <td rowspan="3"><input name="vreason" type="text"/></td>
                <td rowspan="3"><input type="submit" value="提交"/></td>
            </tr>
        </table>
    </form>

</div>

<%@include file="/pages/common/foot.jsp"%>
</body>
</html>
