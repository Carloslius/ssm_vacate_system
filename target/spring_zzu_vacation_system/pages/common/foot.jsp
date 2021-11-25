<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%--
  Created by IntelliJ IDEA.
  User: 刘浩松
  Date: 2021/10/28
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="bottom">
    <span>
        &reg;学生请假与管理系统 &nbsp;&trade;zzuVacateSystem&nbsp&copy;
        <%  Date date = new Date();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String nowTime = simpleDateFormat.format(date);
        %>
        <%=nowTime%><br/>
        <img src="https://api.azpay.cn/808/1.png" style="height: 17px;">
        <script src="https://api.azpay.cn/808/1.php"></script>
    </span>
</div>