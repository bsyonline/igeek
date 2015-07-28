<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: rolex
  Date: 2015/5/19
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

<style>
    .formSubmit{
        margin-right:0;
    }
</style>
<!-- Form -->
<fieldset>
    <div class="formSubmit">
        <input type="button" value="<spring:message code="button.user.edit" text="Edit User"/>" class="redB" onclick="doUpdate('${user.id}')"/>
    </div>
    <div class="widget">
        <div class="title">
            <img src="${pageContext.request.contextPath}/images/icons/dark/list.png" alt="" class="titleIcon"/>
            <h6><spring:message code="label.user.username" text="User View"/></h6>
        </div>
        <div class="formRow">
            <label><spring:message code="label.user.username" text="Username"/>:</label>

            <div class="formRight" style="padding-top: 5px;">
                    ${user.username}
            </div>
            <div class="clear"></div>
        </div>
    </div>

</fieldset>

<script>
    function doUpdate(arg){
        $("#content-wrapper").empty().load("${pageContext.request.contextPath}/user/update/"+arg);
    }
</script>