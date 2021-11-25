<%--
  Created by IntelliJ IDEA.
  User: 刘浩松
  Date: 2021/11/7
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理请假记录</title>
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
    <script type="text/javascript">
        $(function (){
            $(".deleteVacation").click(function (){
                return confirm("你确定要删除假期号为" + $(this).parent().parent().find("td:first").text() + "的假期吗？")
            })
            $(".confirmVacation").click(function (){
                return confirm("你确定要批准假期号为" + $(this).parent().parent().find("td:first").text() + "的假期吗？")
            })
            $(".rejectVacation").click(function (){
                return confirm("你确定要驳回假期号为" + $(this).parent().parent().find("td:first").text() + "的假期吗？")
            })
        });
    </script>
</head>
<body>

<div id="header">
    <img style="float:left; height: 77px;" src="resources/img/logo.gif"/>
    <span class="wel_word" style="font-size: 50px">&nbsp;&nbsp;管理请假记录</span>
    <%@include file="/pages/common/manage_menu.jsp"%>
</div>

<div id="main">

    <table>
        <tr>
            <td>假期号</td>
            <td style="width: 171px">请假日期</td>
            <td>审核状态</td>
            <td>审核管理员号</td>
            <td>申请学生学号</td>
            <td>前往地点</td>
            <td>请假原因</td>
            <td colspan="2">操作 <a href="vacationsController/showMyDnoVacationsStatus?mdno=${sessionScope.manager.mdno}&pageNum=1">未审核</a></td>
        </tr>

        <c:if test="${empty pageInfo.list}">
            <tr>
                <td colspan="8">您的部门学生暂无请假记录</td>
            </tr>
        </c:if>
        <c:if test="${not empty pageInfo.list}">
            <c:forEach items="${pageInfo.list}" var="vacation">
                <tr>
                    <td>${vacation.vno}</td>
                    <td>${vacation.vdate}</td>
                    <td>${vacation.vstatus}</td>
                    <td>${vacation.vmno}</td>
                    <td>${vacation.vsno}</td>
                    <td>${vacation.vdestination}</td>
                    <td>${vacation.vreason}</td>
                    <td colspan="2">
                        <a style="font-size: 17px" class="confirmVacation" href="vacationsController/confirmVacationByVno?vno=${vacation.vno}&vdno=${sessionScope.manager.mdno}&vmno=${sessionScope.manager.mno}">批准</a>
                        <a style="font-size: 17px" class="rejectVacation" href="vacationsController/rejectVacationByVno?vno=${vacation.vno}&vdno=${sessionScope.manager.mdno}&vmno=${sessionScope.manager.mno}">驳回</a>
                        <a style="font-size: 17px" class="deleteVacation" href="vacationsController/deleteVacationByVno?vno=${vacation.vno}&vdno=${sessionScope.manager.mdno}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="9">
                    <a href="vacationsController/showMyDnoVacations?mdno=${sessionScope.manager.mdno}&pageNum=${pageInfo.firstPage}">首页</a>&nbsp;&nbsp;
                    <c:if test="${pageInfo.pageNum != pageInfo.firstPage}">
                        <a href="vacationsController/showMyDnoVacations?mdno=${sessionScope.manager.mdno}&pageNum=${pageInfo.pageNum-1}">上一页</a>&nbsp;&nbsp;
                    </c:if>
                    <c:if test="${pageInfo.pageNum != pageInfo.lastPage}">
                        <a href="vacationsController/showMyDnoVacations?mdno=${sessionScope.manager.mdno}&pageNum=${pageInfo.pageNum+1}">下一页</a>&nbsp;&nbsp;
                    </c:if>
                    <a href="vacationsController/showMyDnoVacations?mdno=${sessionScope.manager.mdno}&pageNum=${pageInfo.lastPage}">末页</a>&nbsp;&nbsp;
                    当前第${pageInfo.pageNum}页&nbsp;&nbsp;共有${pageInfo.pages}页&nbsp;&nbsp;共${pageInfo.total}条记录&nbsp;&nbsp;
                </td>
            </tr>
        </c:if>
    </table>
</div>

<%@include file="/pages/common/foot.jsp"%>
</body>
</html>
