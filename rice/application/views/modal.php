    <!-- 
    模态框（Modal）
    模态框不能放进 nav-bar
    id:myModal 
    不可以修改
     -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title " id="myModalLabel">  Welcome  </h4>
            </div>
            <div class="modal-body"> 
               <form class="form-horizontal" method="post" action="login">
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









<!-- Modal -->
<div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body"> 
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>




<!-- -->
<!-- tenplate modal all kinds -->
<div class="modal fade" id=" " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" >
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- head -->
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title " id="myModalLabel">  template  </h4>
            </div>
            <!-- body -->
            <div class="modal-body"> 
               <!-- form 表单 -->
              <form class="form-horizontal" method="post" action="login">
                <!-- 带计量单位的输入 -->
                <div class="input-group">
                    <span class="input-group-addon">质量</span>
                    <input type="text" class="form-control">
                    <span class="input-group-addon">kg</span>
                </div>
                <!-- 普通输入框 -->
                <div class="form-group">
                  <label for="exampleInputName2" >Name</label>
                  <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
                </div>
                <!-- checkbox choose -->
                <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                      <label>
                        <input type="checkbox"> Remember me
                      </label>
                    </div>
                  </div>
                </div>
                <!-- 下拉选择项 -->
                <label for="cool">产品号</label>
                <select class="form-control" id="cool">
                    <option>201701</option>
                    <option>201702</option>
                    <option>201703</option>
                    <option>201704</option>
                    <option>201705</option> 
                </select>
              </form><!-- form close -->
            </div>
            <!-- footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit" class="btn btn-primary">登录</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->