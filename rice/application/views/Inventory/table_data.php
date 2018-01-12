<!-- should coming from mySQL -->
<table class="table table-hover table-striped">
	  <thead>
      	<tr>
          <th></th>
      		<th>序号</th>
      		<th>名称</th>
      		<th>产品编码</th>
      		<th>库存预警</th>
          <th>成本价格</th>
          <th>一级价格</th>
          <th>二级价格</th>
          <th>规格</th>
          <th>创建时间</th>
          <th>修改时间</th>
          <th>包装id</th>
      </tr>
  	  </thead>
      <?php foreach( $product_list as $row):?>
  	  <tr>

  	  	<!-- 添加右侧 border -->
  	  	<td><input type="checkbox" value="" class="delCheck">
  	  	</td>

  	  	<td><?=$row['id']?></td>
  	  	<td><?=$row['name']?></td>
  	  	<td><?=$row['product_code']?></td>
        <td><?=$row['min_inventory']?></td>
        <td><?=$row['cost_price']?></td>
        <td><?=$row['first_price']?></td>
        <td><?=$row['second_price']?></td>
        <td><?=$row['size']?></td>
        <td><?=$row['create_time']?></td>
        <td><?=$row['changed_time']?></td>
        <td><?=$row['package_id']?></td>
      </tr>
      <?php endforeach; ?>



</table>
<!-- 
 table and page should in the same div block
 -->
