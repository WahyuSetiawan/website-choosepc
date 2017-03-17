@extends('admin.layout')

@section('content')
<div class="box-default">
    <a href="{{URL::to('admin/hipo/create')}}" class="btn btn-primary">New</a>
</div>
<div class="content">
    <table class="table table-bordered">
        <tr>
            <th>Rule</th>
            @foreach($evid as $e)
            <th>{{ $e->name }}</th>
            @endforeach
        </tr>
        @foreach($hipo as $h)
        <tr>
            <td>{{ $h->name }}</td>
            @foreach($data as $dat)
            <td>{{ $dat->nilai }}</td>
            @endforeach
            </td>
            @endforeach
        </tr>

    </table>
</div>
@endsection