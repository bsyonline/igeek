<%--
  Created by IntelliJ IDEA.
  User: rolex
  Date: 2015/5/19
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine-en.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine.js"></script>
<!-- Form -->
    <form action="${pageContext.request.contextPath}/key/add" class="form" id="form1">
      <fieldset>
        <div class="widget">
          <div class="title"><img src="${pageContext.request.contextPath}/images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Key Add</h6></div>
          <div class="formRow">
            <label>Key Name:</label>
            <div class="formRight">
              <span class="oneTwo"><input type="text" id="keyName" name="keyName" value="" class="validate[required]"/></span>
            </div>
            <div class="clear"></div>
          </div>
        </div>
        <div class="formSubmit"><input type="button" value="submit" class="redB" onclick="_submit()"/></div>
      </fieldset>

    </form>

<script>
  function _submit(){
    if($('#form1').validationEngine('validate')) {
      var data = $("#form1").serialize()

      $("#content-wrapper").empty().load("${pageContext.request.contextPath}/key/add?"+data);
    }
  }

</script>
