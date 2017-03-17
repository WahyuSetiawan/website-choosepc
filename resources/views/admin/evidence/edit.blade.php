@extends('admin.layout')

@section('content')
{!! Form::open(array('url' => "admin/evid/update/$data->id")) !!}
<div class="form-group">
    {!! Form::label('name','Name') !!}
    {!! Form::text('name', "$data->name",array('class' => 'form-control')) !!}
</div>
<div class="form-group">
    {!! Form::label('question', 'Question') !!}
    {!! Form::text('question',"$data->question",array('class' => 'form-control') ) !!}
</div>
{!! Form::submit('Send',array('class' => 'btn btn-success', 'onclick' => 'validate()')) !!}

{!! Form::close() !!}
@endsection

@section ('script')
<script type="text/javascript">
    function validate() {
        $("#formEvidence").validate({
            rules: {
                name: "required",
                question: "required"
            }
        });
    }
</script>
@endsection