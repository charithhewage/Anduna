$(document).ready(function(){ 
/** on page load **/
  
  $.get("controllers/home_page.jag", function(data) {
      $("#content").html(data);
  });


  /** menu functions **/
    
    $("#menu_item_1").click(function(){
      $.get("pages/security.jag", function(data) {
        $("#content").html(data);
      });
    });
    $("#menu_item_2").click(function(){
      $.get("pages/security.jag", function(data) {
        $("#content").html(data);
      });
    console.log('menu 2');
    });

    $("#menu_item_3.1").click(function(){
      //$.get("pages/alert_list.jag", function(data) {
      //  $("#content").html(data);
      //});
    console.log('menu 3');
    });
    $("#menu_item_3.2").click(function(){
      //$.get("pages/actions_taken.jag", function(data) {
      //  $("#content").html(data);
      //});
    console.log('menu 4');
    });
    $("#menu_item_3.3").click(function(){
      //$.get("pages/system_improvements.jag", function(data) {
      //  $("#content").html(data);
      //});
    console.log('menu 5');
    });
    
    
});