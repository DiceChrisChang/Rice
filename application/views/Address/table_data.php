<!-- should coming from mySQL -->
<table class="table table-hover table-striped">
	  <thead>
      	<tr>
          <th></th>

      		<th>顺序</th>
          <th>负责人</th>
          <th>所属分销商</th>
      		<th>地址</th>
          <th>联系电话</th>        
          <th>时间标签</th>
    	</tr>
  	  </thead>
      <?php foreach ($address_list as $row):?>
  	  <tr>
  	  	<!-- 添加右侧 border -->
        <td><input type="checkbox" value="" class="delCheck"></td>
        
  	  	<td><?=$row['id']?></td>
  	  	<td><?=$row['contacter']?></td>
  	  	<td><?=$row['name']?></td>
  	  	<td><?=$row['address']?></td>
        <td><?=$row['contact_number']?></td>
        <td><?=$row['changed_time']?></td>
  	  </tr>
  	  <?php endforeach; ?>
</table>
<!-- 
 table and page should in the same div block
 -->