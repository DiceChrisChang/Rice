<body>
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
        <!-- should come from rice table menu -->
        <li >
          <a href="http://localhost/rice/index.php/manager/system_load" >
           <?php echo $navbarFirst; ?>
          </a>
       </li>
        <li ><a href="http://localhost/rice/index.php/manager/reseller_load" >经销商管理</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <!--
          Mark Otto -> 数据库
        -->
          <p class="navbar-text ">欢迎 <a href="#" class="navbar-link "><?=$logname?></a></p>
          <button type="button" class="btn btn-primary"  id="sign-out">
            <!-- data-toggle="modal" data-target="#myModal" -->
           <a href="http://localhost/rice/index.php/manager" style="color: white"> 退出</a>
          </button>
      </ul>
   </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
  </nav>
  <div style="height: 50px;"></div>
