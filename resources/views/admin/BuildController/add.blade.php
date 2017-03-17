@extends ('admin/layout')

@section('content')

<h3>ADD Component</h3>

{!! Form::open(array('url' => 'admin/buildController/store/','method'=>'POST','files'=>true)) !!}

<div class="form-group">
    {!! Form::label('name','Component Computer') !!}
    {!! Form::select('component',$components, null,array('class' => 'form-control'))!!}
</div>
{!! Form::submit('Send',array('class' => 'btn btn-success')) !!}

{!! Form::close() !!}

@endsection