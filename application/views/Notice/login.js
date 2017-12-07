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
    if (false) {
      $("sign-out").click(function(){
        alert("您还没有登录！"); 
      //退出后出现 #myModal
          $("#myModal").modal(toggle);
      //sign-out 不好使    
      })
    }
    else{
      $('#identifier').on('hidden.bs.modal', function () {
        alert("您已登陆！");
      // 执行一些动作...
      })
      /*
      $('#myModal').modal(function(){
        
      });
      */

      $("#sign-out").click(function(){
        alert("您即将退出！即将切换登录");
        // 确定--需要转到首页(尚未登录)！
      });
    }

    /*
      缺 massage.php 的 js
    */
  </script>