@extends ('admin/layout')

@section ('content')
<h1>ALLOCATION</h1>

<p>
    Pilihlah komponent yang aka dipakai sesuai dengan hipotensis yang telah diberikan dan juga, komponent komputer yang telah desertakan
</p>
<p>
    <?php
    $hipo = array_keys($datas);
    $i = 0;
    foreach ($datas as $data) {
        ?>
    <p>
    <h4><?php echo $header[$hipo[$i]] ?></h4>
    </p>
    <form class="form-inline">
	<div class="col-md-9">
        <a href="{{ URL::to('admin/allocation/add/'.$hipo[$i])}}" class="btn btn-primary">Add</a>
    </div>
	<div class="col-md-3">
	<div class="form-group">
	<label>PSU</label> 
	<div class="input-group">
	<input type="text" value="<?php echo $data['psu'][$i+1] ?>" id="<?php echo $hipo[$i] ?>" name="" onchange="changePsu(this.id, this.value)">
	<div class="input-group-addon">%</div>
	</div>
	</div>
	</div>
	<div class="col-md-12">
    <table class="table table-striped">
        <tr>
            <?php
            $dataHeaderKey = array_keys($data['header']);
            $j = 0;
			$dataHeaderKeyCol = array_keys($data['colomn']);
            foreach ($data['header'] as $dataHeader) {
                ?>
                <th><?php echo $component[$dataHeaderKey[$j]] ?>  |  <a href="" onclick="deleteComp(<?php echo $dataHeaderKeyCol[$j++] ?>)">x</a></th>
            <?php } ?>
        </tr>
        <tr>
            <?php
            $dataHeaderKey = array_keys($data['colomn']);
            $j = 0;
            foreach ($data['colomn'] as $dataHeader) {
                ?>
                <td>
				<div class="input-group">
				<input type="text" value="<?php echo $dataHeader ?>" id="<?php echo $dataHeaderKey[$j++] ?>" name="<?php echo $header[$hipo[$i]] ?>" onchange="change(this.id, this.value)">
				<div class="input-group-addon">%</div>
				</div>
				</td>
				
            <?php } ?>
        </tr>
    </table>
	</div>
</form>
    <?php
    $i++;
	
}
?>
</p>
@endsection

@section ('script')
<script type="text/javascript">
    function change(id, value) {
        $.post(('<?php echo URL::to('admin/allocation/ajaxUpdate') ?>'),
                {_token: '<?php echo csrf_token() ?>', id: id, allocation: value})
                .done(
                        function(data) {
                            console.log(data);
                        });
    }
	function changePsu(id, value) {
        $.post(('<?php echo URL::to('admin/allocation/ajaxUpdateX') ?>'),
                {_token: '<?php echo csrf_token() ?>', id: id, allocation: value})
                .done(
                        function(data) {
                            console.log(data);
                        });
    }
	function deleteComp(id){
		$.post(('<?php echo URL::to('admin/allocation/ajaxDelete') ?>'),
			{_token: '<?php echo csrf_token() ?>', id: id})
                .done(
                        function(data) {
                            console.log(data);
							location.reload(true);
                        });	
	}
</script>
@endsection