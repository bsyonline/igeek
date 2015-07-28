<%--
  Created by IntelliJ IDEA.
  User: rolex
  Date: 2015/5/17
  Time: 8:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
  <title>Crown - premium responsive admin template for backend systems</title>
  <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" type="text/css" />
  <link href="${pageContext.request.contextPath}/css/fullcalendar.css" rel="stylesheet" type="text/css" />
  <link href="${pageContext.request.contextPath}/css/datatable.css" rel="stylesheet" type="text/css" />
  <link href="${pageContext.request.contextPath}/css/ui_custom.css" rel="stylesheet" type="text/css" />
  <link href="${pageContext.request.contextPath}/css/prettyPhoto.css" rel="stylesheet" type="text/css" />
  <link href="${pageContext.request.contextPath}/css/elfinder.css" rel="stylesheet" type="text/css" />
  <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/spinner/ui.spinner.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/spinner/jquery.mousewheel.js"></script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/charts/excanvas.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/charts/jquery.sparkline.min.js"></script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/uniform.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.cleditor.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine-en.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.tagsinput.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/autogrowtextarea.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.maskedinput.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.dualListBox.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/jquery.inputlimiter.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/chosen.jquery.min.js"></script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/wizard/jquery.form.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/wizard/jquery.validate.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/wizard/jquery.form.wizard.js"></script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/uploader/plupload.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/uploader/plupload.html5.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/uploader/plupload.html4.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/uploader/jquery.plupload.queue.js"></script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/datatable.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/tablesort.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/resizable.min.js"></script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.tipsy.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.collapsible.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.prettyPhoto.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.progress.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.timeentry.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.colorpicker.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.jgrowl.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.breadcrumbs.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.sourcerer.js"></script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/calendar.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/elfinder.min.js"></script>


  <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  --></head>

<body class="nobg loginPage">

<!-- Top fixed navigation -->
<div class="topNav">
  <div class="wrapper">
    <div class="userNav">
      <ul>
        <li><a href="#" title=""><img src="${pageContext.request.contextPath}/images/icons/topnav/mainWebsite.png" alt="" /><span>Main website</span></a></li>
        <li><a href="#" title=""><img src="${pageContext.request.contextPath}/images/icons/topnav/profile.png" alt="" /><span>Contact admin</span></a></li>
        <li><a href="#" title=""><img src="${pageContext.request.contextPath}/images/icons/topnav/messages.png" alt="" /><span>Support</span></a></li>
        <li><a href="login.html" title=""><img src="${pageContext.request.contextPath}/images/icons/topnav/settings.png" alt="" /><span>Settings</span></a></li>
      </ul>
    </div>
    <div class="clear"></div>
  </div>
</div>


<!-- Main content wrapper -->
<div class="loginWrapper">
  <div class="loginLogo"><img src="${pageContext.request.contextPath}/images/loginLogo.png" alt="" /></div>
  <div class="widget">
    <div class="title"><img src="${pageContext.request.contextPath}/images/icons/dark/files.png" alt="" class="titleIcon" /><h6>Login panel</h6></div>
    <form action="${pageContext.request.contextPath}/session" id="validate" class="form">
      <fieldset>
        <div class="formRow">
          <label for="login">Username:</label>
          <div class="loginInput"><input type="text" name="username" class="validate[required]" id="login" /></div>
          <div class="clear"></div>
        </div>

        <div class="formRow">
          <label for="pass">Password:</label>
          <div class="loginInput"><input type="password" name="password" class="validate[required]" id="pass" /></div>
          <div class="clear"></div>
        </div>

        <div class="loginControl">
          <div class="rememberMe"><input type="checkbox" id="remMe" name="remMe" /><label for="remMe">Remember me</label></div>
          <input type="submit" value="Log me in" class="dredB logMeIn" />
          <div class="clear"></div>
        </div>
      </fieldset>
    </form>
  </div>
</div>

<!-- Footer line -->
<div id="footer">
  <div class="wrapper">As usually all rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></div>
</div>


</body>
</html>
