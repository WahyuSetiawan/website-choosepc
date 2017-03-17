@extends ('client/layout')

@section ('content')
<div style="height: 79%">
    <div class="jumbotron">
        <div class="jumbotron-contents">
            <h1>Choose My PC</h1>
            <p>
                This website was created as a means to help beginners to pick their parts to build their own gaming PC. Prices and parts are regularly updated depending on the current situation

                ChooseMyPC aims to simplify things by providing a parts list to start you off, which can then be customised to your particular needs
            </p>

            <a href="{{URL::to('question')}}" class="btn btn-primary btn-lg">Let's Build</a>
        </div>
    </div> 
</div>


@endsection