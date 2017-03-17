@extends ('admin/layout')

@section ('content')

<p><h1>Criteria</h1></p>

{!! Form::open([]) !!}
<div class="form-group">
    <label for="hipotesis"></label>
    <select class="form-control input-sm" name="component" id="component">
        <option value="">Choose</option>
        @foreach($comp as $co)
        <option value="{{ $co->id }}">{{ $co->name }}</option>
        @endforeach
    </select>
</div>


<div id="tableGet">

</div>

{!! Form::close() !!}

@endsection

@section('script')
<script>
    $("#component").on("change", function(e) {
        var a = e.target.value;
        console.log(a);
        $.get('<?php echo URL::to('admin/ahp/criteria/showCrt/') ?>' + '/' + a, function(data) {
            console.log(data);
            $("#tableGet").html(data);
        });
    });
</script>
@endsection