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
			<input type="button" value="<spring:message code="button.chord.edit" text="Edit Chord"/>" class="redB" onclick="doUpdate('${chord.id}')"/>
		</div>
		<div class="widget">
			<div class="title">
				<img src="${pageContext.request.contextPath}/images/icons/dark/list.png" alt="" class="titleIcon"/>
				<h6><spring:message code="label.chord.view" text="Chord View"/></h6>
			</div>
			<div class="formRow">
				<label><spring:message code="label.chord.name" text="Chord Name"/>:</label>

				<div class="formRight">
					${chord.name}
				</div>
				<div class="clear"></div>
			</div>
			<div class="formRow">

				<label><spring:message code="label.chord.category" text="Category"/>:</label>
				<div class="formRight">
					${chord.category.name}
				</div>
				<div class="clear"></div>
			</div>
			<div class="formRow">
				<label><spring:message code="label.chord.level" text="Level"/>:</label>
				<div class="formRight">
					${chord.level}
				</div>
				<div class="clear"></div>
			</div>
			<div class="formRow">
				<label><spring:message code="label.chord.key" text="Key"/>:</label>
				<div class="formRight searchDrop">
					${chord.key.name}
				</div>
				<div class="clear"></div>
			</div>
			<div class="formRow">
				<label><spring:message code="label.chord.image" text="Chord Image"/>:</label>

				<div class="formRight">
					<c:if test="${chord.icon != null}">
						<img src="${pageContext.request.contextPath}/upload/chord/${chord.icon}" />
					</c:if>
				</div>
				<div class="clear"></div>
			</div>
			<div class="formRow">
				<label><spring:message code="label.chord.desc" text="Chord Des"/>:</label>

				<div class="formRight">
					${chord.desc}
				</div>
				<div class="clear"></div>
			</div>

		</div>

	</fieldset>


<script>
	function doUpdate(arg){
		$("#content-wrapper").empty().load("${pageContext.request.contextPath}/chord/update/"+arg);
	}
</script>