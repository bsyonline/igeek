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
  <input type="button" value="<spring:message code="button.user.add" text="Add User"/>" class="redB" onclick="add(1)"/>
</div>
<!-- Dynamic table -->
<div class="widget">
  <div class="title">
      <img src="${pageContext.request.contextPath}/images/icons/dark/full2.png" alt="" class="titleIcon" />
      <h6><spring:message code="label.user.list" text="User List"/> </h6>
  </div>
  <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
    <thead>
    <tr>
<%--suppress CheckTagEmptyBody --%>
      <th><spring:message code="label.user.username" text="Username"/></th>
      <th>option</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="c" items="${list}">
    <tr class="gradeA">
      <td><a href="javascript:doView('${c.id}')" >${c.username}</a></td>
      <td align="center">
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
    $("#content-wrapper").empty().load("${pageContext.request.contextPath}/user/view/"+arg);
  }
  function doUpdate(arg){
    $("#content-wrapper").empty().load("${pageContext.request.contextPath}/user/update/"+arg);
  }
  function doDelete(arg){
    $("#content-wrapper").empty().load("${pageContext.request.contextPath}/user/delete/"+arg);
  }
</script>