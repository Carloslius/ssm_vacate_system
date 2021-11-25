<%--
  Created by IntelliJ IDEA.
  User: 刘浩松
  Date: 2021/11/6
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>我的上报记录</title>
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
    <span class="wel_word" style="font-size: 50px">&nbsp;&nbsp;我的上报记录</span>
    <%@include file="/pages/common/login_success_menu.jsp"%>
</div>

<div id="main">

    <table>
        <tr>
            <td>记录号</td>
            <td style="width: 200px">上报日期</td>
            <td>上报地点</td>
            <td>是否生病</td>
            <td>是否密切接触者</td>
        </tr>

        <c:if test="${empty pageInfo.list}">
            <tr>
                <td colspan="5">您暂无上报记录</td>
                <td><a href="pages/records/addRecord.jsp?rsno=${sessionScope.student.sno}"> 上报信息 </a></td>
            </tr>
        </c:if>
        <c:if test="${not empty pageInfo.list}">
            <c:forEach items="${pageInfo.list}" var="record">
                <tr>
                    <td>${record.rno}</td>
                    <td style="width: 200px">${record.rdate}</td>
                    <td>${record.rpos}</td>
                    <td>${record.risill}</td>
                    <td>${record.risclosecontact}</td>
                </tr>
            </c:forEach>

            <tr>
                <td colspan="5">
                    <a href="recordsController/showMyRecords?rsno=${sessionScope.student.sno}&pageNum=${pageInfo.firstPage}">首页</a>&nbsp;&nbsp;
                    <c:if test="${pageInfo.pageNum != pageInfo.firstPage}">
                    <a href="recordsController/showMyRecords?rsno=${sessionScope.student.sno}&pageNum=${pageInfo.pageNum-1}">上一页</a>&nbsp;&nbsp;
                    </c:if>
                    <c:if test="${pageInfo.pageNum != pageInfo.lastPage}">
                        <a href="recordsController/showMyRecords?rsno=${sessionScope.student.sno}&pageNum=${pageInfo.pageNum+1}">下一页</a>&nbsp;&nbsp;
                    </c:if>
                    <a href="recordsController/showMyRecords?rsno=${sessionScope.student.sno}&pageNum=${pageInfo.lastPage}">末页</a>&nbsp;&nbsp;
                    当前第${pageInfo.pageNum}页&nbsp;&nbsp;共有${pageInfo.pages}页&nbsp;&nbsp;共${pageInfo.total}条记录&nbsp;&nbsp;
                    <a href="pages/records/addRecord.jsp?rsno=${sessionScope.student.sno}"> 上报信息 </a>
                </td>
            </tr>
        </c:if>
    </table>
</div>

<%@include file="/pages/common/foot.jsp"%>
</body>
</html>
