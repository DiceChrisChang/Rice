<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title><?php echo $title; ?></title>
	<!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<!-- 
		自行引入的 CSS 文件
		尚未成功引入
	-->
	<link rel="stylesheet" type="text/css" href="application/views/Firstenter/firstenter.css">
	<!-- 暂时添加的 css -->
	<style type="text/css">
        html{
            width:100%;
            overflow-x:hidden;
        }
        body{
            width:100%;
            height:auto;
            padding-bottom: 70px;
        }
        .foot_p{
        	color:white;
        	text-align: center;
        }
        .img-circle{
        	border-radius: 20%;
        	margin-top: 60px;
        }
        .jumbotron h1{
            margin-top: 170px;
        }
        .jumbotron p{
        	margin-top: 40px;
        	font-size: 25px;
        }
        #loginButton{
        	margin-top: 130px;
            margin-bottom: 80px;
        }
        .jumbotron{
            padding-bottom: 20px; 
            background-image: url(img/2012.jpg);
            /* img url 需设置通用路径 仅有登录页面使用 使用 js */
            background-size: cover;
            background-repeat:no-repeat;
            overflow:hidden;
            width:100%;
            min-height: 690px;
            overflow: hidden;
            margin-top:51px;
            background-size:100% auto;
            margin-bottom: 0px;
           
        } 
        .container-fluid{
            width:100%;
            height:100%;
        }
        .btn{
        	margin-right: 6px;
        	position:relative;
        	top:6px;
        }
        .btn-lg{
        	position:relative;
        	top:0px;        	
        }
        .foot_p{
        	margin-top: 10px;
        }

        /*
        path-navigation
        */
        .breadcrumb{
            margin-bottom: 0px;
        }

        
        /*
        notice css
        */
        .img-rounded{
            float: left;
            width: 450px;
            height: 650px;
        }
        #navbar-notice{
            width: 950px;
            height: auto;
            float: right;
            position: relative;
            left: 0px;
            overflow: auto;
        }
        .bg-primary,.bg-info,.bg-success,.bg-warning{
            padding: 8px 3px 8px 3px;
            margin-bottom: 4px;
        }
    </style>
</head>
