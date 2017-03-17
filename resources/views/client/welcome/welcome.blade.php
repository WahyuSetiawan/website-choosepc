@extends ('client/layout')

@section ('content')
<!-- background-image: url("<?php //echo URL::asset('image/system/background.jpg')    ?>")-->

<div id="setImageBackground" style="width: 100%;height: 100%">
    <div  id="imageBackground" class="col-lg-12" style=';background-size: cover;width: 100%;height: 100%'>

    </div>
</div>
<div>
    <div >

    </div>
</div>

<div style="width: 40%;left: 3%;top: 53%;position: absolute">
    <div class="jumbotron">
        <div class="jumbotron-contents">
            <h1>Choose My PC</h1>
            <p>
                <a href="{{URL::to('question')}}" class="btn btn-primary btn-lg" style="position: static;">Let's Build</a>
            </p>
            <p>
                This website was created as a means to help beginners to pick their parts to build their own gaming PC. Prices and parts are regularly updated depending on the current situation
            </p>
        </div>
    </div> 
</div>

@endsection

@section ('script')
<script>
    var url = '<?php echo URL::asset('image/system') ?>';
    var image = ['background (0).jpeg', 'background (1).jpeg', 'background (2).jpeg', 'background (3).jpeg', 'background (4).jpeg', 'background (5).jpeg', 'background (6).jpeg'];
    imagei =  1;
    i = 0;

    $(window).on('load', function() {
        console.log("url('" + url + '/' + image[i] + "')");
        document.getElementById('imageBackground').style.backgroundImage = "url('" + url + '/' + image[0] + "')";
        setInterval(animationWeb, 50);
    });

    function animationWeb() {
        console.log(i);
        $('#imageBackground').fadeTo(4300, 0,function (){
            document.getElementById('imageBackground').style.backgroundImage = "url('" + url + '/' + image[imagei++] + "')";
            if (imagei === image.length){
                imagei =  0;
            }
        });
        $('#imageBackground').fadeTo(4300, 1);
    }
</script>
@endsection