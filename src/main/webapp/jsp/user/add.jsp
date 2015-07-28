<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: rolex
  Date: 2015/5/19
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine-en.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine.js"></script>

<!-- Form -->
    <form action="${pageContext.request.contextPath}/user/saveOrUpdate" class="form" id="form1">
      <input type="hidden" name="id" value="${category.id}">
      <fieldset>
        <div class="widget">
          <div class="title">
            <img src="${pageContext.request.contextPath}/images/icons/dark/list.png" alt="" class="titleIcon" />
            <h6><spring:message code="label.user.add" text="User Add"/></h6>
          </div>
          <div class="formRow">
            <label><spring:message code="label.user.username" text="Username"/>:</label>
            <div class="formRight">
              <span class="oneTwo"><input id="username" type="text" name="username" value="${category.username}" class="validate[required]"/></span>
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label><spring:message code="label.user.password" text="Password"/>:</label>
            <div class="formRight">
              <span class="oneTwo"><input id="password" type="password" name="password" value="${user.password}" class="validate[required]"/></span>
            </div>
            <div class="clear"></div>
          </div>
        </div>
        <div class="formSubmit"><input type="button" value="<spring:message code="button.submit" text="Submit"/>" class="redB" onclick="_submit()"/></div>
      </fieldset>

    </form>

<script>
  function _submit(){
    if($('#form1').validationEngine('validate')) {
      var data = $("#form1").serializeArray();
      jQuery('#form1').validationEngine('hideAll');
      $("#content-wrapper").empty().load("${pageContext.request.contextPath}/user/saveOrUpdate",data);
    }

  }

</script>
