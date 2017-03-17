@extends ('admin/layout')

@section ('content')
<p>
    <a class="btn btn-success" onclick="refreshdata()">Refresh</a>
</p>
<p>
<div id="table">

</div>
</p>
@endsection

@section ('script')
<script type="text/javascript">
    var elementActive = null;
    $(window).load(function() {
        refreshdata();
    });
    function getNo(id, value) {
        $.post('<?php echo URL::to('admin/admin/changeNo') ?>',
                {'_token': '<?php echo csrf_token() ?>', 'component': id, 'target_move': value})
                .done(function(data) {
                    console.log(data);
                    refreshdata();
                });
    }

    function save() {
        var foto = $('#add_image').prop("files")[0];
        var formData = new FormData();
        console.log(formData);
        $.post('<?php echo URL::to('admin/adminstore') ?>',
                {}
        //{'_token': $('#_token').val(), 'username': $('#add_username').val(), 'password': $('#add_password').val(), 'file': $('#add_image').val()}
        //{'form' => $('add_form').serialize()}
        , function(data) {
            console.log(data);
        });
    }

    function refreshdata() {
        $.get('<?php echo URL::to('admin/showtable') ?>', function(data) {
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



    $(document).ready(function(e) {
        $("#uploadimage").on('submit', (function(e) {
            e.preventDefault();
            $("#message").empty();
            $('#loading').show();
            $.ajax({
                url: "ajax_php_file.php", // Url to which the request is send
                type: "POST", // Type of request to be send, called as method
                data: new FormData(this), // Data sent to server, a set of key/value pairs (i.e. form fields and values)
                contentType: false, // The content type used when sending data to the server.
                cache: false, // To unable request pages to be cached
                processData: false, // To send DOMDocument or non process ed data file it is set to false
                success: function(data)   // A function to be called if request succeeds
                {
                    $('#loading').hide();
                    $("#message").html(data);
                }
            });
        }));

// Function to preview image after validation
        $(function() {
            $("#file").change(function() {
                $("#message").empty(); // To remove the previous error message
                var file = this.files[0];
                var imagefile = file.type;
                var match = ["image/jpeg", "image/png", "image/jpg"];
                if (!((imagefile == match[0]) || (imagefile == match[1]) || (imagefile == match[2])))
                {
                    $('#previewing').attr('src', 'noimage.png');
                    $("#message").html("<p id='error'>Please Select A valid Image File</p>" + "<h4>Note</h4>" + "<span id='error_message'>Only jpeg, jpg and png Images type allowed</span>");
                    return false;
                }
                else
                {
                    var reader = new FileReader();
                    reader.onload = imageIsLoaded;
                    reader.readAsDataURL(this.files[0]);
                }
            });
        });
        function imageIsLoaded(e) {
            $("#file").css("color", "green");
            $('#image_preview').css("display", "block");
            $('#previewing').attr('src', e.target.result);
            $('#previewing').attr('width', '250px');
            $('#previewing').attr('height', '230px');
        }
        ;
    });
</script>
@endsection