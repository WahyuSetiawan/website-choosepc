@extends ('admin/layout')

@section('content')

<h1>Rule Bayes</h1>

@foreach($hipos as $hipo)

<div class="panel panel-primary">
    <div class="panel-heading">
        <label class="panel-title">{{$hipo->name}}</label>
        <a href="{{URL::to('admin/rule/edit/')}}/{{$hipo->id}}" class="btn btn-warning btn-sm">Setting</a>
        <?php
        $evids = App\RuleBayesModel::where('id_hipo', '=', $hipo->id)->get();
        ?>
    </div>
    <div class="table">
        <table class="table table-bordered table-striped">
            <tr>
                <th>No</th>
                <th>Name</th>
                <th>Evidence</th>
                <th>Action</th>
            </tr>
            <?php $i = 1 ?>
            @foreach ( $evids as $evid )
            <tr>            

                <td style="width: 80px">{{ $i++ }}</td>
                <?php
                $nameEvid = App\EvidenceModel::find($evid->id_evid);
                ?>
                <td style="width: 300px">{{ $nameEvid->name}} </td>
                <td>{{ $nameEvid->question}}</td>
                <td style="width: 85px">
                    <a href="{{URL::to('admin/rule/destroy')}}/<?php echo App\Http\Controllers\RuleBayesController::getIDRule($hipo->id, $nameEvid->id) ?>" class="btn btn-danger">Delete</a>
                </td>
            </tr>
            @endforeach
        </table>
    </div>
</div>

@endforeach

@endsection