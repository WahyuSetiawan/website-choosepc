@extends('admin.layout')

@section('content')
<?php echo $_GET['p'] ?>
{!! Form::open(['id' => 'formCriteria','url' => URL::to('admin/ahp/subcriteria/store'), 'onsubmit' => 'return validateForm()']) !!}
<div class="form-group">
    {!! Form::label('name','Name') !!}
    {!! Form::text('name', '',array('class' => 'form-control', 'name' => 'name')) !!}
</div>
{!! Form::hidden('id_crit',$_GET['p']) !!}
{!! Form::submit('Send',array('class' => 'btn btn-success')) !!}

{!! Form::close() !!}
@endsection

@section('script')
<script>
    function validateForm(){
        /*var x = document.getElementsByTagName('nameEvidance');
        var question = document.getElementsByTagName('questionEvidance');
        if (x.length === 0 && question.length === 0){
            alert("Name dan Question harus diisi");
            return false;
        }else if (x.length === 0){
            alert("Nama Evidance harus diisi");
            return false;
        }else if (question.length === 0 ){
            alert ("Question harus diisi");
            return false;
        }*/
        
    }
</script>
@endsection