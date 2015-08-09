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
<link href="${pageContext.request.contextPath}/css/colorbox.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/datatable.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine-en.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/colorbox/jquery.colorbox.js"></script>

<style>
  .formSubmit {
    margin-right: 0;
  }

  td {
    vertical-align: middle;
  }
.recommend{
	width: 100%;
	height:120px;
	text-align: center;
}
  .recommend ul li a div{
	  height:100px;
	  border: 1px solid #d5d5d5;
	  width:100px;

  }
  .recommend ul li{
	  height:100px;
	  width:100px;
	  margin: 10px;;
	  float:left;
  }
	.recommend-wrapper{

		margin-left: auto;
		margin-right: auto;
		width: 1200px;
	}
</style>
<script>
  $(function () {
    oTable = $('.dTable').dataTable({
      "bJQueryUI": true,
      "sPaginationType": "full_numbers",
      "sDom": '<""l>t<"F"fp>'
    });
  })
</script>
<div class="recommend">
	<div class="recommend-wrapper">
		<ul>
			<li><a href="#" title="">
				<div><img src="${pageContext.request.contextPath}/images/a.png" alt="" /></div></a></li>
			<li><a href="#" title="">
				<div><img src="${pageContext.request.contextPath}/images/a.png" alt="" /></div></a></li>
			<li><a href="#" title="">
				<div><img src="${pageContext.request.contextPath}/images/a.png" alt="" /></div></a></li>
			<li><a href="#" title="">
				<div><img src="${pageContext.request.contextPath}/images/a.png" alt="" /></div></a></li>
			<li><a href="#" title="">
				<div><img src="${pageContext.request.contextPath}/images/a.png" alt="" /></div></a></li>
			<li><a href="#" title="">
				<div><img src="${pageContext.request.contextPath}/images/a.png" alt="" /></div></a></li>
			<li><a href="#" title="">
				<div><img src="${pageContext.request.contextPath}/images/a.png" alt="" /></div></a></li>
			<li><a href="#" title="">
				<div><img src="${pageContext.request.contextPath}/images/a.png" alt="" /></div></a></li>
			<li><a href="#" title="">
				<div><img src="${pageContext.request.contextPath}/images/a.png" alt="" /></div></a></li>
			<li><a href="#" title="">
				<div><img src="${pageContext.request.contextPath}/images/a.png" alt="" /></div></a></li>
		</ul>
	</div>
</div>
<div class="formSubmit">
  <input type="button" value="<spring:message code="button.score.add" text="Add Score"/>" class="redB"
         onclick="add(5)"/>
</div>
<!-- Dynamic table -->
<div class="widget">
  <div class="title">
    <img src="${pageContext.request.contextPath}/images/icons/dark/full2.png" alt="" class="titleIcon"/>
    <h6><spring:message code="label.score.list" text="Score List"/></h6>
  </div>
  <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
    <thead>
    <tr>
      <th>No.</th>
      <th><spring:message code="label.score.name" text="Score Name"/></th>
      <th><spring:message code="label.score.count" text="Score Count"/></th>
      <th><spring:message code="label.score.memo" text="Memo"/></th>
      <th><spring:message code="label.score.pages" text="Score Pages"/></th>
      <th><spring:message code="label.option" text="Option"/></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="k" items="${list}" varStatus="i">
      <tr class="gradeA">
        <td align="center" width="5%">${i.count}</td>
        <td width="10%"><a href="javascript:doView('${k.id}')">${k.name}</a></td>
        <td width="10%">${k.pageCount}</td>
        <td width="25%">${k.memo}</td>
        <td width="25%" align="center" width="15%">
          <c:forEach items="${k.pages}" var="p">
            <a class="score-img-${k.id}" href="${pageContext.request.contextPath}/${p.path}" onclick="showColorBox('${k.id}')">
              <img src="${pageContext.request.contextPath}/${p.path}" style="max-width: 50px;"/>
            </a>

          </c:forEach>
        </td>
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
	function showColorBox(arg){
		$(".score-img-"+arg).colorbox({rel:'score-img-'+arg,maxWidth :'100%',maxHeight:'100%'});
	}
	$(function(){
		$.post("${pageContext.request.contextPath}/recommend",{},function(data){
			var text = "<ul>";
			for(var i=0;i<data.length;i++){
				text += '<li><a href="#" title=""><div><img src="${pageContext.request.contextPath}/images/a.png" alt="" />'+(data[i][1])+'</div></a></li>';
			}
			text +="</ul>";
			$(".recommend-wrapper").empty().html(text);
		},'json');
	});
  /*$(function(){
    var l = '${list}';
    for(var i=1;i< l.length;i++){
      $(".score-img-"+l[i]).colorbox({rel:'score-img-'+l[i],maxWidth :'100%',maxHeight:'100%'});
    }

	  $(".callbacks").colorbox({
	  onOpen:function(){ alert('onOpen: colorbox is about to open'); },
	  onLoad:function(){ alert('onLoad: colorbox has started to load the targeted content'); },
	  onComplete:function(){ alert('onComplete: colorbox has displayed the loaded content'); },
	  onCleanup:function(){ alert('onCleanup: colorbox has begun the close process'); },
	  onClosed:function(){ alert('onClosed: colorbox has completely closed'); }
	});

	$('.non-retina').colorbox({rel:'group5', transition:'none'})
	$('.retina').colorbox({rel:'group5', transition:'none', retinaImage:true, retinaUrl:true});

    //Example of preserving a JavaScript event for inline calls.
    $("#click").click(function(){
	    alert(1);
      $('#click').css({"background-color":"#f00", "color":"#fff", "cursor":"inherit"}).text("Open this window again and this message will still be here.");
      return false;
    });
  })*/
  function doView(arg){
    $("#content-wrapper").empty().load("${pageContext.request.contextPath}/score/view/"+arg);
  }
  function doUpdate(arg){
    $("#content-wrapper").empty().load("${pageContext.request.contextPath}/score/update/"+arg);
  }
  function doDelete(arg){
    $("#content-wrapper").empty().load("${pageContext.request.contextPath}/score/delete/"+arg);
  }
</script>