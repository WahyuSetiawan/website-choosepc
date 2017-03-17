@extends ('admin/layout')

@section ('content')
<h4>ADD Description <?php echo $key ?></h4>

<p>
    {!! Form::open(['id' => 'formDescription','url' => URL::to('admin/description/store'), 'onsubmit' => 'return validateForm()']) !!}
<div class="form-group">
    {!! Form::label('name','Description') !!}
    {!! Form::text('description', '',array('class' => 'form-control', 'name' => 'description')) !!}
</div>
{!! Form::hidden('component',$key) !!}
{!! Form::submit('Send',array('class' => 'btn btn-success')) !!}

{!! Form::close() !!}
</p>
@endsection

@section ('script')
<script type="text/javascript">

</script>
@endsection