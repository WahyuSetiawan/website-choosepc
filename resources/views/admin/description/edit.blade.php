@extends ('admin/layout')

@section ('content')
<h4>Edit Description <?php echo $data->id ?></h4>

<p>
    {!! Form::open(['id' => 'formDescription','url' => URL::to('admin/description/update/'.$data->id), 'onsubmit' => 'return validateForm()']) !!}
<div class="form-group">
    {!! Form::label('name','Description') !!}
    {!! Form::text('description', $data->description,array('class' => 'form-control', 'name' => 'description')) !!}
</div>
{!! Form::hidden('id',$data->id) !!}
{!! Form::submit('Send',array('class' => 'btn btn-success')) !!}

{!! Form::close() !!}
</p>
@endsection

@section ('script')
<script type="text/javascript">

</script>
@endsection