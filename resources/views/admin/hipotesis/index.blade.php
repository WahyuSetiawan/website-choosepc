@extends('admin.layout')

@section('content')

<p>
<h1>Hipotesis</h1>
</p>

<div class="panel panel-primary">
    <div class="panel panel-heading">
        <label class="panel-title">
            Data Hipotesis
        </label>
        <a href="{{URL::to('admin/hipo/create')}}" class="btn btn-primary btn-sm">New</a>
    </div>
    <div class="table">
        <table class="table table-striped">
            <tr>
                <th>No</th>
                <th>Name</th>
                <th>Probabilitas</th>
                <th class="btn-action-without-show">Action</th>
            </tr>
            <?php $i = 1 ?>
            @foreach($data as $hipo)
            <tr>
                <td>{{ $i }} <?php $i++ ?></td>
                <td>{{ $hipo->name}}</td>
                <td>{{ $hipo->probabilitas }}</td>
                <td>
                    <a href="{{URL::to('admin/hipo/edit')}}/{{ $hipo->id }}" class="btn btn-warning">Edit</a>
                    <a href="{{URL::to('admin/hipo/destroy')}}/{{ $hipo->id  }}" class="btn btn-danger">Delete</a>
                </td>
            </tr>
            @endforeach
        </table>
    </div>
</div>

@endsection