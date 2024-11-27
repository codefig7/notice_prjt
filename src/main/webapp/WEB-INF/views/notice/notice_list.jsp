<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<%
  request.setCharacterEncoding("UTF-8");
%>

<html>
    <head>
        <meta charset=UTF-8">
        <title>회원 정보 출력창</title>
        <style>
            table,
            th,
            td {
                border: 1px #a0a0a0 solid;
                border-collapse: collapse;
            }
        </style>
    </head>
    <body>
        <table align="center" width="80%">
            <tr align="center" bgcolor="#d0e69d">
                <td><b>번호</b></td>
                <td><b>구분</b></td>
                <td><b>제목</b></td>
                <td><b>등록일</b></td>
            </tr>

            <c:forEach var="notice" items="${noticesList}" >
                <tr>
                    <td align="center">${notice.n_idx}</td>
                    <td align="center">${notice.n_category}</td>
                    <td>${notice.n_title}</td>
                    <td align="center">${notice.n_regdate}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
