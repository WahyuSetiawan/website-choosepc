@extends ('admin/layout')

@section ('content')

{!! Form::open(array('url' => 'admin/adminupdate/'.$data->username,'method'=>'POST','files'=>true, 'id' => 'formproduct')) !!}

<div class="form-group">
    {!! Form::label('name','Username') !!}
    {!! Form::text('username',$data->username,array('class' => 'form-control'))!!}
</div>
<div class="form-group">
    {!! Form::label('name','Password') !!}
    {!! Form::text('password','',array('class' => 'form-control'))!!}
</div>
<div class="form-group">
    {!! Form::label('name','Avatar') !!}
    {!! Form::file('image', array('class' => 'form-control'))!!}
</div>

{!! Form::submit('Send',array('class' => 'btn btn-success')) !!}

{!! Form::close() !!}

@endsection