<body>
  <!--
      navbar-default
  -->
	<nav class="navbar navbar-fixed-top navbar-inverse ">
  		<div class="container-fluid">
      <!-- 头导航栏 -->
    <div class="navbar-header">
    	<a class="navbar-brand btn btn-primary btn-lg" href="#">Magnet</a>
		   <!--
          icon: glyphicon glyphicon-magnet
       -->
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
     <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-left">
        <li class="col-md-3"><a href="#">仓储</a></li>
        <li class="col-md-3"><a href="#">订单</a></li>
        <li class="col-md-3"><a href="#">统计</a></li>
        <li class="col-md-3" id="noticeClick"><a href="#">通知</a></li>
      </ul>
      <!--
      search  
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      -->
      <ul class="nav navbar-nav navbar-right">
        <!-- 按钮触发模态框  -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
          登录
        </button>
        <!--
          Mark Otto -> 数据库
        -->
          <p class="navbar-text ">欢迎 <a href="#" class="navbar-link "> Mark Otto</a></p>
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" id="sign-out">
            退出
          </button>
      </ul>
   </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
	</nav>