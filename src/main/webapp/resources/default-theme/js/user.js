$(function () {
	  $("#datepicker").datepicker({
		  	format: 'dd/mm/yyyy',
	        autoclose: true, 
	        todayHighlight: true
	  }).datepicker('update', new Date());
	});

/*
$('#datepicker').datepicker({
            uiLibrary: 'bootstrap4'
        });*/