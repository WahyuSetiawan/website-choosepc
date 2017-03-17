@extends ('admin/layout')

@section('content')
<h1>Build Depend</h1>

<p>
    Belum diberikan validasi apakah ada pairwise atau tidak <br>
    masih terdapat depend atau belum untuk menjalankan update
</p>

<p>
    <a href="" onclick="refreshdata()" class="btn btn-success">Refresh</a>
</p>

<div id="table">

</div>
<div id="edit">

</div>
@endsection

@section('script')
<script type="text/javascript">
    var elementActive = null;
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

    function save() {
		if($('#name').val() == ""){
			alert('Fill the name');
			return;
		}
        $.post('<?php echo URL::to('admin/depend/store') ?>',
                {'_token': $('#_token').val(), 'component_1': $('#component_1').val(), 'rule': $('#rule').val(), 'component_2': $('#component_2').val(), 'name': $('#name').val()}
        , function(data) {
            alert('Data Berhasil Disimpan');
            refreshdata();
        });
    }

    function refreshdata() {
        $.get('<?php echo URL::to('admin/depend/showTable') ?>', function(data) {
            $("#table").html(data);
        });
    }

    function editdata(id) {
        $.get('<?php echo URL::to('admin/depend/edit') ?>' + '/' + id, function(data) {
            $("#edit").empty();
            $("#edit").html(data);
            $('#editmodal').modal('show');
        });
    }

    function edit(id) {
        $.post('<?php echo URL::to('admin/depend/update') ?>' + '/' + id,
                {'_token': $('#_token').val(), 'component_1': $('#editmodalcomponent_1').val(), 'rule': $('#editmodalrule').val(), 'component_2': $('#editmodalcomponent_2').val(), 'name': $('#editmodalname').val()}
        , function(data) {
            console.log(data);
            alert('Data Berhasil Disimpan');
            refreshdata();
        });
    }

    /*
     * 
     * 
     */

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

