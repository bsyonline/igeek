<%--
  Created by IntelliJ IDEA.
  User: rolex
  Date: 2015/6/30
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/datatable.js"></script>
<style>
  .formSubmit{
    margin-right: 0;
  }
</style>
<script>
  $(function(){
    oTable = $('.dTable').dataTable({
      "bJQueryUI": true,
      "sPaginationType": "full_numbers",
      "sDom": '<""l>t<"F"fp>'
    });
  })
</script>
<div class="formSubmit">
  <input type="button" value="Add Chord" class="redB" onclick="add(4)"/>
  <input type="button" value="Add Key" class="redB" onclick="add(3)"/>
</div>
<!-- Dynamic table -->
<div class="widget">
  <div class="title"><img src="${pageContext.request.contextPath}/images/icons/dark/full2.png" alt="" class="titleIcon" /><h6>Dynamic table</h6></div>
  <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
    <thead>
    <tr>
      <th>Key Name</th>
      <th>option</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="k" items="${list}">
    <tr class="gradeA">
      <td>${k.name}</td>
      <td>edit delete</td>
    </tr>
    </c:forEach>

    
    </tbody>
  </table>
</div>