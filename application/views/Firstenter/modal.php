    <!-- 
    模态框（Modal）
    模态框不能放进 nav-bar
     -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">  Welcome  </h4>
            </div>
            <div class="modal-body"> 
               <form class="form-horizontal">
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">账号</label>
                  <div class="col-sm-8">
                    <input type="email" class="form-control" id="inputEmail3" placeholder="数字">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                  <div class="col-sm-8">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="字母数字组合">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                      <label>
                        <input type="checkbox"> Remember me
                      </label>
                    </div>
                  </div>
                </div>
               </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit" class="btn btn-primary">登录</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->