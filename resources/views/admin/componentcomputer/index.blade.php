@extends ('admin/layout')

@section ('content')
<p>
<h1>Component Computer</h1>
</p>

<div class="panel panel-primary">
    <div class="panel-heading">
        <label class="panel-title">Database Component Computer</label><a href="{{URL::to('admin/ahp/comcom/create')}}" class="btn btn-primary">New</a>
    </div>
    <div class="table">
        <table class="table table-bordered table-striped">
            <tr>
                <th>No Urut</th>
                <th>ID</th>
                <th>Name</th>
                <th>Action</th>
            </tr>
            <?php $i = 1 ?>
            @foreach ($comcoms as $comcom)
            <tr>
                <td>{{$i++}}</td>
                <td>{{$comcom->id}}</td>
                <td>{{$comcom->name}}</td>
                <td>
                    <a href="<?php echo URL::to('admin/ahp/comcom/edit').'/'.$comcom->id ?>" class="btn btn-warning">Edit</a>
                    <a href="<?php echo URL::to('admin/ahp/comcom/destroy').'/'.$comcom->id ?>" class="btn btn-danger">Delete</a>
                </td>
            </tr>
            @endforeach
        </table>
    </div>
</div>


@endsection

@section ('script')

@endsection