<%--
  Created by IntelliJ IDEA.
  User: 刘浩松
  Date: 2021/10/28
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<div>
    <%--<% String basePath = "https://" + request.getServerName() + ":443" + request.getContextPath() + "/";%>--%>
    <% String basePath = request.getScheme() + "://" + request.getServerName() + ":" +
                        request.getServerPort() + request.getContextPath() + "/";%>
    <base href="<%=basePath%>">
    <link type="text/css" rel="stylesheet" href="resources/css/style.css"/>
    <script type="text/javascript" src="resources/script/jquery-1.7.2.js"></script>
    <style type="text/css">
        a{
            text-decoration:none
        }
        td a{
            font-size: 17px;
        }
    </style>
</div>
