{!! Form::open(['files'=>true]) !!}
@foreach($data as $dat)
{!! Form::checkbox('in[]',"$dat->id") !!} {{ $dat->name }} <br />
@endforeach
{!! Form::submit() !!}
{!! Form::close() !!}