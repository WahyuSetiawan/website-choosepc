@extends ('admin/layout')

@section ('content')
{!! Form::open(['url' => 'admin/ahp/comcom/store','id' => 'formComponent']) !!}


<div class="form-group">
    {!! Form::label('name', 'Name') !!}
    {!! Form::text('name_component','',array('class' => 'form-control', 'name' => 'name_component') ) !!}
</div>

{!! Form::submit('Send',array('class' => 'btn btn-success', 'onclick' => 'validate()')) !!}

{!! Form::close() !!}

@endsection

@section('script')
<script>
    function validate() {
        $('#formComponent').validate({
            /*
             * ,'id' => 'formComponent'
             * 'onclick' => 'validate()'
             */
            rules: {
                id_component: "required",
                name_component: {
                    required: true
                }
            }
        });
    }

</script>
@endsection