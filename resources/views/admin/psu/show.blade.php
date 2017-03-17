@extends ('admin/layout')

@section('content')

<h3>Power Supply Unit</h3>
<?php $dataShow = (array) $dataShow; ?>

<div class="row">
    <?php foreach ($images as $image) { ?>
        <div class="col-md-3" style="margin: 20px">
            <img src="{{URL::asset("Image/PSU/" . $dataShow[array_keys($dataShow)[0]]."/".$image->image)}}" width="300" height="300" class="thumbnail">
        </div>
    <?php } ?>
</div>

<table class="table table-striped">
    <?php $i = 0 ?>
    @foreach($dataShow as $data)
    <tr>
        <td><?php echo array_keys($dataShow)[$i] ?></td>
        <td><?php
            echo $data;
            $i++
            ?></td>
    </tr>
    @endforeach

    @foreach($dataShowDetail as $data)
    <tr>
        <td><?php
            if (isset($data->depend_component)) {
                echo $data->nama_criteria . " Support";
            } else {
                echo $data->nama_criteria;
            }
            ?></td>
        <td><?php echo $data->sub ?></td>
    </tr>
    @endforeach

</table>

@endsection