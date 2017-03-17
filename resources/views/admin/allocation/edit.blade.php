@extends ('admin/layout')

@section ('content')
{!! Form::open(['url' => 'admin/allocation/edit/'.$hipo->id]) !!}

<div class="form-group">
{!! Form::label('cpu','CPU') !!}
{!! Form::text('cpu', "$hipo->cpu",array('class' => 'form-control')) !!}
</div>

<div class="form-group">
{!! Form::label('motherboard','Motherboard') !!}
{!! Form::text('motherboard', "$hipo->motherboard",array('class' => 'form-control')) !!}
</div>

<div class="form-group">
{!! Form::label('ram','RAM') !!}
{!! Form::text('ram', "$hipo->ram",array('class' => 'form-control')) !!}
</div>

<div class="form-group">
{!! Form::label('vga','VGA') !!}
{!! Form::text('vga', "$hipo->vga",array('class' => 'form-control')) !!}
</div>

<div class="form-group">
{!! Form::label('harddisk','Harddisk') !!}
{!! Form::text('harddisk', "$hipo->harddisk",array('class' => 'form-control')) !!}
</div>

<div class="form-group">
{!! Form::label('psu','PSU') !!}
{!! Form::text('psu', "$hipo->psu",array('class' => 'form-control')) !!}
</div>

{!! Form::submit('Send',array('class' => 'btn btn-success')) !!}

{!! Form::close() !!}
@endsection