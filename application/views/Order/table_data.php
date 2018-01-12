<!-- should coming from mySQL -->
<table class="table table-hover table-striped">
	  <thead>
      	<tr>
          <th></th>
      		<th>订单号</th>
      		<th>产品编号</th>
      		<th>单价</th>
      		<th>数量</th>
          <th>分销商ID</th>
          <th>分销商地址ID</th>
          <th>出货时间</th>
          <th>订单状态</th>
          <th>物流单号</th>
          <th>物流公司名称</th>
          <th>运费</th>
		  <th>订单类型</th>
          <th>创建时间</th>
          <th>付款时间</th>
          <th>订单状态</th>
      </tr>
  	  </thead>
      <?php foreach( $role as $row):?>
  	  <tr>

  	  	<!-- 添加右侧 border -->
  	  	<td><input type="checkbox" value="" class="delCheck">
  	  	</td>

  	  	<td><?=$row['id']?></td>
  	  	<td><?=$row['product_id']?></td>
  	  	<td><?=$row['price']?></td>
        <td><?=$row['count']?></td>
        <td><?=$row['reseller_id']?></td>
        <td><?=$row['address_id']?></td>
        <td><?=$row['delivery_time']?></td>
		<td><?=$row['order_status']?></td>
		<td><?=$row['delivery_number']?></td>
        <td><?=$row['delivery_company']?></td>
		<td><?=$row['delivery_cost']?></td>
        <td><?=$row['order_option']?></td>
        <td><?=$row['create_time']?></td>
        <td><?=$row['modified_time']?></td>
        <td><?=$row['pay_status']?></td>
      </tr>
      <?php endforeach; ?>


</table>
<!-- 
 table and page should in the same div block
 -->

