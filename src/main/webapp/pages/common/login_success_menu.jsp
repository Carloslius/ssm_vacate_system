<%--
  Created by IntelliJ IDEA.
  User: 刘浩松
  Date: 2021/10/28
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
    <span>当前登录账户：<span class="um_span">${sessionScope.student.sname}</span></span>
    <a href="vacationsController/showMyVacations?vsno=${sessionScope.student.sno}&pageNum=1">我的请假记录</a>
    <a href="recordsController/showMyRecords?rsno=${sessionScope.student.sno}&pageNum=1">我的上报记录</a>
    <a href="studentsController/logOut">注销</a>&nbsp;&nbsp;
</div>