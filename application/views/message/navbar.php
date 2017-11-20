<body>

  <!--
      navbar-default
  -->
	<nav class="navbar navbar-fixed-top navbar-inverse ">
  		<div class="container-fluid">
      <!-- 头导航栏 -->
    <div class="navbar-header">
    	<!-- navbar-brand : 
    	  CSS
    		float : left
        // 产品名字
    	-->
    	<a class="navbar-brand btn btn-primary btn-lg" href="#">Magnet</a>
		<!--
          icon: glyphicon glyphicon-magnet

	        <div class="navbar-header">
              <a class="navbar-brand" href="#">
                <img alt="Brand" src="...">
              </a>
          </div>
          //无法水平对齐
      -->
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
     <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-left">
        <!--
        //查看 bootstrap  
        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
        -->
        <li class="col-md-4"><a href="#">仓储</a></li>
        <li class="col-md-4"><a href="#">订单</a></li>
        <li class="col-md-4"><a href="#">统计</a></li>
      </ul>
      <!--
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      -->
      <ul class="nav navbar-nav navbar-right">
        <!--
        button 弹出状态栏 js
        登录 button 的位置需要修改 
        -->
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
        <!--
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
        -->
      </ul>
   </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
	</nav>