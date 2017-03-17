@extends ('admin/layout')

@section('content')

<h3><strong>Edit Product </strong><?php echo $title . " " . $product->name ?></h3>

<p>
    - masih cacat apabila di universal, description, dan <br>
    - masih cacat dengan dropdown
    - masih cacat dengan penambahan gambar yang melalui javascript
</p>

{!! Form::open(array('url' => 'admin/product/update/'.$product->id,'method'=>'POST','files'=>true)) !!}
<input type="hidden" name="id" value="<?php echo $product->id ?>">

<div class="form-group">
    {!! Form::label('name','Name') !!}
    {!! Form::text('name', $product->name,array('class' => 'form-control')) !!}
</div>

<div class="form-group">
    {!! Form::label('name','Price') !!}
    {!! Form::text('price', $product->price,array('class' => 'form-control')) !!}
</div>

<div class="form-group">
    {!! Form::label('name','Consumption') !!}
    {!! Form::text('consumption', $product->consumption,array('class' => 'form-control')) !!}
</div>

<a onclick="addImage()" class="btn btn-default">ADD Image</a>

<div id ="addimage" class="row">
    <?php
    $i = 0;
    foreach ($image as $image) {
        ?>
        <div class="form-group col-sm-3">
            {!! Form::label('name','Image') !!}
            <img src="<?php echo URL::asset('image/' . $comp . '/' . $component . "/" . $image->image) ?>" id="<?php echo 'image' . $i ?>" class="thumbnail" width="200" height="200">
            {!! Form::file('imagechange['.$image->id.']', array('class' => 'form-control', 'onchange' => "previewFile(this, 'image".$i."')")) !!}
        </div>
        <?php
        $i++;
    }
    ?>
</div>

<?php
$i = 0;
foreach ($depends as $depend) {
    if ($depend->rule == 1) {
        if (null !== $dependsDatabase[$depend->id]) {
            $database = $dependsDatabase[$depend->id]->depend;
        } else {
            $database = null;
        }
        echo "<div>";
        echo Form::label('name', $depend->name . ' Support');
        echo Form::select('dependselect[' . $depend->id . ']', $dependsvalue[$depend->id], $database, ['class' => 'form-control']);
        echo "</div>";
    } else {
        if (null !== $dependsDatabase[$depend->id]) {
            $database = $dependsDatabase[$depend->id]->value;
        } else {
            $database = null;
        }
        echo "<div>";
        echo Form::label('name', $depend->name . ' Support');
        echo Form::text('dependtext[' . $depend->id . ']', $database, ['class' => 'form-control']);
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
        <?php
        if (isset($descriptionValue[$header[$i]])) {
            echo Form::text('description[' . $header[$i] . ']', $descriptionValue[$header[$i]], array('class' => 'form-control'));
        }else{
            echo Form::text('description[' . $header[$i] . ']', null, array('class' => 'form-control'));
        }
        $i++;
        ?>

    </div>
<?php } ?>



<?php $i = 0 ?>
@foreach($dataHeader as $header)
<div class="form-group">
    {!! Form::label('name',$header) !!}
    <?php 
    if(isset($criteriaValue[array_keys($data)[$i]])){
        echo Form::select('add[' . array_keys($data)[$i] . ']', $data[array_keys($data)[$i]], $criteriaValue[array_keys($data)[$i]], array('class' => 'form-control')) ;
    }else{
        echo Form::select('add[' . array_keys($data)[$i] . ']', $data[array_keys($data)[$i]], null, array('class' => 'form-control')) ;
    }
    ?>
</div>
<?php $i++ ?>
@endforeach

{!! Form::submit('Send',array('class' => 'btn btn-success')) !!}

{!! Form::close() !!}

@endsection

@section ('script')

<script type="text/javascript">
    function previewFile(input, image) {
        var preview = document.getElementById(image); //selects the query named img
        var file = input.files[0]; //sames as here
        var reader = new FileReader();

        reader.onloadend = function() {
            preview.src = reader.result;
        };

        if (file) {
            reader.readAsDataURL(file); //reads the data as a URL
        } else {
            preview.src = "";
        }
    }
    var i = <?php echo count($image) ?>;

    function previewFile(input, image) {
        var preview = document.getElementById(image); //selects the query named img
        var file = input.files[0]; //sames as here
        var reader = new FileReader();

        reader.onloadend = function() {
            preview.src = reader.result;
        };

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