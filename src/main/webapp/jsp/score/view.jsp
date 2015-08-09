<%--
  Created by IntelliJ IDEA.
  User: rolex
  Date: 2015/5/19
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine-en.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine.js"></script>
<style>
	.formRight{
		padding-top: 5px;
	}
	.formSubmit{
		margin-right:0;
	}
</style>
<!-- Form -->

	<fieldset>
		<div class="formSubmit">
			<input type="button" value="<spring:message code="button.score.edit" text="Edit Score"/>" class="redB" onclick="doUpdate('${score.id}')"/>
		</div>
		<div class="widget">
			<div class="title">
				<img src="${pageContext.request.contextPath}/images/icons/dark/list.png" alt="" class="titleIcon"/>
				<h6><spring:message code="label.score.view" text="Score View"/></h6>
			</div>
			<div class="formRow">
				<label><spring:message code="label.score.name" text="Score Name"/>:</label>

				<div class="formRight">
					${score.name}
				</div>
				<div class="clear"></div>
			</div>
			<div class="formRow">

				<label><spring:message code="label.score.pageCount" text="Page Count"/>:</label>
				<div class="formRight">
					${score.pageCount}
				</div>
				<div class="clear"></div>
			</div>
			<div class="formRow">
				<label><spring:message code="label.score.pages" text="Score Pages"/>:</label>
				<div class="formRight">
					<c:forEach items="${score.pages}" var="p">
						<div style="width: 90%;margin: 5px 0;">
							${p.name}
						</div>
						<div style="max-width: 1000px;">
							<a target="_blank" href="${pageContext.request.contextPath}/${p.path}">
								<img src="${pageContext.request.contextPath}/${p.path}" style="max-width: 500px;"/>
							</a>
						</div>
					</c:forEach>
				</div>
				<div class="clear"></div>
			</div>
			<div class="formRow">
				<label><spring:message code="label.score.memo" text="Memo"/>:</label>
				<div class="formRight searchDrop">
					${score.memo}
				</div>
				<div class="clear"></div>
			</div>

		</div>

	</fieldset>


<script>

	function doUpdate(arg){
		$("#content-wrapper").empty().load("${pageContext.request.contextPath}/score/update/"+arg);
	}
</script>