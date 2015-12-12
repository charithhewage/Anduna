// webSocketOnMessage.prototype.alertTest = function(argument){
//   alert("dd")
// };

var count=0; 

function showAllAlerts(info){



  $('#alertsContainer').removeClass('hide');



    if(info.id=="alert3"){

          count++;
          showAlert3(info, count);
    }




count = count%4;
}


function showAlert3(info, alert_count){

  console.log(alert_count.toString());

  $("#" + alert_count).remove();

  var header = "Unauthorized file access identyfied!"
  var info = "Lorem Ipsum is simply dummy text of the printing and typesetting industry"

  var messageContent = `
          <div class="alert alert-box alert-warning" id="`+alert_count+`" style="position: relative !important; margin-bottom: 15 !important;" role="alert">
            <div class="alert-header">
              <h2><span class="fa fa-warning"></span>`+ header +`</h2>
              <a type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times"></i></span></a>
            </div>
            <div class="alert-body">
              <p>`+info+`</p>
            </div>
            <div class="actions-container">
              // <a href="#" class="btn btn-default btn-xs" data-toggle="modal" data-target="#Aleart404Detail">More</a>
            </div>
          </div>`;
  
//   if(alert_count=1){
//     $("#alert_1").html(messageContent)
//   }
//   else if(alert_count=2){
//     $("#alert_2").html(messageContent)
//   }
//   else if(alert_count=3){
//     $("#alert_3").html(messageContent)
//   }
//   else if(alert_count=4){
//     $("#alert_4").html(messageContent)
//   }
// alert_count=0;

$("#alertsContainer").append(messageContent)
}