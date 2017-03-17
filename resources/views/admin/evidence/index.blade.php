@extends('admin.layout')

@section('content')
<p>
<h1>Evidence</h1>
</p>
<div class="box-default">
    <p>
        <a href="{{URL::to('admin/evid/create')}}" class="btn btn-primary">New</a>
    </p> 
</div>

<div class="panel panel-primary">
    <div class="panel-heading">
        <label class="panel-title">Data Evidence</label>
    </div>
    <div class="table">
        <table class="table table-striped">
            <tr>
                <th>No</th>
                <th>Name</th>
                <th>Question</th>
                <th class="btn-action-without-show">Action</th>
            </tr>

            <?php $i = 1; ?>
            @foreach($data as $evid)
            <tr>
                <td>{{ $i }}<?php $i++ ?></td>
                <td>{{ $evid->name}}</td>
                <td>{{ $evid->question }}</td>
                <td>
                    <a href="{{URL::to('admin/evid/edit')}}/{{ $evid->id }}" class="btn btn-warning">Edit</a>
                    <a href="{{URL::to('admin/evid/destroy')}}/{{ $evid->id  }}" class="btn btn-danger">Delete</a>
                </td>
            </tr>
            @endforeach
        </table>
    </div>
</div>

@endsection