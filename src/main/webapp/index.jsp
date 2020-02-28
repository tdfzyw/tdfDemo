﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head id="Head1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>基于SSM框架的后台权限管理系统</title>
    <link href="static/css/default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="static/adminjs/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="static/adminjs/themes/icon.css" />
    <script type="text/javascript" src="static/adminjs/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="static/adminjs/jquery.easyui.1.2.6.min.js"></script>
	<script type="text/javascript" src='static/adminjs/index.js'> </script>
</head>
<body class="easyui-layout" style="overflow-y: hidden"  fit="true"   scroll="no">
<noscript>
	<div style=" position:absolute; z-index:100000; height:2046px;top:0px;left:0px; width:100%; background:white; text-align:center;">
	    <img src="static/images/noscript.gif" alt='抱歉，请开启脚本支持！' />
	</div>
</noscript>

<div id="loading-mask" style="position:absolute;top:0px; left:0px; width:100%; height:100%; background:#D2E0F2; z-index:20000">
<div id="pageloading" style="position:absolute; top:50%; left:50%; margin:-120px 0px 0px -120px; text-align:center;  border:2px solid #8DB2E3; width:200px; height:40px;  font-size:14px;padding:10px; font-weight:bold; background:#fff; color:#15428B;"> 
    <img src="static/images/loading.gif" align="absmiddle" /> 正在加载中,请稍候...</div>
</div>

    <div region="north" split="true" border="false" style="overflow: hidden; height: 30px;
        background: url(static/images/layout-browser-hd-bg.gif) #7f99be repeat-x center 50%;
        line-height: 20px;color: #fff; font-family: Verdana, 微软雅黑,黑体">
        <span style="float:right; padding-right:20px;" class="head">欢迎 <span id="user_name"></span> <a href="#" id="editpass">修改密码</a> <a href="#" id="loginOut">安全退出</a></span>
        <span style="padding-left:10px; font-size: 16px; "><img src="static/images/blocks.gif" width="20" height="20" align="absmiddle" /> 管理系统</span>
    </div>
    <div region="south" split="true" style="height: 30px; background: #D2E0F2; ">
        <div class="footer">基于easyui的权限管理系统v1.0</div>
    </div>
    <div region="west" split="true"  title="导航菜单" style="width:180px;" id="west">
			<div id="nav">
		<!--  导航内容 -->
			</div>
    </div>
    <div id="mainPanle" region="center" style="background: #eee; overflow-y:hidden">
        <div id="tabs" class="easyui-tabs"  fit="true" border="false" >
			<div title="欢迎使用" style="padding:20px;overflow:hidden; color:red; " >
				<h1 style="font-size:24px;"></h1>
<h1 style="font-size:24px;"></h1>
<h1 style="font-size:24px;"></h1>
				<h1 style="font-size:24px;"></h1>
			</div>
		</div>
    </div>
    
    <!--修改密码窗口-->
    <!--修改密码窗口-->
	<div id="w" class="easyui-dialog">
	    <div class="easyui-layout" fit="true">
	        <div region="center" border="false" style="padding: 10px; background: #fff;">
	            <table cellpadding=3>
	                <tr>
	                    <td>旧密码：</td>
	                    <td><input id="txtOldPass" type="password" class="txt01" /></td>
	                </tr>
	                <tr>
	                    <td>新密码：</td>
	                    <td><input id="txtNewPass" type="password" class="txt01" /></td>
	                </tr>
	                <tr>
	                    <td>确认密码：</td>
	                    <td><input id="txtRePass" type="password" class="txt01" /></td>
	                </tr>
	            </table>
	        </div>
	    </div>
	</div>

	<div id="mm" class="easyui-menu" style="width:150px;">
		<div id="tabupdate">刷新</div>
		<div class="menu-sep"></div>
		<div id="close">关闭</div>
		<div id="closeall">全部关闭</div>
		<div id="closeother">除此之外全部关闭</div>
		<div class="menu-sep"></div>
		<div id="closeright">当前页右侧全部关闭</div>
		<div id="closeleft">当前页左侧全部关闭</div>
		<div class="menu-sep"></div>
		<div id="exit">退出</div>
	</div>


</body>
</html>