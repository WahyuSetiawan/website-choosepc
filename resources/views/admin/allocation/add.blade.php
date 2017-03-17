@extends ('admin/layout')

@section ('content')
<h4>ADD Allocation Component <?php echo $key ?></h4>

<p>
    {!! Form::open(['id' => 'formDescription','url' => URL::to('admin/allocation/store'), 'onsubmit' => 'return validateForm()']) !!}
<div class="form-group">
    {!! Form::label('name','Allocation') !!}
    {!! Form::select('component', $component,null, array('class' => 'form-control')) !!}
</div>
{!! Form::hidden('hipo',$key) !!}
{!! Form::submit('Send',array('class' => 'btn btn-success')) !!}

{!! Form::close() !!}
</p>
@endsection

@section ('script')
<script type="text/javascript">

</script>
@endsection