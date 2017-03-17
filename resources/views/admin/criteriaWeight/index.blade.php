@extends ('admin/layout')

@section ('content')
<p>
<h1>Criteria Pairwise</h1>
</p>
{!! Form::open([]) !!}
<div class="form-group">
    <label for="hipotesis">Hipotensis</label>
    <select class="form-control input-sm" name="hipotesis" id="hipotesis">
        <option value="">Choose</option>
        @foreach($hipo as $hi)
        <option value="{{ $hi->id }}">{{ $hi->name }}</option>
        @endforeach
    </select>
</div>
<div class="form-group">
    <label for="hipotesis">Component Computer</label>
    <select class="form-control input-sm" name="component" id="component">

    </select>
</div>


<div id="tableGet">

</div>

{!! Form::close() !!}

@endsection

@section('script')
<script>
    $("#hipotesis").on('change', function(e) {
        $.get('<?php echo URL::to('admin/ahp/criteriaWeight/getCrit/') ?>' + '/' + e.target.value, function(data) {
            console.log(data);
            $('#component').empty();
            $('#component').append('<option value="">Pilih Data</option>');
            $.each(data, function(index, component) {
                $('#component').append('<option value="' + component.id + '">' + component.name + '</option>')
            });
            $('#tableGet').empty();
        });
    });
    $("#component").on("change", function(e) {
        var a = e.target.value;
        $.get('<?php echo URL::to('admin/ahp/criteriaWeight/showPair/') ?>' + '/' + $('#hipotesis').val() + '/' + a, function(data) {
            console.log(data);
            $("#tableGet").html(data);
        });
    });
    function changeValueB(id_hiposesis, id_component, a, b, val1, val2) {
        $.post('<?php echo URL::to('admin/ahp/criteriaWeight/parStore/') ?>',
                {_token: $token, var1: a, var2: b, id_component: id_component, id_criteria1: val1, id_criteria2: val2, id_hipotesis: id_hiposesis})
                .done(function(data) {
                    console.log(data);
                    $.get('<?php echo URL::to('admin/ahp/criteriaWeight/showPair/') ?>' + '/' + $('#hipotesis').val() + '/' + $('#component').val(), function(data) {
                        console.log(data);
                        $("#tableGet").html(data);
                    });
                });
    }
    $token = "<?php echo csrf_token() ?>";
</script>
@endsection