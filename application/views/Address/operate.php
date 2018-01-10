    <!-- search operate navbar -->
    <nav class="navbar navbar-inverse" id="Manager">
       
        <button type="button" class="btn btn-primary" aria-label="Left Align" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
        <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
        </button>

          <!-- 按钮触发模态框 -->
          <!-- Button trigger modal -->
          <!-- <button type="button" class="btn btn-primary " data-toggle="modal" data-target="#Modal">入库操作</button> -->

          <button type="button" class="btn btn-primary ">
          查询菜单
          </button>


    </nav>




 


<div class="collapse" id="collapseExample">
  <div class="well">
      <form class="form-inline">
    <!-- 下拉选择菜单 -->
          <div class="col-md-2">
            <label for="cool">角色</label>


            <select class="form-control" id="cool">

            <?php foreach($role_tips as $row):?>
                <option><?=$row['tips']?></option>
            <?php endforeach; ?>
            </select>

          </div>
          <div class="col-md-2">
            <label for="cool">部门</label>
            <select class="form-control" id="cool">

            <?php foreach($dept_fullname as $row):?>
                <option><?=$row['fullname']?></option>
            <?php endforeach; ?>

            </select>
          </div>
            <!-- 组合筛选 -->

          <div class="row">
             <div class="form-group">
               <label for="exampleInputName2" >姓名</label>
                 <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
             </div>
          </div>




          <div class="row">
             <button type="submit" class="btn btn-primary">查询 </button>
             <button type="button" class="btn btn-primary" data-target="#">全选</button>
             <button type="button" class="btn btn-primary" data-toggle="#">删除</button>
          </div> 


       </form>
  </div>
</div>
