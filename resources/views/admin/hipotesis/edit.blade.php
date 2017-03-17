@extends('admin.layout')

@section('content')
{!! Form::open(array('url' => "admin/hipo/update/$data->id")) !!}
<div class="form-group">
{!! Form::label('name','Name') !!}
{!! Form::text('name', "$data->name",array('class' => 'form-control')) !!}
</div>
<div class="form-group">
{!! Form::label('probabilitas', 'Probabilitas(ex: 0.3)') !!}
{!! Form::text('probabilitas',"$data->probabilitas",array('class' => 'form-control') ) !!}
</div>
{!! Form::submit('Send',array('class' => 'btn btn-success')) !!}

{!! Form::close() !!}
@endsection