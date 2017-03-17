@extends ('admin/layout')

@section ('content')

{!! Form::open(array('url' => 'admin/ahp/comcom/update/'.$data->id,'method'=>'POST','files'=>true, 'id' => 'formproduct')) !!}

<div class="form-group">
    {!! Form::label('name','Name ') !!}
    {!! Form::text('name',$data->name,array('class' => 'form-control'))!!}
</div>


{!! Form::submit('Send',array('class' => 'btn btn-success')) !!}

{!! Form::close() !!}

@endsection