@extends ('admin/layout')

@section('content')
<h1>Build Depend</h1>

<p>
    Belum diberikan validasi apakah ada pairwise atau tidak <br>
    masih terdapat depend atau belum untuk menjalankan update
</p>

<p>
    Choose Depend :
    <?php
    if (isset($_GET['id'])) {
        echo Form::select('choosedepend', $datas, $_GET['id'], ['id' => 'choosedepend', 'onchange' => '"refreshdata($(' . "'#choosedepend'" . ').val())"']);
    } else {
        echo Form::select('choosedepend', $datas, null, ['id' => 'choosedepend', 'onchange' => 'refreshdata($(' . "'#choosedepend'" . ').val())']);
    }
    ?>
</p>

<div id="table">

</div>

<div id="edit">

</div>
@endsection

@section('script')
<script type="text/javascript">
    var elementActive = null;
    $(window).load(function () {
        refreshdata($('#choosedepend').val());
    });

    function save() {
        console.log($('#choosedepend').val());
        $.post('<?php echo URL::to('admin/valuedepend/store') ?>',
                {'_token': $('#_token').val(), 'depend': $('#choosedepend').val(), 'value': $('#value').val()}
        , function (data) {
            alert('Data Berhasil Disimpan');
            $('#addmodal').modal('hide');
            refreshdata($('#choosedepend').val());
        });
    }

    function edit(id) {
        $.post('<?php echo URL::to('admin/valuedepend/update') ?>' + '/' + id,
                {'_token': $('#edit_token').val(), 'value': $('#editvalue').val()}
        , function (data) {
            $('#editmodal').modal('hide');
            refreshdata($('#choosedepend').val());
        });
    }

    function refreshdata(id) {
        $.get('<?php echo URL::to('admin/valuedepend/showTable') ?>' + '/' + id, function (data) {
            $("#table").html(data);
        });
    }

    function editModal(id) {
        $.get('<?php echo URL::to('admin/valuedepend/edit') ?>' + '/' + id, function (data) {
            $("#edit").html(data);
            $('#editmodal').modal('show');
        });
    }
</script>
@endsection

