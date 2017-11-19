  <script type="text/javascript">

    /*
          $(function() {
              $('#myModal').modal('hide')
          });

          $(function() {
              $('#myModal').on('hide.bs.modal')
          });

    */


    // log-in & sign-out 不能同时好使 需要判断状态
    if (true) {
      $("sign-out").click(function(){
        alert("您还没有登录！"); 
      //退出后出现 #myModal
          $("#myModal").modal(toggle);
      //sign-out 不好使    
      })
    }
    else{
      $('#identifier').modal('hide');
      alert("您已登陆！");
      $("#sign-out").click(function(){
        alert("您即将退出！即将切换登录");
        // 确定--需要转到首页(尚未登录)！
      });
    }

    
  </script>