@extends ('admin/layout')

@section ('content')
<a href="{{URL::to('admin/ahp/schema/create')}}" class="btn btn-primary" >baru</a>

{!! Form::open([]) !!}
<div class="form-group">
    <label for="hipotesis"></label>
    <select class="form-control input-sm" name="hipotesis" id="hipotesis">
        <option value=""></option>
        @foreach($hipo as $hi)
        <option value="{{ $hi->id }}">{{ $hi->name }}</option>
        @endforeach
    </select>
</div>
<div class="form-group">
    <label for="component"></label>
    <select class="form-control input-sm" name="component" id="component">
        <option value=""></option>
    </select>
</div>
<div class="form-group">
    <label for="criteria"></label>
    <select class="form-control input-sm" name="criteria" id="criteria">
        <option value=""></option>
    </select>
</div>
<div>
    <?php
    App\Http\Controllers\SchemaBayesAhpController::showtab($table);
    ?>
</div>

{!! Form::close() !!}

@endsection

@section('script')
<script>
    $("#hipotesis").on("change", function(e){
    var a = e.target.value;
            console.log(a);
            $.get('{{ URL::to('admin/ahp/schema/show/') }}' + '/' + a, function(data){
            console.log(data);
                    $('#component').empty();
                    $('#component').append('<option value="">Pilih Data</option>');
                    $.each(data, function(index, component){
                    $('#component').append('<option value="' + component.id + '">' + component.name + '</option>')
                    });
                    $('#criteria').empty();
            });
    });
            $("#component").on("change", function(e){
    var a = e.target.value;
            console.log(a);
            $.get('{{ URL::to('admin/ahp/schema/showCat/') }}' + '/' + a, function(data){
            console.log(data);
                    $('#criteria').empty();
                    $('#criteria').append('<option value="">Pilih Data</option>');
                    $.each(data, function(index, component){
                    $('#criteria').append('<option value="' + component.id_criteria + '">' + component.nama_criteria + '</option>')
                    });
            });
    });
            $token = "{{ csrf_token() }}";
            $("select[name='a']").on("change", function(){
            var a = $(this).attr('id');
            var b = "#b" + a.charAt(1);
            console.log(a);
            $(b).val("1");
            var $var1 = $(this).val(); var $var2 = $(b).val();
            $.post('{{ URL::to('admin/ahp/schema/parStore/') }}', 
                {_token: $token, var1 : $var1, var2 : $var2, id_1 : $(this).attr('a'), id_2 : $(b).attr('a')})
            .done(function(data){
		    console.log(data);
            });
//		console.log($(b).attr('a'));
    });
            $("select[name='b']").on("change", function(){
            var a = $(this).attr('id');
            var b = "#a" + a.charAt(1);
            console.log(b);
            $(b).val("1");
            var $var1 = $(this).val(); var $var2 = $(b).val();
            $.post('{{ URL::to('admin/ahp/schema/parStore/') }}', 
                {_token: $token, var1 : $var2, var2 : $var1, id_1 : $(b).attr('a'), id_2 : $(this).attr('a')})
            .done(function(data){
            console.log(data);
            });
            console.log($(b).attr('a'));
    });
</script>
@endsection