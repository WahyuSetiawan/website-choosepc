@extends ('admin/layout')

@section ('content')
<p><h1><?php echo $title ?></h1></p>


<div class="panel panel-primary">
    <div class="panel-heading">
        <label class="panel-title">Component <?php echo $title ?></label>
        <a href="<?php echo URL::to('admin/product/' . $comp . '/add/') ?>" class="btn btn-primary btn-sm">New</a>
    </div>
    <div class="table">
        <table class="table table-striped">
            <tr>
                <th>No</th>
                <th>Name</th>
                <th>Price</th>
                <th>Consumption</th>
                <?php foreach ($descriptions as $desc) { ?>
                    <th><?php echo $desc ?></th>
                <?php } ?>
                <th class="btn-action-with-show">Action</th>
            </tr>
            <?php
            if (isset($_GET['page'])) {
                $No = (($_GET['page'] - 1) * $countPagination) + 1;
            } else {
                $No = 1;
            }

            foreach ($product as $pro) {
                ?>
                <tr>
                    <td><?php echo $No++ ?></td>
                    <td><?php echo $pro->name ?></td>
                    <td><?php echo $pro->price?></td>
                    <td><?php echo $pro->consumption?></td>
                    <?php
                    $key = array_keys($descriptions);
                    $i = 0;
                    foreach ($descriptions as $desc) {
                        if (isset($dataProduct[$pro->id][$key[$i]])) {
                            echo '<td>';
                            echo $dataProduct[$pro->id][$key[$i++]];
                            echo '</td>';
                        } else {
                            echo '<td>';
                            echo '</td>';
                        }
                    }
                    ?>
                    <td>
                        <a href="<?php echo URL::to('admin/product/' . $comp . '/' . $pro->id) . '/show' ?>" class="btn btn-info">Detail</a>
                        <a href="<?php echo URL::to('admin/product/' . $comp . '/' . $pro->id) . '/edit' ?>" class="btn btn-warning">Edit</a>
                        <a href="<?php echo URL::to('admin/product/destroy/' . $pro->id) ?>" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
            <?php }
            ?>
            </td>
        </table>

    </div>
</div>

<?php
$product->setPath('');
echo $product->render()
?>

@endsection

@section ('script')
<script type="text/javascript">

</script>
@endsection