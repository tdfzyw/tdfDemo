<%--
  Created by IntelliJ IDEA.
  User: tdf
  Date: 2020/1/19
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
用户信息<br>
<c:forEach items="${userList}" var="user">
    ${user.user_id}&nbsp;
    ${user.user_code};
    ${user.user_name}<br>
</c:forEach>
</body>
</html>
