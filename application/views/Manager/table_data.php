<!-- should coming from mySQL -->
<table class="table table-hover table-striped">
	  <thead>
      	<tr>
          <th></th>

      		<th>顺序</th>
      		<th>姓名</th>
      		<th>角色</th>
      		<th>部门</th>
          <th>邮箱</th>
          <th>时间标签</th>
    	</tr>
  	  </thead>
      <?php foreach ($user_list as $row):?>
  	  <tr>
  	  	<!-- 添加右侧 border -->
        <td><input type="checkbox" value="" class="delCheck"></td>
        
  	  	<td><?=$row['id']?></td>
  	  	<td><?=$row['name']?></td>
  	  	<td><?=$row['tips']?></td>
  	  	<td><?=$row['fullname']?></td>
        <td><?=$row['email']?></td>
        <td><?=$row['changed_time']?></td>
  	  </tr>
  	  <?php endforeach; ?>
</table>
<!-- 
 table and page should in the same div block
 -->