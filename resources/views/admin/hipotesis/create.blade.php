@extends('admin.layout')

@section('content')
{!! Form::open(['id' => 'formEvidence', 'onsubmit' => 'return validateForm()']) !!}
<div class="form-group">
    {!! Form::label('labelname','Name') !!}
    {!! Form::text('name', '',array('class' => 'form-control')) !!}
</div>
<div class="form-group">
    {!! Form::label('labelprobabilitas', 'Probabilitas(ex: 0.3)') !!}
    {!! Form::text('probabilitas','',array('class' => 'form-control') ) !!}
</div>
{!! Form::submit('Send',array('class' => 'btn btn-success','onclick' => 'validate()')) !!}

{!! Form::close() !!}
@endsection

@section ('script')
<script type="text/javascript">
    function validate() {
        $("#formEvidence").validate({
            rules : {
                name : "required",
                probabilitas : {
                    required : true,
                    number : true
                }
            }
        });
    }
</script>
@endsection