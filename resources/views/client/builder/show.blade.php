@extends ('client/layout')

@section('content')
<div class="container documents">
    <h3><strong><?php echo $title ?></strong> <?php echo $product->name ?></h3>
    <div class="row">
        <?php foreach ($images as $image) { ?>
            <div class="col-md-3" style="margin: 20px">
                <img src="{{URL::asset('image/'.$comp.'/'.$image->id_product."/".$image->image)}}" width="300" height="300" class="thumbnail">
            </div>
        <?php } ?>
    </div>

    <p>
    <div>
        <table class="table table-striped">
            <?php
            $i = 0;
            $header = array_keys($description);
            ?>
            <?php foreach ($description as $descrip) { ?>
                <tr>
                    <td>
                        <?php echo $descrip ?>
                    </td>

                    <td>
                        <?php echo $descriptionValue[$header[$i++]] ?>
                    </td>
                </tr>
            <?php } ?>
            <?php
            $i = 0;
            $header = array_keys($dataHeader);
            ?>
            <?php foreach ($dataHeader as $descrip) { ?>
                <tr>
                    <td>
                        <?php echo $descrip ?>
                    </td>

                    <td>
                        <?php echo$data[$header[$i]][$criteriaValue[$header[$i++]]] ?>
                    </td>
                </tr>
            <?php } ?>
        </table>
    </div>
</p>
</div>

@endsection