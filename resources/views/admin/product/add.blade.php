@extends ('admin/layout')

@section('content')

<h3><strong>Add Product </strong><?php echo $title ?></h3>

{!! Form::open(array('url' => 'admin/product/store/'.$component,'method'=>'POST','files'=>true, 'id' => 'formproduct')) !!}
<div class="form-group">
    {!! Form::label('labelname','Name') !!}
    {!! Form::text('name', '',array('class' => 'form-control')) !!}
</div>

<div class="form-group">
    {!! Form::label('labelname','Price') !!}
    {!! Form::text('price', '',array('class' => 'form-control')) !!}
</div>

<div class="form-group">
    {!! Form::label('labelname','Consumption') !!}
    {!! Form::text('consumption', '',array('class' => 'form-control')) !!}
</div>

<a onclick="addImage()" class="btn btn-default">ADD Image</a>

<div id="addimage" class="row">

</div>

<?php
$i = 0;
foreach ($depends as $depend) {
    if ($depend->rule == 1) {
        echo "<div>";
        echo Form::label('name', $depend->name . ' Support');
        echo Form::select('dependselect[' . $depend->id . ']', $dependsvalue[$depend->id], null, ['class' => 'form-control']);
        echo "</div>";
    } else {
        echo "<div>";
        echo Form::label('name', $depend->name . ' Support');
        echo Form::text('dependtext[' . $depend->id . ']', null, ['class' => 'form-control']);
        echo '</div>';
    }
}
?>

<?php
$i = 0;
$header = array_keys($description);
?>
<?php foreach ($description as $descrip) { ?>
    <div class="form-group">
        {!! Form::label('name',$descrip) !!}
        {!! Form::text('description['.$header[$i++].']', '', array('class' => 'form-control')) !!}
    </div>
<?php } ?>

<?php $i = 0 ?>
@foreach($dataHeader as $header)
<div class="form-group">
    {!! Form::label('name',$header) !!}
    {!! Form::select('subcriteria['.array_keys($data)[$i].']', $data[array_keys($data)[$i]],null, array('class' => 'form-control')) !!}
</div>
<?php $i++ ?>
@endforeach

{!! Form::submit('Send',array('class' => 'btn btn-success', 'onclick' => 'validate()')) !!}

{!! Form::close() !!}

@endsection

@section ('script')
<script type="text/javascript">
    var i = 0;

    function validate() {
        $('#formproduct').validate({
            //'onclick' => 'validate()'
            rules : {
                name : "required",
                price : {
                    required : true,
                    number : true
                },
                consumption : {
                    required :true,
                    number : true
                }
            }
        });
    }

    function previewFile(input, image) {
        var preview = document.getElementById(image); //selects the query named img
        var file = input.files[0]; //sames as here
        var reader = new FileReader();

        reader.onloadend = function() {
            preview.src = reader.result;
        }

        if (file) {
            reader.readAsDataURL(file); //reads the data as a URL
        } else {
            preview.src = "";
        }
    }

    function addImage() {
        if (i < 4) {
            var imageplace = document.getElementById('addimage');
            var div = document.createElement('div');
            div.className = 'form-group col-sm-3';

            var label = document.createElement('label');
            label.innerHTML = 'Image ' + (i + 1);

            var image = document.createElement('img');
            image.id = 'Image ' + (i + 1);
            image.className = 'thumbnail';
            image.src = '<?php echo URL::to("system/default-image-upload.jpg") ?>';
            image.width = 200;
            image.height = 200;

            var file = document.createElement('input');
            file.type = 'file';
            file.name = 'image[' + i + ']';
            file.className = 'form-control';

            file.addEventListener('change', function() {
                console.log('click');
                previewFile(file, image.id);
            });

            div.appendChild(label);
            div.appendChild(image);
            div.appendChild(file);

            imageplace.appendChild(div);

            i++;
        }
    }
</script>
@endsection