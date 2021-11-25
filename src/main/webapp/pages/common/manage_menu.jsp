<%--
  Created by IntelliJ IDEA.
  User: 刘浩松
  Date: 2021/10/28
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
    <span>欢迎：<span class="um_span">${sessionScope.manager.mname}</span></span>
    <a href="studentsController/showStudents?pageNum=1">学生信息管理</a>
    <a href="vacationsController/showMyDnoVacations?mdno=${sessionScope.manager.mdno}&pageNum=1">学生请假管理</a>
    <a href="recordsController/showMyDnoRecords?mdno=${sessionScope.manager.mdno}&pageNum=1">上报记录管理</a>
    <a href="managersController/logOut">注销</a>&nbsp;&nbsp;
</div>