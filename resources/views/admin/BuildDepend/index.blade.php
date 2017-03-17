@extends ('admin/layout')

@section('content')
<h1>Build Depend</h1>

<p>
    Belum diberikan validasi apakah ada pairwise atau tidak <br>
    masih terdapat depend atau belum untuk menjalankan update
</p>

<p>
    <a href="" onclick="refreshdata()" class="btn btn-success">Refresh</a>
</p>

<div id="table">

</div>
@endsection

@section('script')
<script type="text/javascript">
    var elementActive = null;
    $(window).load(function() {
        refreshdata();
    });
    function getNo(id, value) {
        $.post('<?php echo URL::to('admin/buildDepend/changeNo') ?>',
                {'_token': '<?php echo csrf_token() ?>', 'component': id, 'target_move': value})
                .done(function(data) {
                    console.log(data);
                    refreshdata();
                });
    }

    function criteriaComponent(component, componentcomputer) {

    }


    function addDepend(component) {
        //console.log(document.getElementById(component));
        $('#new').empty();
        var table = document.getElementById(component);
        var elementTR = document.createElement('tr');
        elementTR.id = 'new';
        var elementTDcriteria = document.createElement('td');
        var selectCriteria = document.createElement('select');
        selectCriteria.id = 'criteria';
        $.get('<?php echo URL::to('admin/buildDepend/getcriteria/') ?>' + "/" + component, function(data) {
            for (var i = 0; i < data[0].length; i++) {
                var elementoption = document.createElement('option');
                elementoption.value = data[0][i];
                elementoption.innerHTML = data[1][i];
                selectCriteria.appendChild(elementoption);
            }
        });
        elementTDcriteria.appendChild(selectCriteria);
        elementTR.appendChild(elementTDcriteria);
        var elementTDrule = document.createElement('td');
        var select = document.createElement('select');
        select.id = 'rule';
        $.get('<?php echo URL::to('admin/buildDepend/rule/') ?>', function(data) {
            for (var i = 0; i < data[0].length; i++) {
                var elementoption = document.createElement('option');
                elementoption.value = data[0][i];
                elementoption.innerHTML = data[1][i];
                select.appendChild(elementoption);
            }
        });
        elementTDrule.appendChild(select);
        elementTR.appendChild(elementTDrule);
        var elementTDcriteriaComponent = document.createElement('td');
        var selectcomponent = document.createElement('select');
        $.get('<?php echo URL::to('admin/buildDepend/component/') ?>', function(data) {
            for (var i = 0; i < data[0].length; i++) {
                var elementoption = document.createElement('option');
                elementoption.value = data[0][i];
                elementoption.innerHTML = data[1][i];
                selectcomponent.appendChild(elementoption);
            }
        });

        var selects = document.createElement('select');
        selects.id = 'criteriaComputer';

        var button = document.createElement('input');
        button.type = 'button';
        button.className = 'btn btn-success';
        button.value = 'Save';

        button.addEventListener('click', function() {
            $.post('<?php echo URL::to('admin/buildDepend/store') ?>',
                    {'_token': '<?php echo csrf_token() ?>', 'component_queue': component, 'criteria_1': document.getElementById('criteria').value,
                        'rule': document.getElementById('rule').value, 'criteria_2': document.getElementById('criteriaComputer').value}).done(function(data) {
                console.log(data);
            });
            refreshdata();
        });

        button.addEventListener('click', function() {
            //criteria.appendChild(button);
        });


        selectcomponent.addEventListener('change', function() {
            fillCriteriaComputer(selectcomponent.value);
        });
        elementTDcriteriaComponent.appendChild(selectcomponent);
        elementTDcriteriaComponent.appendChild(selects);
        elementTDcriteriaComponent.appendChild(button);
        elementTR.appendChild(elementTDcriteriaComponent);
        elementActive = elementTR;
        table.appendChild(elementTR);
    }

    function fillCriteriaComputer(component) {
        $.get('<?php echo URL::to('admin/buildDepend/getcriteria/') ?>' + "/" + component, function(data) {
            $('#criteriaComputer').empty();
            for (var i = 0; i < data[0].length; i++) {
                var option = document.createElement('option');
                option.value = data[0][i];
                option.innerHTML = data[1][i];
                $('#criteriaComputer').append(option);
            }
        });
    }

    function refreshdata() {
        $.get('<?php echo URL::to('admin/buildDepend/showTable') ?>', function(data) {
            $("#table").html(data);
        });
    }
</script>
@endsection

