@extends ('admin/layout')

@section('content')
<p>
<h1>Power Supply</h1>
</p>


<div class="panel panel-primary">
    <div class="panel-heading">
        <label class="panel-title">Component Power Supply</label>
        <a href="{{URL::to('admin/powersupply/add')}}" class="btn btn-primary btn-sm">ADD</a>
    </div>
    <div class="table">
        <table class="table table-striped">
            <tr>
                <th>ID</th>
                <th>Manufactur</th>
                <th>Model</th>
                <th>Wattage</th>
                <th>Price</th>
                <th>Action</th>
            </tr>
            @foreach($datas as $data)
            <tr>
                <td>{{$data->id_psu}}</td>
                <td>{{$data->manufactur}}</td>
                <td>{{$data->model_number}}</td>
                <td>{{$data->wattage}}</td>
                <td>{{$data->price}}</td>
                <td>
                    <a href="{{URL::to('admin/powersupply/show')}}/{{ $data->id_psu }}" class="btn btn-info">Show</a>
                    <a href="{{URL::to('admin/powersupply/edit')}}/{{ $data->id_psu }}" class="btn btn-warning">Edit</a>
                    <a href="{{URL::to('admin/powersupply/destroy')}}/{{ $data->id_psu  }}" class="btn btn-danger">Delete</a>
                </td>
            </tr>
            @endforeach
        </table>
    </div>
</div>

<?php
$datas->setPath('');
echo $datas->render();
?>
@endsection