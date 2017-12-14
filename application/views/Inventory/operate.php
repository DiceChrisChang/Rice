    <!-- search operate navbar -->
    <nav class="navbar navbar-inverse">
       
        <button type="button" class="btn btn-primary" aria-label="Left Align" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
        <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
        </button>

          <!-- 按钮触发模态框 -->
          <!-- Button trigger modal -->
          <button type="button" class="btn btn-primary " data-toggle="modal" data-target="#Modal">
          入库操作
          </button>

    </nav>




 


<div class="collapse" id="collapseExample">
  <div class="well">
      <form class="form-inline">
    <!-- 下拉选择菜单 -->
          <div class="col-md-3">
            <label for="cool">产品号</label>
            <select class="form-control" id="cool">
                <option>201701</option>
                <option>201702</option>
                <option>201703</option>
                <option>201704</option>
                <option>201705</option> 
            </select>
          </div>
            <!-- 组合筛选 -->

          <div class="row">
             <div class="form-group">
               <label for="exampleInputName2" >Name</label>
                 <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
             </div>
             <div class="form-group">
               <label for="exampleInputEmail2">Email</label>
                <input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
             </div>
          </div>




          <div class="row">
             <button type="submit" class="btn btn-primary">筛选 </button>
             <button type="button" class="btn btn-primary" data-target="#">全选</button>
             <button type="button" class="btn btn-primary" data-toggle="#">删除</button>
          </div> 


       </form>
  </div>
</div>
