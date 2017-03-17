@extends('admin.layout')

@section('content')
{!! Form::open(['id' => 'formEvidence', 'onsubmit' => 'return validateForm()']) !!}
<div class="form-group">
    {!! Form::label('labelname','Name') !!}
    {!! Form::text('name', '',array('class' => 'form-control', 'name' => 'name')) !!}
</div>
<div class="form-group">
    {!! Form::label('labelquestion', 'Question') !!}
    {!! Form::text('question','',array('class' => 'form-control', 'name' => 'question') ) !!}
</div>
{!! Form::submit('Send',array('class' => 'btn btn-success', 'onclick' => 'validate()')) !!}

{!! Form::close() !!}
@endsection

@section('script')
<script>
    function validate() {
        $("#formEvidence").validate({
            rules : {
                name : "required",
                question : "required"
            }
        });
    }
</script>
@endsection