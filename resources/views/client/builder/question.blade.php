@extends ('client/layout')

@section ('content')
<div class="container documents">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Choose what you need</h3>
        </div>
        <div class="panel-body">
            {!! Form::open(array('url' => URL::to('bayes'))) !!}
            <div>
                <h4>Berapa Budget Yang anda punya untuk merakit seperangkat komputer</h4>
            </div>
            <p>
                <label for="amount">Maximum budget :</label>
                {!! Form::text('amount','',['readonly','style'=>'border:0; width: 50px; text-align: right; color:#f6931f; font-weight:bold','id'=>'amount']) !!}
                <label>Dollar</label>
            </p>
            <p>
            <div id="slider"></div>
            </p>
        </div>
        <div class="panel-body">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="panel-title">Aplikasi apa yang anda sering gunakan dalam pemakaian komputer sehari hari [tan mau bahasa inggris atau gak ?]</h4>
                </div> 
                <div class="tablle">
                    <table class="table table-borderless">
                        <?php foreach ($evids as $evid) { ?>
                            <tr><td style="width: 10px">{!! Form::checkbox('evidence[]', $evid->id,false, array('class' => 'checkbox'))!!}</td>
                                <td style="text-align: left">{!! Form::label($evid->question, null, array('class'=>'left')) !!}</td>
                            </tr>
                        <?php } ?>
                    </table>


                </div>
            </div>
            <div style="text-align: center">
                {!! Form::submit('Build!', array('class' => 'btn btn-success btn-lg'))!!}
            </div>
            {!! Form::close() !!}
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
    $(function() {
        $("#slider").slider({
            range: "min",
            value: 2000000 / 10000,
            min: 1500000 / 10000,
            max: 20000000 / 10000,
            slide: function(event, ui) {
                $("#amount").val(ui.value);
            }
        });
        $("#amount").val($("#slider").slider("value"));
    });
</script>
@endsection