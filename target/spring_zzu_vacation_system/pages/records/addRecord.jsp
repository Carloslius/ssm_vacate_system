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
    <title>上报信息</title>
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
    <span class="wel_word" style="font-size: 50px">&nbsp;&nbsp;上报信息</span>
    <%@include file="/pages/common/login_success_menu.jsp"%>
</div>

<div id="main">
    <form action="recordsController/addRecord" method="post">
        <input type="hidden" name="rsno" value="${param.rsno}"/>
        <table>
            <tr>
                <td>记录号</td>
                <td>上报日期</td>
                <td>上报地点</td>
                <td>是否生病</td>
                <td>是否密切接触者</td>
            </tr>

            <tr>
                <td><input name="rno" type="text"/></td>
                <td><input name="rdate" type="text" value="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())%>"/></td>
                <td><input name="rpos" type="text" value="河南省郑州市"/></td>
                <td><input name="risill" type="text" value="否"/></td>
                <td><input name="risclosecontact" type="text" value="否"/></td>
                <td><input type="submit" value="提交"/></td>
            </tr>
        </table>
    </form>

</div>

<%@include file="/pages/common/foot.jsp"%>
</body>
</html>
