<%--
  Created by IntelliJ IDEA.
  User: rolex
  Date: 2015/7/5
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title></title>
</head>
<body>
<div id="leftSide">
  <div class="logo"><a href="index.html"><img src="${pageContext.request.contextPath}/images/logo.png" alt="" /></a></div>

  <div class="sidebarSep mt0"></div>

  <!-- Search widget -->
  <form action="" class="sidebarSearch">
    <input type="text" name="search" placeholder="search..." id="ac" />
    <input type="submit" value="" />
  </form>

  <div class="sidebarSep"></div>

  <!-- General balance widget -->
  <div class="genBalance">
    <a href="#" title="" class="amount">
      <span>General balance:</span>
      <span class="balanceAmount">$10,900.36</span>
    </a>
    <a href="#" title="" class="amChanges">
      <strong class="sPositive">+0.6%</strong>
    </a>
  </div>

  <!-- Next update progress widget -->
  <div class="nextUpdate">
    <ul>
      <li>Next update in:</li>
      <li>23 hrs 14 min</li>
    </ul>
    <div class="pWrapper"><div class="progressG" title="78%"></div></div>
  </div>

  <div class="sidebarSep"></div>

  <!-- Left navigation -->
  <ul id="menu" class="nav">
    <c:forEach items="${map}" var="m" varStatus="i">
      <li class="${m.key.icon}"><a href="${m.key.url}" title="" class=" <c:if test="${fn:length(m.value)>0}">exp</c:if> <c:if test="${i.index==0}">active</c:if> " > <span>${m.key.title}</span>
        <c:if test="${fn:length(m.value)>0}">
          <strong>${fn:length(m.value)}</strong>
        </c:if>
        </a>
        <c:if test="${fn:length(m.value)>0}">
          <ul class="sub">
            <c:forEach var="c" items="${m.value}">
              <li><a href="${c.url}" title="">${c.title}</a></li>
            </c:forEach>
          </ul>
        </c:if>
      </li>
    </c:forEach>

  </ul>
</div>
</body>
</html>
