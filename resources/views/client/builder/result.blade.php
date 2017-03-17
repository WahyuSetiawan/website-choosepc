@extends ('client/layout')

@section ('content')
<div class="container documents">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Result</h3>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-8">
                    <div id="graph"></div>
                </div>
                <div class="col-sm-4">
                    Yang dipunya : <?php echo "$" . $price . '<br>'; ?>
                    Yang terpakai : <?php echo "$" . $bill . '<br>'; ?>
                    Tersisa : <?php echo "$" . ($price - $bill) . '<br>'; ?>
                </div>
            </div>

        </div>
        <div class="table">
            <table class="table">
                <?php
                $header = array_keys($productFix);
                $i = 0;
                foreach ($productFix as $product) {
                    ?>
                    <tr>
                        <?php if (isset($headerComponent[$product->component])) { ?>
                            <td style="width: 19%"><?php echo $headerComponent[$product->component] ?></td>
                            <td style="width: 50px">
                                <?php if (!empty($getimage[$product->id]->image)) { ?>
                                    <img src="{{URL::asset('image/'.$product->component.'/'.$product->id."/".$getimage[$product->id]->image)}}" width="48" height="48" class="thumbnail">
                                <?php } ?>
                            </td>
                            <td><a href="<?php echo URL::to('/showProduct/' . $product->component . '/' . $product->id) ?>"><?php echo $product->name ?></a></td>
                            <td><?php echo "$" . $product->price ?></td>
                        <?php } else 
                            { ?>
                            <td style="width: 19%"><?php echo $headerComponent['psu'] ?></td>
                            <td style="width: 50px">
                                <?php if (!empty($getimage['psu']->image)) { ?>
                                    <img src="{{URL::asset('image/psu/'.$product->id_psu."/".$getimage['psu']->image)}}" width="48" height="48" class="thumbnail">
                                <?php } ?>
                            </td>
                            <td><a href="<?php echo URL::to('/showPsu/' . $product->id_psu) ?>"><?php echo $product->manufactur.' '. $product->model_number ?></a></td>
                            <td><?php echo "$" . $product->price ?></td>
                        <?php } ?>
                    </tr>
                    <?php
                    $i++;
                }
                ?>
            </table>
        </div>

    </div>
</div>

@endsection 

@section ('script')
<?php
$hipos = array_keys($bayes);
$data = "";
for ($i = 0; $i < count($bayes); $i++) {
    $data = $data . "{value: " . ($bayes[$hipos[$i]] * 100) . ", label : '" . $hipos[$i] . "'},";
}
?>
<script type="text/javascript">
    Morris.Donut({
        element: 'graph',
        data: [<?php echo $data ?>],
        formatter: function(x) {
            return x + "%"
        }
    }).on('click', function(i, row) {
        console.log(i, row);
    });
</script>
@endsection