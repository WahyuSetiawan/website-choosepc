@extends ('admin/layout')

@section ('content')
<p>
<h1>Change Rule Bayes</h1>
</p>
{!! Form::open(array('url' => 'admin/rule/update/'.$idHipo)) !!}
<table class="table table-striped">

    @foreach ($evids as $evid)
    <tr>
        <td style="width: 10px">{!! Form::checkbox('checkboxRule[]', $evid->id, App\Http\Controllers\RuleBayesController::getTrue($idHipo, $evid->id), array('class' => 'checkbox'))!!}</td>
        <td style="text-align: left">{!! Form::label($evid->name, null, array('class'=>'left')) !!}</td>
        <td style="text-align: left">{!! Form::label($evid->question, null, array('class'=>'left')) !!}</td>
    </tr>
    @endforeach

</table>

{!! Form::submit('Send',array('class' => 'btn btn-success')) !!}

{!! Form::close()!!}
@endsection