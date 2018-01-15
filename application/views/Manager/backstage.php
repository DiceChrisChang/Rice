<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
body {
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #eee;
}

.form-signin {
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
}
.form-signin .form-signin-heading,
.form-signin .checkbox {
  margin-bottom: 10px;
}
.form-signin .checkbox {
  font-weight: normal;
}
.form-signin .form-control {
  position: relative;
  height: auto;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}


    </style>
  </head>

  <body>

        
    
    <!-- 
      将会返回验证器返回的所有错误信息。如果没有错误信息，它将返回空字符串 

    --> 
    
    
    <div class="container">
      

      <div class="alert alert-danger alert-dismissible" role="alert" id="alertHide">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
         <?php 

         echo "<strong>Warning!</strong> ".validation_errors().$alertMessage; 
         ?>
      </div>


      <?php echo form_open('Manager','class="form-signin"'); ?>
      <form class="form-signin" method="post" action="http://localhost/rice/index.php/manager">
        <h2 class="form-signin-heading">Magnet</h2>
        <P>客户管理</P>
        <label for="inputEmail" class="sr-only">Email address</label>
        <!-- 
          type = email 存在验证不能作为账号类型
          value 内的 set_value()函数保证其实输入错误也会保留上一次输入的信息
        -->
        <input type="text" id="inputEmail" class="form-control" placeholder="登录账号" required autofocus name="username" value="<?php echo set_value('username'); ?>" >
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="密码" required name="password" value="<?php echo set_value('password'); ?>" >
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me" disabled="disabled" > Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit" value="Submit" id="logSubmit">登录</button>
      </form><!-- form-signin -->

    </div> <!-- /container -->

  <!--jQuery 引入-->
  <script src="https://cdn.bootcss.com/jquery/3.2.1/core.js"></script>
  <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
  <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
  
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    <script type="text/javascript">

      // 登录尚未成功时弹出的警告 可以主动操作关闭
      // $('.close').click(function(){
      //   $('#alertHide').alert('close');
      // });
      // 操作输入框可以自动关闭警告框
      $(":input").focus(function(){
        $('#alertHide').hide();        
      });
      
    </script>
  </body>
</html>