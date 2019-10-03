<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 01.10.19
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url value="/" var="mainUrl"/>
<html>
<head>
    <title>Dodaj kurs do ulubionych</title>
    <jsp:include page="header.jsp"/>
</head>
<body>
    <form action="${mainUrl}dashboard/addfavourite"  method="post">
        <center><br><br><H3>Dodaj kurs do ulubionych</H3></center><br><br>
        <div class="input-group mb-3 container" style="max-width: 700px;">
            <select class="custom-select" id="exchangeFirst">
                <option selected>Giełda 1</option>
                <c:forEach var="el" varStatus="loop" items="${exchange}">
                    <option value="${loop.count}">${el.name}</option>
                </c:forEach>
            </select>
            <select class="custom-select" id="exchangeSecond">
                <option selected>Giełda 2</option>
                <c:forEach var="el" varStatus="loop" items="${exchange}">
                    <option value="${loop.count}">${el.name}</option>
                </c:forEach>
            </select>
            <select class="custom-select" id="course">
                <option selected>Kurs</option>
                <c:forEach var="el" varStatus="loop" items="${coinsName}">
                <option value="${loop.count}">${el}</option>
                </c:forEach>
            </select>
        </div>
        <input type="hidden" name="exchange01" value="" id="exchange01">
        <input type="hidden" name="exchange02" value="" id="exchange02">
        <input type="hidden" name="coin" value="" id="coin">
        <center><button type="submit" class="btn btn-dark">Dodaj</button></center>
    </form>
</body>
    <jsp:include page="footer.jsp"/>
    <script src="${mainUrl}resources/js/addFavourite.js"></script>

</html>