<%--
  Created by IntelliJ IDEA.
  User: rolex
  Date: 2015/7/5
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div id="rightSide">

  <!-- Top fixed navigation -->
  <div class="topNav">
    <div class="wrapper">
      <div class="welcome"><a href="#" title=""><img src="${pageContext.request.contextPath}/images/userPic.png" alt="" /></a><span>Howdy, Eugene!</span></div>
      <div class="userNav">
        <ul>
          <li><a href="#" title=""><img src="${pageContext.request.contextPath}/images/icons/topnav/profile.png" alt="" /><span>Profile</span></a></li>
          <li><a href="#" title=""><img src="${pageContext.request.contextPath}/images/icons/topnav/tasks.png" alt="" /><span>Tasks</span></a></li>
          <li class="dd"><a title=""><img src="${pageContext.request.contextPath}/images/icons/topnav/messages.png" alt="" /><span>Messages</span><span class="numberTop">8</span></a>
            <ul class="userDropdown">
              <li><a href="#" title="" class="sAdd">new message</a></li>
              <li><a href="#" title="" class="sInbox">inbox</a></li>
              <li><a href="#" title="" class="sOutbox">outbox</a></li>
              <li><a href="#" title="" class="sTrash">trash</a></li>
            </ul>
          </li>
          <li><a href="#" title=""><img src="${pageContext.request.contextPath}/images/icons/topnav/settings.png" alt="" /><span>Settings</span></a></li>
          <li><a href="login.html" title=""><img src="${pageContext.request.contextPath}/images/icons/topnav/logout.png" alt="" /><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clear"></div>
    </div>
  </div>

  <!-- Responsive header -->
  <div class="resp">
    <div class="respHead">
      <a href="index.html" title=""><img src="${pageContext.request.contextPath}/images/loginLogo.png" alt="" /></a>
    </div>

    <div class="cLine"></div>
    <div class="smalldd">
      <span class="goTo"><img src="${pageContext.request.contextPath}/images/icons/light/home.png" alt="" />Dashboard</span>
      <ul class="smallDropdown">
        <li><a href="index.html" title=""><img src="${pageContext.request.contextPath}/images/icons/light/home.png" alt="" />Dashboard</a></li>
        <li><a href="charts.html" title=""><img src="${pageContext.request.contextPath}/images/icons/light/stats.png" alt="" />Statistics and charts</a></li>
        <li><a href="#" title="" class="exp"><img src="${pageContext.request.contextPath}/images/icons/light/pencil.png" alt="" />Forms stuff<strong>4</strong></a>
          <ul>
            <li><a href="forms.html" title="">Form elements</a></li>
            <li><a href="form_validation.html" title="">Validation</a></li>
            <li><a href="form_editor.html" title="">WYSIWYG and file uploader</a></li>
            <li class="last"><a href="form_wizards.html" title="">Wizards</a></li>
          </ul>
        </li>
        <li><a href="ui_elements.html" title=""><img src="${pageContext.request.contextPath}/images/icons/light/users.png" alt="" />Interface elements</a></li>
        <li><a href="tables.html" title="" class="exp"><img src="${pageContext.request.contextPath}/images/icons/light/frames.png" alt="" />Tables<strong>3</strong></a>
          <ul>
            <li><a href="table_static.html" title="">Static tables</a></li>
            <li><a href="table_dynamic.html" title="">Dynamic table</a></li>
            <li class="last"><a href="table_sortable_resizable.html" title="">Sortable &amp; resizable tables</a></li>
          </ul>
        </li>
        <li><a href="#" title="" class="exp"><img src="${pageContext.request.contextPath}/images/icons/light/fullscreen.png" alt="" />Widgets and grid<strong>2</strong></a>
          <ul>
            <li><a href="widgets.html" title="">Widgets</a></li>
            <li class="last"><a href="grid.html" title="">Grid</a></li>
          </ul>
        </li>
        <li><a href="#" title="" class="exp"><img src="${pageContext.request.contextPath}/images/icons/light/alert.png" alt="" />Error pages<strong>6</strong></a>
          <ul class="sub">
            <li><a href="403.html" title="">403 page</a></li>
            <li><a href="404.html" title="">404 page</a></li>
            <li><a href="405.html" title="">405 page</a></li>
            <li><a href="500.html" title="">500 page</a></li>
            <li><a href="503.html" title="">503 page</a></li>
            <li class="last"><a href="offline.html" title="">Website is offline</a></li>
          </ul>
        </li>
        <li><a href="file_manager.html" title=""><img src="${pageContext.request.contextPath}/images/icons/light/files.png" alt="" />File manager</a></li>
        <li><a href="#" title="" class="exp"><img src="${pageContext.request.contextPath}/images/icons/light/create.png" alt="" />Other pages<strong>3</strong></a>
          <ul>
            <li><a href="typography.html" title="">Typography</a></li>
            <li><a href="calendar.html" title="">Calendar</a></li>
            <li class="last"><a href="gallery.html" title="">Gallery</a></li>
          </ul>
        </li>
      </ul>
    </div>
    <div class="cLine"></div>
  </div>

  <!-- Title area -->
  <div class="titleArea">
    <div class="wrapper">
      <div class="pageTitle">
        <h5>Dashboard</h5>
        <span>Do your layouts deserve better than Lorem Ipsum.</span>
      </div>
      <div class="middleNav">
        <ul>
          <li class="mUser"><a title=""><span class="adds"></span></a>
            <ul class="mSub1">
              <li><a href="#" title="" onclick="add(1)">Add user</a></li>
              <li><a href="#" title="" onclick="add(2)">Add Category</a></li>
              <li><a href="#" title="" onclick="add(3)">Add Key</a></li>
              <li><a href="#" title="" onclick="add(4)">Add Chord</a></li>
              <li><a href="#" title="" onclick="add(5)">Add Score</a></li>
              <li><a href="#" title="" onclick="add(6)">Add Sang</a></li>
              <li><a href="#" title="" onclick="add(7)">Add Type</a></li>
              <li><a href="#" title="" onclick="add(8)">Add Audio</a></li>
              <li><a href="#" title="" onclick="add(9)">Add Video</a></li>
            </ul>
          </li>
          <li class="mMessages"><a title=""><span class="messages"></span></a>
            <ul class="mSub2">
              <li><a href="#" title="">New tickets<span class="numberRight">8</span></a></li>
              <li><a href="#" title="">Pending tickets<span class="numberRight">12</span></a></li>
              <li><a href="#" title="">Closed tickets</a></li>
            </ul>
          </li>
          <li class="mFiles"><a href="#" title="Or you can use a tooltip" class="tipN"><span class="files"></span></a></li>
          <li class="mOrders"><a title=""><span class="orders"></span><span class="numberMiddle">8</span></a>
            <ul class="mSub4">
              <li><a href="#" title="">Pending uploads</a></li>
              <li><a href="#" title="">Statistics</a></li>
              <li><a href="#" title="">Trash</a></li>
            </ul>
          </li>
        </ul>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
  </div>

  <div class="line"></div>

  <!-- Page statistics and control buttons area -->
  <div class="statsRow">
    <div class="wrapper">
      <div class="controlB">
        <ul>
          <li><a href="#" title=""><img src="${pageContext.request.contextPath}/images/icons/control/32/plus.png" alt="" /><span>Add new session</span></a></li>
          <li><a href="#" title=""><img src="${pageContext.request.contextPath}/images/icons/control/32/database.png" alt="" /><span>New DB entry</span></a></li>
          <li><a href="#" title=""><img src="${pageContext.request.contextPath}/images/icons/control/32/hire-me.png" alt="" /><span>Add new user</span></a></li>
          <li><a href="#" title=""><img src="${pageContext.request.contextPath}/images/icons/control/32/statistics.png" alt="" /><span>Check statistics</span></a></li>
          <li><a href="#" title=""><img src="${pageContext.request.contextPath}/images/icons/control/32/comment.png" alt="" /><span>Review comments</span></a></li>
          <li><a href="#" title=""><img src="${pageContext.request.contextPath}/images/icons/control/32/order-149.png" alt="" /><span>Check orders</span></a></li>
        </ul>
        <div class="clear"></div>
      </div>
    </div>
  </div>

  <div class="line"></div>

  <!-- Main content wrapper -->
  <div class="wrapper" id="content-wrapper">

    <!-- Note -->
    <div class="nNote nInformation hideit">
      <p><strong>INFORMATION: </strong>Top buttons area has 3 versions - 2 kinds of buttons and statistics. All of them could be viewed on <a href="ui_elements.html" title="">Interface elements page</a></p>
    </div>

    <!-- Chart -->
    <div class="widget chartWrapper">
      <div class="title"><img src="${pageContext.request.contextPath}/images/icons/dark/stats.png" alt="" class="titleIcon" /><h6>Chart</h6></div>
      <div class="body"><div class="chart"></div></div>
    </div>

    <!-- Widgets -->
    <div class="widgets">
      <div class="oneTwo">

        <!-- Partners list widget -->
        <div class="widget">
          <div class="title"><img src="${pageContext.request.contextPath}/images/icons/dark/users.png" alt="" class="titleIcon" /><h6>Partners list</h6></div>
          <ul class="partners">
            <li>
              <a href="#" title="" class="floatL"><img src="${pageContext.request.contextPath}/images/user.png" alt="" /></a>
              <div class="pInfo">
                <a href="#" title=""><strong>Dave Armstrong</strong></a>
                <i>Creative director at Google Inc. Zurich</i>
              </div>
              <div class="pLinks">
                <a href="#" title="Direct call" class="tipW"><img src="${pageContext.request.contextPath}/images/icons/pSkype.png" alt="" /></a>
                <a href="#" title="Send an email" class="tipW"><img src="${pageContext.request.contextPath}/images/icons/pEmail.png" alt="" /></a>
              </div>
              <div class="clear"></div>
            </li>
            <li>
              <a href="#" title="" class="floatL"><img src="${pageContext.request.contextPath}/images/user.png" alt="" /></a>
              <div class="pInfo">
                <a href="#" title=""><strong>Nora McDonald</strong></a>
                <i>Lead developer, Alaska</i>
              </div>
              <div class="pLinks">
                <a href="#" title="Direct call" class="tipW"><img src="${pageContext.request.contextPath}/images/icons/pSkype.png" alt="" /></a>
                <a href="#" title="Send an email" class="tipW"><img src="${pageContext.request.contextPath}/images/icons/pEmail.png" alt="" /></a>
              </div>
              <div class="clear"></div>
            </li>
            <li>
              <a href="#" title="" class="floatL"><img src="${pageContext.request.contextPath}/images/user.png" alt="" /></a>
              <div class="pInfo">
                <a href="#" title=""><strong>Natalie Zimmerman</strong></a>
                <i>Actually it's a guy. Yeah, unexpected</i>
              </div>
              <div class="pLinks">
                <a href="#" title="Direct call" class="tipW"><img src="${pageContext.request.contextPath}/images/icons/pSkype.png" alt="" /></a>
                <a href="#" title="Send an email" class="tipW"><img src="${pageContext.request.contextPath}/images/icons/pEmail.png" alt="" /></a>
              </div>
              <div class="clear"></div>
            </li>
            <li>
              <a href="#" title="" class="floatL"><img src="${pageContext.request.contextPath}/images/user.png" alt="" /></a>
              <div class="pInfo">
                <a href="#" title=""><strong>Maria Paradeux</strong></a>
                <i>Very hot secretary, Playboy rockstar</i>
              </div>
              <div class="pLinks">
                <a href="#" title="Direct call" class="tipW"><img src="${pageContext.request.contextPath}/images/icons/pSkype.png" alt="" /></a>
                <a href="#" title="Send an email" class="tipW"><img src="${pageContext.request.contextPath}/images/icons/pEmail.png" alt="" /></a>
              </div>
              <div class="clear"></div>
            </li>
          </ul>
        </div>

        <!-- Website stats widget -->
        <div class="widget">
          <div class="title"><img src="${pageContext.request.contextPath}/images/icons/dark/stats.png" alt="" class="titleIcon" /><h6>Website statistics</h6></div>
          <table cellpadding="0" cellspacing="0" width="100%" class="sTable">
            <thead>
            <tr>
              <td width="80">Amount</td>
              <td>Description</td>
              <td width="80">Changes</td>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td align="center"><a href="#" title="" class="webStatsLink">980</a></td>
              <td>returned visitors</td>
              <td><span class="statsPlus">0.32%</span></td>
            </tr>
            <tr>
              <td align="center"><a href="#" title="" class="webStatsLink">1545</a></td>
              <td>new registrations</td>
              <td><span class="statsMinus">82.3%</span></td>
            </tr>
            <tr>
              <td align="center"><a href="#" title="" class="webStatsLink">457</a></td>
              <td>new affiliates registrations</td>
              <td><span class="statsPlus">100%</span></td>
            </tr>
            <tr>
              <td align="center"><a href="#" title="" class="webStatsLink">9543</a></td>
              <td>new visitors</td>
              <td><span class="statsPlus">4.99%</span></td>
            </tr>
            <tr>
              <td align="center"><a href="#" title="" class="webStatsLink">354</a></td>
              <td>new pending comments</td>
              <td><span class="statsMinus">9.67%</span></td>
            </tr>
            </tbody>
          </table>
        </div>

        <!-- Latest update widget -->
        <div class="widget">
          <div class="title"><img src="${pageContext.request.contextPath}/images/icons/dark/refresh4.png" alt="" class="titleIcon" /><h6>Latest updates</h6></div>

          <div class="updates">
            <div class="newUpdate">
              <div class="uDone">
                <a href="#" title=""><strong>A new server is on the board!</strong></a>
                <span>We've just set up a new server. Our gurus ...</span>
              </div>
              <div class="uDate"><span class="uDay">08</span>feb</div>
              <div class="clear"></div>
            </div>

            <div class="newUpdate">
                            <span class="uAlert">
                                <a href="#" title=""><strong>[ URGENT ] ex.ua was closed by government</strong></a>
                                <span>But already everything was solved. It will ...</span>
                            </span>
              <span class="uDate"><span class="uDay">08</span>feb</span>
              <div class="clear"></div>
            </div>

            <div class="newUpdate">
                            <span class="uDone">
                                <a href="#" title=""><strong>The goal was reached!</strong></a>
                                <span>We just passed 1000 sales! Congrats to all</span>
                            </span>
              <span class="uDate"><span class="uDay">07</span>feb</span>
              <div class="clear"></div>
            </div>

            <div class="newUpdate">
                            <span class="uNotice">
                                <a href="#" title=""><strong>Meat a new team member - Don Corleone</strong></a>
                                <span>Very dyplomatic and flexible sales manager</span>
                            </span>
              <span class="uDate"><span class="uDay">06</span>feb</span>
              <div class="clear"></div>
            </div>

          </div>
        </div>
      </div>

      <!-- 2 columns widgets -->
      <div class="oneTwo">

        <!-- Search -->
        <div class="searchWidget">
          <form action="">
            <input type="text" name="search" placeholder="Enter search text..." />
            <input type="submit" name="find" value="" />
          </form>
        </div>

        <!-- Purchase info widget -->
        <div class="widget">
          <div class="title">
            <img src="${pageContext.request.contextPath}/images/icons/dark/money.png" alt="" class="titleIcon" />
            <h6>Purchase info</h6>
            <div class="topIcons">
              <a href="#" class="tipS" title="Download statement"><img src="${pageContext.request.contextPath}/images/icons/downloadTop.png" alt="" /></a>
              <a href="#" class="tipS" title="Print invoice"><img src="${pageContext.request.contextPath}/images/icons/printTop.png" alt="" /></a>
              <a href="#" class="tipS" title="Edit"><img src="${pageContext.request.contextPath}/images/icons/editTop.png" alt="" /></a>
            </div>
          </div>
          <div class="newOrder">
            <div class="userRow">
              <a href="#" title=""><img src="${pageContext.request.contextPath}/images/user.png" alt="" class="floatL" /></a>
              <ul class="leftList">
                <li><a href="#" title=""><strong>Julia Maria Shine</strong></a></li>
                <li>Order status:</li>
              </ul>
              <ul class="rightList">
                <li><a href="#" title=""> <strong>#2112</strong></a></li>
                <li class="orderIcons"><span class="oUnfinished"></span><span class="oShipped tipN" title="Shipped on Feb 2nd, 2012"></span><span class="oPaid tipN" title="Paid on Feb 1st, 2012"></span></li>
              </ul>
              <div class="clear"></div>
            </div>

            <div class="cLine"></div>

            <div class="orderRow">
              <ul class="leftList">
                <li>Date and time:</li>
                <li>Subtotal amount:</li>
                <li>Taxes</li>
              </ul>
              <ul class="rightList">
                <li><strong>Jan 31, 2012</strong> |  12:51</li>
                <li><strong class="green">$5,514.36</strong></li>
                <li><strong class="orange">- $1,158.54</strong></li>
              </ul>
              <div class="clear"></div>
            </div>

            <div class="cLine"></div>
            <div class="totalAmount"><h6 class="floatL blue">Total:</h6><h6 class="floatR blue">$12,157.99</h6><div class="clear"></div></div>
          </div>
        </div>

        <!-- New users widget -->
        <div class="widget">
          <div class="title"><img src="${pageContext.request.contextPath}/images/icons/dark/add.png" alt="" class="titleIcon" /><h6>New users</h6></div>
          <div class="wUserInfo">
            <a href="#" title="" class="wUserPic"><img src="${pageContext.request.contextPath}/images/user.png" alt="" /></a>
            <ul class="leftList">
              <li><a href="#" title=""><strong>Eugene Kopyov</strong></a></li>
              <li><a href="#" title="">eugene@kopyov.com</a></li>
            </ul>
            <ul class="rightList">
              <li><a href="#" class="green"><strong>$12,248.21</strong></a></li>
              <li><a href="#" class="red">12 purchases</a></li>
            </ul>
            <div class="clear"></div>
          </div>

          <div class="cLine"></div>

          <div class="wUserInfo">
            <a href="#" title="" class="wUserPic"><img src="${pageContext.request.contextPath}/images/user.png" alt="" /></a>
            <ul class="leftList">
              <li><a href="#" title=""><strong>Valery Dow</strong></a></li>
              <li><a href="#" title="">valery@dow.com</a></li>
            </ul>
            <ul class="rightList">
              <li><a href="#" class="green"><strong>$4,048</strong></a></li>
              <li><a href="#" class="red">96 purchases</a></li>
            </ul>
            <div class="clear"></div>
          </div>

          <div class="cLine"></div>

          <div class="wUserInfo">
            <a href="#" title="" class="wUserPic"><img src="${pageContext.request.contextPath}/images/user.png" alt="" /></a>
            <ul class="leftList">
              <li><a href="#" title=""><strong>Liam Paterson</strong></a></li>
              <li><a href="#" title="">liam@paterson.com</a></li>
            </ul>
            <ul class="rightList">
              <li><a href="#" class="green"><strong>$94,127.20</strong></a></li>
              <li><a href="#" class="red">128 purchases</a></li>
            </ul>
            <div class="clear"></div>
          </div>

          <div class="cLine"></div>

          <div class="wUserInfo">
            <a href="#" title="" class="wUserPic"><img src="${pageContext.request.contextPath}/images/user.png" alt="" /></a>
            <ul class="leftList">
              <li><a href="#" title=""><strong>Steve Downey</strong></a></li>
              <li><a href="#" title="">steve@downey.com</a></li>
            </ul>
            <ul class="rightList">
              <li><a href="#" class="green"><strong>$2,483.02</strong></a></li>
              <li><a href="#" class="red">0 purchases</a></li>
            </ul>
            <div class="clear"></div>
          </div>
        </div>

        <!-- My tasks table widget -->
        <div class="widget">
          <div class="title"><img src="${pageContext.request.contextPath}/images/icons/dark/timer.png" alt="" class="titleIcon" /><h6>My tasks</h6><div class="num"><a href="#" class="blueNum">+245</a></div></div>
          <table cellpadding="0" cellspacing="0" width="100%" class="sTable taskWidget">
            <thead>
            <tr>
              <td>Description</td>
              <td width="100">Status</td>
              <td width="60">Acts</td>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td class="taskPr"><a href="#" title="">Finish design</a></td>
              <td><span class="green f11">in progress</span></td>
              <td class="actBtns"><a href="#" title="Update" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/edit.png" alt="" /></a><a href="#" title="Remove" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/remove.png" alt="" /></a></td>
            </tr>
            <tr>
              <td class="taskP"><a href="#" title="">Get HTML done</a></td>
              <td><span class="lGrey f11">pending</span></td>
              <td class="actBtns"><a href="#" title="Update" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/edit.png" alt="" /></a><a href="#" title="Remove" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/remove.png" alt="" /></a></td>
            </tr>
            <tr>
              <td class="taskP"><a href="#" title="">Connect jQuery stuff</a></td>
              <td><span class="lGrey f11">pending</span></td>
              <td class="actBtns"><a href="#" title="Update" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/edit.png" alt="" /></a><a href="#" title="Remove" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/remove.png" alt="" /></a></td>
            </tr>
            <tr>
              <td class="taskD"><a href="#" title="">Start beta testing</a></td>
              <td><span class="red f11">done</span></td>
              <td class="actBtns"><a href="#" title="Update" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/edit.png" alt="" /></a><a href="#" title="Remove" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/remove.png" alt="" /></a></td>
            </tr>
            </tbody>
          </table>
        </div>
        <div class="clear"></div>

      </div>
      <div class="clear"></div>
    </div>

    <!-- Events calendar -->
    <div class="widget">
      <div class="title"><img src="${pageContext.request.contextPath}/images/icons/dark/monthCalendar.png" alt="" class="titleIcon" /><h6>Events</h6></div>
      <div class="calendar"></div>
    </div>

    <!-- Media table -->
    <div class="widget">
      <div class="title"><span class="titleIcon"><input type="checkbox" id="titleCheck" name="titleCheck" /></span><h6>Media table</h6></div>
      <table cellpadding="0" cellspacing="0" width="100%" class="sTable withCheck mTable" id="checkAll">
        <thead>
        <tr>
          <td><img src="${pageContext.request.contextPath}/images/icons/tableArrows.png" alt="" /></td>
          <td>Image</td>
          <td class="sortCol"><div>Description<span></span></div></td>
          <td class="sortCol"><div>Date<span></span></div></td>
          <td>File info</td>
          <td>Actions</td>
        </tr>
        </thead>
        <tfoot>
        <tr>
          <td colspan="6">
            <div class="itemActions">
              <label>Apply action:</label>
              <select>
                <option value="">Select action...</option>
                <option value="Edit">Edit</option>
                <option value="Delete">Delete</option>
                <option value="Move">Move somewhere</option>
              </select>
            </div>
            <div class="tPagination">
              <ul>
                <li class="prev"><a href="#" title=""></a></li>
                <li><a href="#" title="">1</a></li>
                <li><a href="#" title="">2</a></li>
                <li><a href="#" title="">3</a></li>
                <li><a href="#" title="">4</a></li>
                <li><a href="#" title="">5</a></li>
                <li><a href="#" title="">6</a></li>
                <li>...</li>
                <li><a href="#" title="">20</a></li>
                <li class="next"><a href="#" title=""></a></li>
              </ul>
            </div>
          </td>
        </tr>
        </tfoot>
        <tbody>
        <tr>
          <td><input type="checkbox" id="titleCheck2" name="checkRow" /></td>
          <td align="center"><a href="${pageContext.request.contextPath}/images/big.png" title="" rel="lightbox"><img src="${pageContext.request.contextPath}/images/user.png" alt="" /></a></td>
          <td><a href="#" title="">Image1 description</a></td>
          <td align="center">Feb 12, 2012. 12:28</td>
          <td class="fileInfo"><span><strong>Size:</strong> 215 Kb</span><span><strong>Format:</strong> .jpg</span></td>
          <td class="actBtns"><a href="#" title="Update" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/edit.png" alt="" /></a><a href="#" title="Remove" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/remove.png" alt="" /></a></td>
        </tr>
        <tr>
          <td><input type="checkbox" id="titleCheck3" name="checkRow" /></td>
          <td align="center"><a href="${pageContext.request.contextPath}/images/big.png" title="" rel="lightbox"><img src="${pageContext.request.contextPath}/images/user.png" alt="" /></a></td>
          <td><a href="#" title="">Image2 description</a></td>
          <td align="center">Feb 12, 2012. 12:30</td>
          <td class="fileInfo"><span><strong>Size:</strong> 215 Kb</span><span><strong>Format:</strong> .jpg</span></td>
          <td class="actBtns"><a href="#" title="Update" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/edit.png" alt="" /></a><a href="#" title="Remove" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/remove.png" alt="" /></a></td>
        </tr>
        <tr>
          <td><input type="checkbox" id="titleCheck4" name="checkRow" /></td>
          <td align="center"><a href="${pageContext.request.contextPath}/images/big.png" title="" rel="lightbox"><img src="${pageContext.request.contextPath}/images/user.png" alt="" /></a></td>
          <td><a href="#" title="">Image3 description</a></td>
          <td align="center">Feb 11, 2012. 02:30</td>
          <td class="fileInfo"><span><strong>Size:</strong> 215 Kb</span><span><strong>Format:</strong> .jpg</span></td>
          <td class="actBtns"><a href="#" title="Update" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/edit.png" alt="" /></a><a href="#" title="Remove" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/remove.png" alt="" /></a></td>
        </tr>
        <tr>
          <td><input type="checkbox" id="titleCheck5" name="checkRow" /></td>
          <td align="center"><a href="${pageContext.request.contextPath}/images/big.png" title="" rel="lightbox"><img src="${pageContext.request.contextPath}/images/user.png" alt="" /></a></td>
          <td><a href="#" title="">Image4 description</a></td>
          <td align="center">Feb 12, 2012. 12:28</td>
          <td class="fileInfo"><span><strong>Size:</strong> 215 Kb</span><span><strong>Format:</strong> .jpg</span></td>
          <td class="actBtns"><a href="#" title="Update" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/edit.png" alt="" /></a><a href="#" title="Remove" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/remove.png" alt="" /></a></td>
        </tr>
        <tr>
          <td><input type="checkbox" id="titleCheck6" name="checkRow" /></td>
          <td align="center"><a href="${pageContext.request.contextPath}/images/big.png" title="" rel="lightbox"><img src="${pageContext.request.contextPath}/images/user.png" alt="" /></a></td>
          <td><a href="#" title="">Image5 description</a></td>
          <td align="center">Feb 12, 2012. 12:28</td>
          <td class="fileInfo"><span><strong>Size:</strong> 215 Kb</span><span><strong>Format:</strong> .jpg</span></td>
          <td class="actBtns"><a href="#" title="Update" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/edit.png" alt="" /></a><a href="#" title="Remove" class="tipS"><img src="${pageContext.request.contextPath}/images/icons/remove.png" alt="" /></a></td>
        </tr>
        </tbody>
      </table>
    </div>

    <!-- Dynamic table -->
    <div class="widget">
      <div class="title"><img src="${pageContext.request.contextPath}/images/icons/dark/full2.png" alt="" class="titleIcon" /><h6>Dynamic table</h6></div>
      <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
        <thead>
        <tr>
          <th>Rendering engine</th>
          <th>Browser</th>
          <th>Platform(s)</th>
          <th>Engine version</th>
        </tr>
        </thead>
        <tbody>
        <tr class="gradeX">
          <td>Trident</td>
          <td>Internet
            Explorer 4.0</td>
          <td>Win 95+</td>
          <td class="center">4</td>
        </tr>
        <tr class="gradeC">
          <td>Trident</td>
          <td>Internet
            Explorer 5.0</td>
          <td>Win 95+</td>
          <td class="center">5</td>
        </tr>
        <tr class="gradeA">
          <td>Trident</td>
          <td>Internet
            Explorer 5.5</td>
          <td>Win 95+</td>
          <td class="center">5.5</td>
        </tr>
        <tr class="gradeA">
          <td>Trident</td>
          <td>Internet
            Explorer 6</td>
          <td>Win 98+</td>
          <td class="center">6</td>
        </tr>
        <tr class="gradeA">
          <td>Trident</td>
          <td>Internet Explorer 7</td>
          <td>Win XP SP2+</td>
          <td class="center">7</td>
        </tr>
        <tr class="gradeA">
          <td>Trident</td>
          <td>AOL browser (AOL desktop)</td>
          <td>Win XP</td>
          <td class="center">6</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Firefox 1.0</td>
          <td>Win 98+ / OSX.2+</td>
          <td class="center">1.7</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Firefox 1.5</td>
          <td>Win 98+ / OSX.2+</td>
          <td class="center">1.8</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Firefox 2.0</td>
          <td>Win 98+ / OSX.2+</td>
          <td class="center">1.8</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Firefox 3.0</td>
          <td>Win 2k+ / OSX.3+</td>
          <td class="center">1.9</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Camino 1.0</td>
          <td>OSX.2+</td>
          <td class="center">1.8</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Camino 1.5</td>
          <td>OSX.3+</td>
          <td class="center">1.8</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Netscape 7.2</td>
          <td>Win 95+ / Mac OS 8.6-9.2</td>
          <td class="center">1.7</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Netscape Browser 8</td>
          <td>Win 98SE+</td>
          <td class="center">1.7</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Netscape Navigator 9</td>
          <td>Win 98+ / OSX.2+</td>
          <td class="center">1.8</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Mozilla 1.0</td>
          <td>Win 95+ / OSX.1+</td>
          <td class="center">1</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Mozilla 1.1</td>
          <td>Win 95+ / OSX.1+</td>
          <td class="center">1.1</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Mozilla 1.2</td>
          <td>Win 95+ / OSX.1+</td>
          <td class="center">1.2</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Mozilla 1.3</td>
          <td>Win 95+ / OSX.1+</td>
          <td class="center">1.3</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Mozilla 1.4</td>
          <td>Win 95+ / OSX.1+</td>
          <td class="center">1.4</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Mozilla 1.5</td>
          <td>Win 95+ / OSX.1+</td>
          <td class="center">1.5</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Mozilla 1.6</td>
          <td>Win 95+ / OSX.1+</td>
          <td class="center">1.6</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Mozilla 1.7</td>
          <td>Win 98+ / OSX.1+</td>
          <td class="center">1.7</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Mozilla 1.8</td>
          <td>Win 98+ / OSX.1+</td>
          <td class="center">1.8</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Seamonkey 1.1</td>
          <td>Win 98+ / OSX.2+</td>
          <td class="center">1.8</td>
        </tr>
        <tr class="gradeA">
          <td>Gecko</td>
          <td>Epiphany 2.20</td>
          <td>Gnome</td>
          <td class="center">1.8</td>
        </tr>
        <tr class="gradeA">
          <td>Webkit</td>
          <td>Safari 1.2</td>
          <td>OSX.3</td>
          <td class="center">125.5</td>
        </tr>
        <tr class="gradeA">
          <td>Webkit</td>
          <td>Safari 1.3</td>
          <td>OSX.3</td>
          <td class="center">312.8</td>
        </tr>
        <tr class="gradeA">
          <td>Webkit</td>
          <td>Safari 2.0</td>
          <td>OSX.4+</td>
          <td class="center">419.3</td>
        </tr>
        <tr class="gradeA">
          <td>Webkit</td>
          <td>Safari 3.0</td>
          <td>OSX.4+</td>
          <td class="center">522.1</td>
        </tr>
        <tr class="gradeA">
          <td>Webkit</td>
          <td>OmniWeb 5.5</td>
          <td>OSX.4+</td>
          <td class="center">420</td>
        </tr>
        <tr class="gradeA">
          <td>Webkit</td>
          <td>iPod Touch / iPhone</td>
          <td>iPod</td>
          <td class="center">420.1</td>
        </tr>
        <tr class="gradeA">
          <td>Webkit</td>
          <td>S60</td>
          <td>S60</td>
          <td class="center">413</td>
        </tr>
        <tr class="gradeA">
          <td>Presto</td>
          <td>Opera 7.0</td>
          <td>Win 95+ / OSX.1+</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeA">
          <td>Presto</td>
          <td>Opera 7.5</td>
          <td>Win 95+ / OSX.2+</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeA">
          <td>Presto</td>
          <td>Opera 8.0</td>
          <td>Win 95+ / OSX.2+</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeA">
          <td>Presto</td>
          <td>Opera 8.5</td>
          <td>Win 95+ / OSX.2+</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeA">
          <td>Presto</td>
          <td>Opera 9.0</td>
          <td>Win 95+ / OSX.3+</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeA">
          <td>Presto</td>
          <td>Opera 9.2</td>
          <td>Win 88+ / OSX.3+</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeA">
          <td>Presto</td>
          <td>Opera 9.5</td>
          <td>Win 88+ / OSX.3+</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeA">
          <td>Presto</td>
          <td>Opera for Wii</td>
          <td>Wii</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeA">
          <td>Presto</td>
          <td>Nokia N800</td>
          <td>N800</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeA">
          <td>Presto</td>
          <td>Nintendo DS browser</td>
          <td>Nintendo DS</td>
          <td class="center">8.5</td>
        </tr>
        <tr class="gradeC">
          <td>KHTML</td>
          <td>Konqureror 3.1</td>
          <td>KDE 3.1</td>
          <td class="center">3.1</td>
        </tr>
        <tr class="gradeA">
          <td>KHTML</td>
          <td>Konqureror 3.3</td>
          <td>KDE 3.3</td>
          <td class="center">3.3</td>
        </tr>
        <tr class="gradeA">
          <td>KHTML</td>
          <td>Konqureror 3.5</td>
          <td>KDE 3.5</td>
          <td class="center">3.5</td>
        </tr>
        <tr class="gradeX">
          <td>Tasman</td>
          <td>Internet Explorer 4.5</td>
          <td>Mac OS 8-9</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeC">
          <td>Tasman</td>
          <td>Internet Explorer 5.1</td>
          <td>Mac OS 7.6-9</td>
          <td class="center">1</td>
        </tr>
        <tr class="gradeC">
          <td>Tasman</td>
          <td>Internet Explorer 5.2</td>
          <td>Mac OS 8-X</td>
          <td class="center">1</td>
        </tr>
        <tr class="gradeA">
          <td>Misc</td>
          <td>NetFront 3.1</td>
          <td>Embedded devices</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeA">
          <td>Misc</td>
          <td>NetFront 3.4</td>
          <td>Embedded devices</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeX">
          <td>Misc</td>
          <td>Dillo 0.8</td>
          <td>Embedded devices</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeX">
          <td>Misc</td>
          <td>Links</td>
          <td>Text only</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeX">
          <td>Misc</td>
          <td>Lynx</td>
          <td>Text only</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeC">
          <td>Misc</td>
          <td>IE Mobile</td>
          <td>Windows Mobile 6</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeC">
          <td>Misc</td>
          <td>PSP browser</td>
          <td>PSP</td>
          <td class="center">-</td>
        </tr>
        <tr class="gradeU">
          <td>Other browsers</td>
          <td>All others</td>
          <td>-</td>
          <td class="center">-</td>
        </tr>
        </tbody>
      </table>
    </div>

  </div>
</body>
</html>
