<form method="post" action="http://localhost/rice/index.php/manager/user_add">
  <div class="form-group">
    <label for="exampleInputEmail1">姓名</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Name" name="name">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">账号名</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Account" name="account">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">密码</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">电话</label>
    <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Phone" name="phone">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">邮箱地址</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Email" name="email">
  </div>
  <div class="col-md-5">
            <label for="cool">角色选择</label>
            <select class="form-control" id="cool" name="role_tips">
            <?php foreach($role_tips as $row):?>
                <option><?=$row['tips']?></option>
            <?php endforeach; ?>
            </select>

  </div>
  <div class="col-md-7">
            <label for="cool">部门选择</label>
            <select class="form-control" id="cool" name="dept_fullname">

            <?php foreach($dept_fullname as $row):?>
                <option><?=$row['fullname']?></option>
            <?php endforeach; ?>

            </select>
  </div>
  <button type="submit" class="btn btn-default"><a href="#">添加</a></button>
  


</form>
