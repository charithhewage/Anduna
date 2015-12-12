// webSocketOnMessage.prototype.alertTest = function(argument){
//   alert("dd")
// };

var count=0; 

function showAllAlerts(info){


var header;
var description_1;
var description_2; 


  $('#alertsContainer').removeClass('hide');


    
    if(info.id=="404_Alert"){

          count++;

          header = "404 Request Limit Exceeded";
          description_1 = "Request Count Last Minute :" +info.data1;
          description_2 = "";

          showBreach(header, description_1, description_2, count);
    }
    else if(info.id=="IFA_Alert"){

          count++;

          header = "Importnat File Access Limit Exceeded";
          description_1 = "Request Count Last Minute :" +info.data1;
          description_2 = "";

          showBreach(info,description_1, description_2, count);
    }
    else if(info.id=="AccessExceedAccessLog_Alert"){

          count++;

          header = "Total Access Limit Exceeded";
          description_1 = "Access Count Last Minute :" +info.data1;
          description_2 = "Access Bandwidth Last Minute :" +info.data2;

          showBreach(header,description_1, description_2, count);
    }
    else if(info.id=="ExceedAvgAccessLog_Alert"){

          count++;

          header = "404 Request Daily Average Exceeded";
          description_1 = info.data1;
          description_2 = ""; 

          showBreach(header,description_1, description_2, count);
    }
    else if(info.id=="MysqlInjection_Alert"){

          count++;

          header = "MySql Injection";
          description_1 = "Request:" +info.data1;
          description_2 = ""; 

          showBreach(header, description_1, description_2, count);
    }
    else if(info.id=="SiteMonitorProxyLog_Alert"){

          count++;

          header = "Access Count Exceeded in :" +info.data1;
          description_1 = " Access Count:" +info.data3;
          description_2 = " Access Bandwidth:" +info.data2;

          showWarning(header,description_1, description_2, count);
    }
    else if(info.id=="SystemInfo_Alert"){

          count++;

          header = "System Over Loaded";
          description_1 = "Memory Usage :" +info.data1;
          description_2 = "CPU Usage :" +info.data1;

          showWarning(header, description_1, description_2, count);
    }




count = count%4;
}


// function showAlert3(head, desc, alert_count){

//   console.log(alert_count.toString());

//   $("#" + alert_count).remove();

//   var header = "Unauthorized file access identyfied!"
//   var info = "Lorem Ipsum is simply dummy text of the printing and typesetting industry"

//   var messageContent = `
//           <div class="alert alert-box alert-warning" id="`+alert_count+`" style="position: relative !important; margin-bottom: 15 !important;" role="alert">
//             <div class="alert-header">
//               <h2><span class="fa fa-warning"></span>`+ header +`</h2>
//               <a type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times"></i></span></a>
//             </div>
//             <div class="alert-body">
//               <p>`+info+`</p>
//             </div>
//             <div class="actions-container">
//               // <a href="#" class="btn btn-default btn-xs" data-toggle="modal" data-target="#Aleart404Detail">More</a>
//             </div>
//           </div>`;
  
// //   if(alert_count=1){
// //     $("#alert_1").html(messageContent)
// //   }
// //   else if(alert_count=2){
// //     $("#alert_2").html(messageContent)
// //   }
// //   else if(alert_count=3){
// //     $("#alert_3").html(messageContent)
// //   }
// //   else if(alert_count=4){
// //     $("#alert_4").html(messageContent)
// //   }
// // alert_count=0;

// $("#alertsContainer").append(messageContent)
// }


function showWarning(head, desc1, desc2, alert_count){

  console.log(alert_count.toString());

  $("#" + alert_count).remove();


  var messageContent = `
          <div class="alert alert-box alert-warning" id="`+alert_count+`" style="position: relative !important; margin-bottom: 15 !important;" role="alert">
            <div class="alert-header">
              <h2><span class="fa fa-warning"></span>`+ head +`</h2>
              <a type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times"></i></span></a>
            </div>
            <div class="alert-body">
              <p>`+desc1+`</p>
              <p>`+desc2+`</p>
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

function showBreach(head, desc1, desc2, alert_count){

  console.log(alert_count.toString());

  $("#" + alert_count).remove();

  var header = "Unauthorized file access identyfied!"
  var info = "Lorem Ipsum is simply dummy text of the printing and typesetting industry"

  var messageContent = `
          <div class="alert alert-box alert-danger" id="`+alert_count+`" style="position: relative !important; margin-bottom: 15 !important;" role="alert">
            <div class="alert-header">
              <h2><span class="fa fa-danger"></span>`+ head +`</h2>
              <a type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times"></i></span></a>
            </div>
            <div class="alert-body">
              <p>`+desc1+`</p>
              <p>`+desc2+`</p>
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

