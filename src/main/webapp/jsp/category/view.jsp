<%--
  Created by IntelliJ IDEA.
  User: rolex
  Date: 2015/5/19
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

<style>
    .formSubmit{
        margin-right:0;
    }
</style>
<!-- Form -->
<fieldset>
    <div class="formSubmit">
        <input type="button" value="<spring:message code="button.category.edit" text="Edit Category"/>" class="redB" onclick="doUpdate('${category.id}')"/>
    </div>
    <div class="widget">
        <div class="title">
            <img src="${pageContext.request.contextPath}/images/icons/dark/list.png" alt="" class="titleIcon"/>
            <h6><spring:message code="label.category.view" text="Category View"/></h6>
        </div>
        <div class="formRow">
            <label><spring:message code="label.category.name" text="Category Name"/>:</label>

            <div class="formRight" style="padding-top: 5px;">
                    ${category.name}
            </div>
            <div class="clear"></div>
        </div>
    </div>

</fieldset>

<script>
    function doUpdate(arg){
        $("#content-wrapper").empty().load("${pageContext.request.contextPath}/category/update/"+arg);
    }
</script>