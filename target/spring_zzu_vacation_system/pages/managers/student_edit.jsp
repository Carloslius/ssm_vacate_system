<%--
  Created by IntelliJ IDEA.
  User: 刘浩松
  Date: 2021/11/8
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>编辑学生信息</title>
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
    <span class="wel_word" style="font-size: 50px">&nbsp;&nbsp;编辑学生信息</span>
    <%@include file="/pages/common/manage_menu.jsp"%>
</div>

<div id="main">
    <form action="managersController/updateStudentsBySno" method="post">
        <table>
            <tr>
            <tr>
                <td>学号</td>
                <td>姓名</td>
                <td>密码</td>
                <td>生日</td>
                <td>性别</td>
                <td>年级</td>
                <td>电话</td>
                <td>部门</td>
                <td>修改</td>
            </tr>

            <tr>
                <td><input name="sno" type="text" value="${studentItem.sno}" readonly="readonly"/></td>
                <td><input name="sname" type="text" value="${studentItem.sname}"/></td>
                <td><input name="spassword" type="text" value="${studentItem.spassword}"/></td>
                <!-- format以后与DateConverter中String到Date的转换格式相同，原格式无法识别 -->
                <td><input name="sbirthday" type="text" value="<fmt:formatDate value="${studentItem.sbirthday}" pattern="yyyy-MM-dd"/>"/></td>
                <td><input name="ssex" type="text" value="${studentItem.ssex}"/></td>
                <td><input name="sgrade" type="text" value="${studentItem.sgrade}"/></td>
                <td><input name="sphone" type="text" value="${studentItem.sphone}"/></td>
                <td><input name="sdno" type="text" value="${studentItem.sdno}"/></td>
                <td><input type="submit" value="提交"/></td>
            </tr>
        </table>
    </form>

</div>

<%@include file="/pages/common/foot.jsp"%>
</body>
</html>