@extends ('admin/layout')

@section ('content')
<p>
<h1>Description Management</h1>
</p>
<p>
    mengatur apa aja description yang akan ditampilkan kedalam detail product     Beberapa tampilan yang sudah didaftarkan
</p>

<p>
    <?php
    $header = array_keys($datas);
    $i = 0;
    foreach ($datas as $data) {
        ?>

    <h3><?php echo $components[$header[$i]]; ?></h3>
    <p>
        <a href="<?php echo URL::to('admin/description/add') . '/' . $header[$i++] ?>" class="btn btn-primary">New</a>
    </p>
    <table class="table table-striped">
        <tr>
            <th style="width: 50px">No</th>
            <th>Description</th>
            <th class="btn-action-without-show">Action</th>
        </tr>

        <?php
        $j = 1;
        foreach ($data as $dataInner) {
            ?>
            <tr>
                <td>
        <?php echo $j++ ?>
                </td>
                <td>
        <?php echo $dataInner->description ?>
                </td>
                <td>
                    <a href="<?php echo URL::to('admin/description/edit/' . $dataInner->id) ?>" class="btn btn-warning">Edit</a>
                    <a href="<?php echo URL::to('admin/description/destroy/' . $dataInner->id) ?>" class="btn btn-danger">Delete</a>
                </td>
            </tr>
    <?php } ?>

    </table>
<?php } ?>

</p>

@endsection

@section ('script')
<script type="text/javascript">

</script>
@endsection