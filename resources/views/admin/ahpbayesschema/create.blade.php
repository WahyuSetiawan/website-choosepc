@extends ('admin/layout')

@section ('content')
{!! Form::open([])!!}

{!! Form::label('nama', 'Nama') !!}
<select class="form-control" onchange="">
    @foreach($hipos as $hipo)
    <option value="{{$hipo->id}}" onclick="createElementCategori(this.innerHTML)">{{$hipo->name}}</option>
    @endforeach
</select>

<br><div id="categori"></div>

<br><div id="weightcategori"></div>

{!! Form::close()!!}
@endsection 


<?php 
/*
 * 
 *  
 */


/* 
 * 
 * 
 */
?>
@section ('script')
<script>
    
    function viewWeightAhp(){
        var weightcategori = document.getElementById('weightcategori');
        var containerWeightCategori = document.getElementById('containerWeightCategori');
        
        if(containerWeightCategori){
            weightcategori.removeChild(containerWeightCategori);
        }
        
        var heading = createElement('div','Data bobot',{class:'panel-heading'},[]);
        var body = createElement('div','',{class:'panel-body'});
        
        createElement('div','',{class:'panel panel-primary', id:'containerWeightCategori'},[heading, body],'weightcategori');
    }
    
    function createElementCategori(a){
        var cat = document.getElementById('categori');
        var container = document.getElementById('container');
        
        if(container){
        cat.removeChild(container);
        }
        
        var checkbox = 
            createElement('div','',{class:'btn-group',role:'group'},[
            <?php foreach ($comcoms as $comcom){ ?>
                    createElement('button','{{$comcom->name}}', {type:'button', class:'btn btn-default',onclick:'viewWeightAhp()', value:'{{$comcom->id}}'}),
            <?php } ?>
                ])
        ;
        
        
        var panelhead = createElement('div','Categori',{class:'panel-heading'});
        var panelbody = createElement('div', '', {class:'panel-body'},[checkbox]);
                                
        createElement('div','',{id:'container',class:'panel panel-primary'},[panelhead,panelbody],'categori');
    }
    
    /*
    * 
    * 
    * for generate element
     */
    
    function createElementInput(){
        var element  = document.createElement(arguments[0]),
            type     = arguments[1],
            attr     = arguments[2];
    
    
        if(type){
            element.setAttribute('type', type);
        }
        
        for(var key = 0; key < Object.keys(attr).length ; key++){
            var name = Object.keys(attr)[key],
                 value = attr[name],
                 tempAttr = document.createAttribute(name);
                 tempAttr.value = value;
            element.setAttributeNode(tempAttr);
        }
        
        return element;
    }
    
    function createElement(){
        var element  = document.createElement(arguments[0]),
            text     = arguments[1],
            attr     = arguments[2],
            append   = arguments[3],
            appendTo = arguments[4];

        for(var key = 0; key < Object.keys(attr).length ; key++){
            var name = Object.keys(attr)[key],
                 value = attr[name],
                 tempAttr = document.createAttribute(name);
                 tempAttr.value = value;
            element.setAttributeNode(tempAttr);
        }

        if(append){
            for(var _key = 0; _key < append.length; _key++) {
                element.appendChild(append[_key]);
            }
        }

        if(text) element.appendChild(document.createTextNode(text));

        if(appendTo){
            var target = appendTo === 'body' ? document.body : document.getElementById(appendTo);
            target.appendChild(element);
        }       

        return element;
    }
</script>
@endsection