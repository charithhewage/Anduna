// webSocketOnMessage.prototype.alertTest = function(argument){
//   alert("dd")
// };

function Aleart404Event(){
  $('#alertsContainer').removeClass('hide');
  var header = "Unauthorized file access identyfied!"
  var info = "Lorem Ipsum is simply dummy text of the printing and typesetting industry"

  var messageContent = `
          <div class="alert alert-box alert-warning" role="alert">
            <div class="alert-header">
              <h2><span class="fa fa-warning"></span>`+ header +`</h2>
              <a type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times"></i></span></a>
            </div>
            <div class="alert-body">
              <p>`+info+`</p>
            </div>
            <div class="actions-container">
              <a href="#" class="btn btn-default btn-xs" data-toggle="modal" data-target="#Aleart404Detail">More</a>
            </div>
          </div>`;
  
  $("#alertsContainer").append(messageContent)
}