@extends ('admin/layout')

@section('content')
<h1>Build Controller</h1>

<p>
    Belum diberikan validasi apakah ada pairwise atau tidak 
</p>

<p>
    <a href="<?php echo URL::to('admin/buildController/add') ?>" class="btn btn-primary">New</a>
</p>

<div id="table">

</div>
@endsection

@section('script')
<script type="text/javascript">
    $(window).load(function() {
        refreshdata();
    });

    function getNo(id, value) {
        $.post('<?php echo URL::to('admin/buildController/changeNo') ?>',
                {'_token': '<?php echo csrf_token() ?>', 'component': id, 'target_move': value})
                .done(function(data) {
                    console.log(data);
                    refreshdata();
                });
    }

    function refreshdata() {
        $.get('<?php echo URL::to('admin/buildController/showTable') ?>', function(data) {
            console.log(data);
            $("#table").html(data);
        });
    }
</script>
@endsection

