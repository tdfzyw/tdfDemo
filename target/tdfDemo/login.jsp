<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>基于SSM框架的后台权限管理系统</title>
    <link rel="stylesheet" type="text/css" href="static/css/login.css"/>
    <link rel="stylesheet" type="text/css" href="static/ui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="static/ui/themes/icon.css">
    <script type="text/javascript" src="static/ui/jquery.min.js"></script>
    <script type="text/javascript" src="static/ui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="static/ui/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="static/ui/jquery.serializejson.min.js"></script>
    <script type="text/javascript" src="static/js/config.js"></script>
    <script type="text/javascript">
        /**
         * 登陆
         */
        function login(){
            var formdata = $('#loginform').serializeJSON();
            //提交登陆验证
            $.ajax({
                url: 'user/login',
                data:formdata,
                dataType: 'json',
                type: 'post',
                success:function(rtn){
                    //登陆成功
                    if(rtn.status==200){
                        location.href="index.jsp";
                    }else{
                        $.messager.alert('提示',rtn.msg,'info');
                    }
                }
            });
        }
    </script>
</head>
<body>
<div class='signup_container'>
    <div class="w-load"><div class="spin"></div></div>
    <h1 class='signup_title'>基于easyui的权限管理系统</h1>
    <div id="userInfo">
        <span style="float:left; margin-left:40px; height:200px; border:0px solid red"><img src='static/images/erp.jpg' id='admin'/></span>
        <span style="float:left; margin-left:40px; height:200px; border:0px solid red">
            <div id="signup_forms" class="signup_forms clearfix">
                  <form class="signup_form_form" id="loginform" method="post" >
                          <div class="form_row first_row">
                              <label for="signup_email">请输入用户名</label>
                              <input type="text" name="user_code" placeholder="请输入用户名" id="signup_name" value="admin" >
                          </div>
                          <div class="form_row">
                              <label for="signup_password">请输入密码</label>
                              <input type="password" name="user_pwd" placeholder="请输入密码" id="signup_password" value="admin" >
                          </div>
                 </form>
            </div> 
            <div id="foo"></div>
                	<br/>      
        </span>
    </div>



    <div class="login-btn-set"><div class='rem'>记住我</div> <a href='javascript:login()' class='login-btn'></a></div>
</div>

</body>



</html>