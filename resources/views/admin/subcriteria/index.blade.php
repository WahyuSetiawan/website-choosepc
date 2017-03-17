@extends ('admin/layout')

@section ('content')
<p>
<h1>SubCriteria</h1>
</p>

{!! Form::open([]) !!}
<div class="form-group">
    <label for="hipotesis">Component Computer</label>
    <select class="form-control input-sm" name="component" id="component">
        <option value="">Choose</option>
        @foreach($comp as $co)
        <option value="{{ $co->id }}">{{ $co->name }}</option>
        @endforeach
    </select>
</div>

<div class="form-group">
    <label for="hipotesis">Criteria</label>
    <select id="criteria" name="criteria" class="form-control input-sm">
    </select>
</div>


<div id="tableGet">

</div>

{!! Form::close() !!}

@endsection

@section('script')
<script>
    $("#component").on('change', function(e) {
        $.get('<?php echo URL::to('admin/ahp/subcriteria/showCrit/') ?>/' + e.target.value, function(data) {
            console.log(data);
            $('#criteria').empty();
            $('#criteria').append('<option value="">Pilih Data</option>');
            $.each(data, function(index, component) {
                $('#criteria').append('<option value="' + component.id_criteria + '">' + component.nama_criteria + '</option>')
            });
            $('#tableGet').empty();
        });
    });
    
    $("#criteria").on("change", function(e) {
        var a = e.target.value;
        console.log(a);
        $.get('<?php echo URL::to('admin/ahp/subcriteria/showSubcriteria/') ?>/' + a, function(data) {
            console.log(data);
            $("#tableGet").html(data);
        });
    });
</script>
@endsection