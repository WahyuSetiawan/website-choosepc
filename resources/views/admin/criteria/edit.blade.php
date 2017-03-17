@extends('admin.layout')

@section('content')
{!! Form::open(['id' => 'formCriteria','url' => URL::to('admin/ahp/criteria/update').'/'.$data->id_criteria, 'onsubmit' => 'return validateForm()']) !!}
<div class="form-group">
    {!! Form::label('name','Name') !!}
    {!! Form::text('name', $data->nama_criteria,array('class' => 'form-control', 'name' => 'name')) !!}
</div>
{!! Form::hidden('id_comp',$data->id_component) !!}
{!! Form::submit('Send',array('class' => 'btn btn-success')) !!}

{!! Form::close() !!}
@endsection

@section('script')
<script>
</script>
@endsection