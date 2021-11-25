<%@ page import="mba.zzuvacationsystem.pojo.Students" %>
<%--
  Created by IntelliJ IDEA.
  User: 刘浩松
  Date: 2021/11/6
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>学生信息</title>
    <%@include file="/pages/common/head.jsp"%>
    <style type="text/css">
        h1 {
            text-align: center;
            margin-top: 200px;
        }
        #main table{
            margin: auto;
            margin-top: 20px;
            border-collapse: collapse;
        }
        td a{
            font-size: 15px;
        }
    </style>
</head>
<body>

<div id="header">
    <img style="float:left; height: 77px;" src="resources/img/logo.gif"/>
    <span class="wel_word" style="font-size: 50px">&nbsp;&nbsp;学生信息</span>
    <%@include file="/pages/common/manage_menu.jsp"%>
</div>

<div id="main">

    <table>
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

        <c:forEach items="${pageInfo.list}" var="student">
            <tr>
                <td>${student.sno}</td>
                <td>${student.sname}</td>
                <td>${student.spassword}</td>
                <td><fmt:formatDate value="${student.sbirthday}" pattern="yyyy-MM-dd"/></td>
                <td>${student.ssex}</td>
                <td>${student.sgrade}</td>
                <td>${student.sphone}</td>
                <td>${student.sdno}</td>
                <td><a href="studentsController/showStudentFromSno?sno=${student.sno}&pageNum=1">修改信息</a></td>
            </tr>
        </c:forEach>

        <tr>
            <td colspan="9">
                <a href="studentsController/showStudents?pageNum=${pageInfo.firstPage}">首页</a>&nbsp;&nbsp;
                <c:if test="${pageInfo.pageNum != pageInfo.firstPage}">
                    <a href="studentsController/showStudents?pageNum=${pageInfo.pageNum-1}">上一页</a>&nbsp;&nbsp;
                </c:if>
                <c:if test="${pageInfo.pageNum != pageInfo.lastPage}">
                    <a href="studentsController/showStudents?pageNum=${pageInfo.pageNum+1}">下一页</a>&nbsp;&nbsp;
                </c:if>
                <a href="studentsController/showStudents?pageNum=${pageInfo.lastPage}">末页</a>&nbsp;&nbsp;
                当前第${pageInfo.pageNum}页&nbsp;&nbsp;共有${pageInfo.pages}页&nbsp;&nbsp;共${pageInfo.total}条记录&nbsp;&nbsp;
            </td>
        </tr>
    </table>


</div>

<%@include file="/pages/common/foot.jsp"%>
</body>
</html>
