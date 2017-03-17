@extends ('admin/layout')

@section('content')

<h3>Power Supply</h3>

{!! Form::open(array('url' => 'admin/powersupply/store','method'=>'POST','files'=>true ,'id' => 'formComponent')) !!}
<div class="form-group">
    {!! Form::label('name','Manufactor') !!}
    {!! Form::text('manufactur', '',array('class' => 'form-control')) !!}
</div>
<div class="form-group">
    {!! Form::label('name','Model Number') !!}
    {!! Form::text('model_number', '',array('class' => 'form-control')) !!}
</div>
<div class="form-group">
    {!! Form::label('name','Wattage') !!}
    {!! Form::text('wattage', '',array('class' => 'form-control')) !!}
</div>

<a onclick="addImage()" class="btn btn-default">ADD Image</a>

<div id="addimage" class="row">

</div>

<div class="form-group">
    {!! Form::label('name','Certificate') !!}
    {!! Form::select('rating', $attribut, null, array('class' => 'form-control')) !!}
</div>
<?php $i = 0 ?>
@foreach($dataHeader as $header)
<div class="form-group">
    {!! Form::label('name',$header) !!}
    {!! Form::select('subcriteria['.array_keys($data)[$i].']', $data[array_keys($data)[$i]],null, array('class' => 'form-control')) !!}
</div>
<?php $i++ ?>
@endforeach
<div class="form-group">
    {!! Form::label('name','Price (in Dollar)') !!}
    {!! Form::text('price', '',array('class' => 'form-control')) !!}
</div>

{!! Form::submit('Send',array('class' => 'btn btn-primary','onclick' => 'validate()')) !!}

{!! Form::close() !!}

@endsection

@section ('script')
<script type="text/javascript">
    var i = 0;

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

    function validate() {
        $('#formComponent').validate({
            /*
             * ,'id' => 'formComponent'
             * 'onclick' => 'validate()'
             */
            rules: {
                manufactur: "required",
                wattage: {
                    required: true,
                    number: true
                },
                model_number: {
                    required: true
                }
            }
        });
    }
</script>
@endsection