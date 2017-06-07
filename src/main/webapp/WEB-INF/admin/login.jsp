<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>JBuilder|登录</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<%=path %>/resources/admin/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<%=path %>/resources/admin/plugins/font-awesome-4.7.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<%=path %>/resources/admin/ionicons-2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<%=path %>/resources/admin/plugins/iCheck/square/blue.css"/>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition login-page" style="background-image: url(<%=path %>/resources/admin/plugins/logincss/wallhaven-401354.jpg);height: auto;width: auto;background-position: center center;background-size: cover">
<div class="login-box">
  <div class="login-logo">
    <a style="color: #EFF1F7;" href="index.html"><b>JBuilder</b>-LOGIN</a>
  </div>
  <!-- /.login-logo -->
  <div class="box-body" style="border-radius: 5px;background-color: rgba(255,255,255,0.75);">
    <p class="login-box-msg text-light-blue">登录系统开始工作</p>

    <form action="<%=path %>/admin/login" method="post">
      <div class="form-group has-feedback">
        <input type="email" class="form-control" name="username" placeholder="username" style="border-radius: 4px;">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" name="password" placeholder="password" style="border-radius: 4px;">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
      		<div class="row">
      			<div class="col-xs-6">
			      	 <input type="text" class="form-control" name="verifyCode" placeholder="验证码" style="border-radius: 4px;">
      			</div>
      			<div class="col-xs-6">
			        <img class="img-responsive" src="<%=path %>/admin/verifyCode" style='cursor:pointer;' alt='请输入图片验证码' onclick="this.src='<%=path %>/verifyCode?time='+Math.random()"/>
      			</div>
      		</div>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label class="text-light-blue">
              <input type="checkbox"> 记住登录信息
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat" style="border-radius: 4px;">登录</button>
        </div>
        <!-- /.col -->
      </div>
    </form>
    <div class="social-auth-links text-center">
  		<a href="#" class="btn btn-block btn-social btn-facebook btn-flat pull-left" style="border-radius: 4px;"><i class="fa fa-qq"></i>使用QQ账户登录</a>
  		<a href="#" class="btn btn-block btn-social btn-google btn-flat pull-right"  style="border-radius: 4px;"><i class="fa fa-wechat"></i>使用微信登录</a>
    </div>
    <div class="clearfix"></div>
    <!-- /.social-auth-links -->
    <div class="col-xs-12 margin">
	    <a href="#" class="pull-left">忘记密码/找回</a>
	    <a href="register.html"class="pull-right">联系管理员</a>
    </div>
    <p class="text-center">
    	<a href="http://www.ramostear.com">
    		&copy;2017 ramostear.com</p>
    	</a>
  </div>
  <!-- /.login-box-body -->
</div>
<audio id="audios" controls="ture" autoplay="autoplay" class="audio" style="display: none;"></audio>
<!-- /.login-box -->

<!-- jQuery 2.2.3 -->
<script src="<%=path %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<%=path %>/resources/admin/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="<%=path %>/resources/admin/plugins/iCheck/icheck.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/logincss/js/canvas-nest.min.js" type="text/javascript" charset="utf-8"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
</body>
</html>
