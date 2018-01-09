<div class="container-fluid">
<div class="row">
	<div class="col-sm-3 col-md-2 sidebar">
		<div class="panel-group" id="accordion">
	<!-- js events are not finished -->
	<div class="panel panel-primary  side-panel">
		<div class="panel-heading">
			<h4 class="panel-title ">
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapse1">
					<?php echo $side0['name'] ; ?>
				</a>
			</h4>
		</div>
		<div id="collapse1" class="panel-collapse collapse in">
			<div class="panel-body">
				<ul class="nav nav-sidebar">
					<?php foreach ($mgr as $value):?>
					<li><a href="#"><?=$value['name']?></a></li>
					<?php endforeach;?>
				</ul>
			</div>
		</div>
	</div>
	<div class="panel panel-primary  side-panel">
		<div class="panel-heading">
			<h4 class="panel-title ">
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapse2">
					<?php echo $side1['name'] ; ?>
				</a>
			</h4>
		</div>
		<div id="collapse2" class="panel-collapse collapse in">
			<div class="panel-body">
				<ul class="nav nav-sidebar">
					<?php foreach ($role as $value):?>
					<li><a href="#"><?=$value['name']?></a></li>
					<?php endforeach;?>
				</ul>
			</div>
		</div>
	</div>
	<div class="panel panel-primary  side-panel">
		<div class="panel-heading">
			<h4 class="panel-title ">
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapse3">
				   <?php echo $side2['name'] ; ?>
				</a>
			</h4>
		</div>
		<div id="collapse3" class="panel-collapse collapse in">
			<div class="panel-body">
				<ul class="nav nav-sidebar">
					<?php foreach ($menu as $value):?>
					<li><a href="#"><?=$value['name']?></a></li>
					<?php endforeach;?>
				</ul>
			</div>
		</div>
	</div>


	<div class="panel panel-primary  side-panel">
		<div class="panel-heading">
			<h4 class="panel-title ">
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapse4">
				   <?php echo $side3['name'] ; ?>
				</a>
			</h4>
		</div>
		<div id="collapse4" class="panel-collapse collapse in">
			<div class="panel-body">
				<ul class="nav nav-sidebar">
					<?php foreach ($log as $value):?>
					<li><a href="#"><?=$value['name']?></a></li>
					<?php endforeach;?>
				</ul>
			</div>
		</div>
	</div>
	<div class="panel panel-primary  side-panel">
		<div class="panel-heading">
			<h4 class="panel-title ">
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapse5">
				   <?php echo $side4['name'] ; ?>
				</a>
			</h4>
		</div>
		<div id="collapse5" class="panel-collapse collapse in">
			<div class="panel-body">
				<ul class="nav nav-sidebar">
					<?php foreach ($dept as $value):?>
					<li><a href="#"><?=$value['name']?></a></li>
					<?php endforeach;?>
				</ul>
			</div>
		</div>
	</div>
		</div>
	</div>
<div class="col-sm-9  col-md-10  main">