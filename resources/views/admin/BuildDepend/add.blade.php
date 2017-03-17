@extends ('admin/layout')

@section('content')
<h3>ADD Component</h3>

{!! Form::open(array('url' => 'admin/buildController/store/','method'=>'POST','files'=>true)) !!}

<div class="form-group">
    {!! Form::label('name','Component Computer') !!}

</div>
{!! Form::submit('Send',array('class' => 'btn btn-success')) !!}

{!! Form::close() !!}

<div id="table"></div>
@endsection

@section('script')
<script type="text/javascript">
    $(window).load(function() {
        refreshdata();
    });

    function getNo(id, value) {
        $.post('<?php echo URL::to('admin/buildDepend/changeNo') ?>',
                {'_token': '<?php echo csrf_token() ?>', 'component': id, 'target_move': value})
                .done(function(data) {
                    console.log(data);
                    refreshdata();
                });
    }

    function refreshdata() {
        $.get('<?php echo URL::to('admin/buildDepend/showTable') ?>', function(data) {
            console.log(data);
            $("#table").html(data);
        });
    }
</script>
@endsection

