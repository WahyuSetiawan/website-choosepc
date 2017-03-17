@extends('admin.layout')

@section('content')
<p><h1>Criteria</h1></p>
<?php $_GET['p'] ?>
{!! Form::open(['id' => 'formCriteria','url' => URL::to('admin/ahp/criteria/store'), 'onsubmit' => 'return validateForm()']) !!}
<div class="form-group">
    {!! Form::label('labelname','Name') !!}
    {!! Form::text('name', '',array('class' => 'form-control', 'name' => 'name')) !!}
</div>
{!! Form::hidden('id_comp',$_GET['p']) !!}
{!! Form::submit('Send',array('class' => 'btn btn-success', 'onclick' => 'validate()')) !!}

{!! Form::close() !!}
@endsection

@section('script')
<script>
    function validate() {
        $('#formCriteria').validate({
            //'onclick' => 'validate()'
            rules: {
                name: "required",
                id_comp: {
                    required: true
                }
            }
        });
    }
</script>
@endsection