$( document ).ready(function() {

	$.ajax({
	  url: "controllers/dashboard_controller.jag",
	  context: document.body
	}).done(function( msg ) {
	  //$( this ).addClass( "done" );
	  console.log(msg);
	})
	.fail(function() {
    alert( "error" );
  })
  .always(function() {
    console.log( "complete" );
  })
  
  $('#widget').load('lib/modules/access_summary/views/index.html');
  $('#widget-2').load('lib/modules/testwidget/views/index.html');

});