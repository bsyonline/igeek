<%--
  Created by IntelliJ IDEA.
  User: rolex
  Date: 2015/5/19
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/chosen.jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine-en.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/plupload/plupload.full.min.js"></script>

<style>
	#score-img-btn{
		background: #fff url("${pageContext.request.contextPath}/images/addFiles.png") no-repeat scroll 0 0;
		cursor: pointer;
		display: inline;
		float: right;
		font-size: 11px;
		font-weight: bold;
		height: 22px;
		overflow: hidden;
		text-indent: -9999px;
		width: 22px;
	}
	#filelist{
		padding-top: 5px;
	}
	.thumbnail{
		margin: 5px;
	}
	.thumbnail img{
		max-height: 100px;
		max-width:100px;
	}
	#score-img-text{

		color: #595959 !important;
		cursor: default;
		display: block;
		float: left;
		font-size: 11px;
		line-height: 22px;
		max-width: 200px;
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
	}
	.uploader{
		background: rgba(0, 0, 0, 0) url("${pageContext.request.contextPath}/images/backgrounds/chosenSelect.png") repeat-x scroll 0 0 !important;
	}
	.nameHoverformError{
		margin-left: 150px;
		margin-top: 28px !important;
	}
	.categoryHoverformError ,.keyHoverformError {
		margin-left: 140px;
	}
	.imgHoverformError{
		margin-top: 8px !important;
		margin-left: 140px;
	}
</style>
<!-- Form -->
<form action="" class="form" id="form1">
	<div id="hidden-text">

	</div>
	<fieldset>
		<div class="widget">
			<div class="title">
				<img src="${pageContext.request.contextPath}/images/icons/dark/list.png" alt="" class="titleIcon"/>
				<h6><spring:message code="label.score.add" text="Score Add"/></h6>
			</div>
			<div class="formRow">
				<label>* <spring:message code="label.score.name" text="Score Name"/>:</label>

				<div class="formRight">
					<span class="oneTwo"><input type="text" id="name" value="" name="name" value="${score.name}"/></span>
					<span id="nameHover"></span>
				</div>
				<div class="clear"></div>
			</div>
			<div class="formRow">
				<label><spring:message code="label.score.pageCount" text="Page Count"/>:</label>

				<div class="formRight">
					<span class="oneTwo"><input type="text" id="pageCount" value="" name="pageCount" value="${score.pageCount}" /></span>
					<span id="pageCountHover"></span>
				</div>
				<div class="clear"></div>
			</div>

			<div class="formRow">
				<label>* <spring:message code="label.score.image" text="Score Image"/>:</label>

				<div class="formRight">
					<div id="uniform-file" class="uploader">
						<div id="score-img-container">
							<a id="score-img-selector" href="javascript:;">
								<span id="score-img-text" style="-moz-user-select: none;">Choose Image...</span>
								<span id="score-img-btn" class="action" style="-moz-user-select: none;">Choose Image</span>
							</a>
						</div>

					</div><span id="imgHover"></span>
					<div id="filelist"></div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="formRow">
				<label><spring:message code="label.score.memo" text="Memo"/>Score Memo:</label>

				<div class="formRight"><textarea rows="8" cols="" name="memo" class="autoGrow">${score.memo}</textarea></div>
				<div class="clear"></div>
			</div>

		</div>
		<div class="formSubmit"><input type="button" value="<spring:message code="button.submit" text="Submit"/>" class="redB" onclick="_submit()"/></div>


	</fieldset>

</form>

<script>
	$(function () {
		$(".chzn-select").chosen();
		uploader.init();
	})

	function _submit() {

		var flag = true;
		if($("#name").val()==''){
			$('#nameHover').validationEngine('showPrompt', '* This field is required', 'error', true);
			flag = false;
		}else{
			$('.nameHoverformError').remove();
			flag = true;
		}
		if($("#category").val()==''){
			$('#categoryHover').validationEngine('showPrompt', '* This field is required', 'error', true);
			flag = false;
		}else{
			$('.categoryHoverformError').remove();
			flag = true;
		}
		if($("#key").val()==''){
			$('#keyHover').validationEngine('showPrompt', '* This field is required', 'error', true);
			flag = false;
		}else{
			$('.keyHoverformError').remove();
			flag = true;
		}
		if($("#filelist").html()==''){
			$('#imgHover').validationEngine('showPrompt', '* This field is required', 'error', true);
			flag = false;
		}else{
			$('.imgHoverformError').remove();
			flag = true;
		}

		//$("#category").validationEngine("showPrompt", "提示内容", "error", true);
		//$("#key").validationEngine("showPrompt", "提示内容", "error", true);
		if (flag) {
			uploader.start();
		}
	}

	var uploader = new plupload.Uploader({
		runtimes: 'html5,flash,silverlight,html4',
		browse_button: 'score-img-selector', // you can pass an id...
		container: document.getElementById('score-img-container'), // ... or DOM Element itself
		url: '${pageContext.request.contextPath}/upload2',
		flash_swf_url: '${pageContext.request.contextPath}/js/plugins/plupload/Moxie.swf',
		silverlight_xap_url: '${pageContext.request.contextPath}/js/plugins/plupload/Moxie.xap',

		init: {
			PostInit: function () {
				document.getElementById('filelist').innerHTML = '';
			},

			FilesAdded: function (up, files) {
				plupload.each(files, function (file) {
					document.getElementById('filelist').innerHTML += '<div id="' + file.id + '">' + file.name + ' (' + plupload.formatSize(file.size) + ') <b></b></div>';
					previewImage(file, function (path) {
						$('#'+file.id).append('<div class="thumbnail"><img src="'+ path +'" /></div>');
					});

				});

			},

			UploadProgress: function (up, file) {
				document.getElementById(file.id).getElementsByTagName('b')[0].innerHTML = '<span>' + file.percent + "%</span>";
			},

			FileUploaded: function (up, files, resp) {
				var data = JSON.parse(resp.response);
				$("#hidden-text").append('<input type="text" name="scorePages" value="'+data.name+'" >');


			},
			UploadComplete: function(up, files){
				var data = $("#form1").serializeArray()
				$("#content-wrapper").empty().load("${pageContext.request.contextPath}/score/addOrUpdate",data);
			}

		}
	});

	function previewImage(file, callback) {//file为plupload事件监听函数参数中的file对象,callback为预览图片准备完成的回调函数
		if (!file || !/image\//.test(file.type)) return; //确保文件是图片
		if (file.type == 'image/gif') {//gif使用FileReader进行预览,因为mOxie.Image只支持jpg和png
			var fr = new mOxie.FileReader();
			fr.onload = function () {
				callback(fr.result);
				fr.destroy();
				fr = null;
			}
			fr.readAsDataURL(file.getSource());
		} else {
			var preloader = new mOxie.Image();
			preloader.onload = function () {
				preloader.downsize(300, 300);//先压缩一下要预览的图片,宽300，高300
				var imgsrc = preloader.type == 'image/jpeg' ? preloader.getAsDataURL('image/jpeg', 80) : preloader.getAsDataURL(); //得到图片src,实质为一个base64编码的数据
				callback && callback(imgsrc); //callback传入的参数为预览图片的url
				preloader.destroy();
				preloader = null;
			};
			preloader.load(file.getSource());
		}
	}
</script>