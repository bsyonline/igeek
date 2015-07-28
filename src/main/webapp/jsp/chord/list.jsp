<%--
  Created by IntelliJ IDEA.
  User: rolex
  Date: 2015/6/30
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/datatable.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine-en.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine.js"></script>
<style>
  .formSubmit{
    margin-right: 0;
  }
  td{
    vertical-align:middle;
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
  <input type="button" value="<spring:message code="button.chord.add" text="Add Chord"/>" class="redB" onclick="add(4)"/>
</div>
<!-- Dynamic table -->
<div class="widget">
  <div class="title">
    <img src="${pageContext.request.contextPath}/images/icons/dark/full2.png" alt="" class="titleIcon" />
    <h6><spring:message code="label.chord.list" text="Chord List"/></h6>
  </div>
  <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
    <thead>
    <tr>
      <th>No.</th>
      <th><spring:message code="label.chord.name" text="Chord Name"/></th>
      <th><spring:message code="label.category.name" text="Category"/></th>
      <th><spring:message code="label.key.name" text="Key"/></th>
      <th><spring:message code="label.level.name" text="Level"/></th>
      <th><spring:message code="label.chord.desc" text="Desc"/></th>
      <th><spring:message code="label.option" text="Option"/></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="k" items="${list}" varStatus="i">
    <tr class="gradeA">
      <td align="center" >${i.count}</td>
      <td width="10%"><a href="javascript:doView('${k.id}')" >${k.name}</a></td>
      <td width="10%">${k.category.name}</td>
      <td width="10%">${k.key.name}</td>
      <td align="center" width="15%">${k.level}</td>
      <td>${k.desc}</td>
      <td align="center" width="15%">
        <a href="javascript:doUpdate('${c.id}')"><spring:message code="button.edit" text="Edit"/></a>&nbsp;&nbsp;
        <a href="javascript:doDelete('${c.id}')"><spring:message code="button.remove" text="Remove"/></a>
      </td>
    </tr>
    </c:forEach>

    
    </tbody>
  </table>
</div>
<script>
  function doView(arg){
    $("#content-wrapper").empty().load("${pageContext.request.contextPath}/chord/view/"+arg);
  }
  function doUpdate(arg){
    $("#content-wrapper").empty().load("${pageContext.request.contextPath}/chord/update/"+arg);
  }
  function doDelete(arg){
    $("#content-wrapper").empty().load("${pageContext.request.contextPath}/chord/delete/"+arg);
  }
</script>