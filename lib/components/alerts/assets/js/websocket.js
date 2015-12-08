// webSocketOnMessage.prototype.alertTest = function(argument){
//   alert("dd")
// };

function Aleart404Event(){
  $('#right-sidebar').toggleClass('sidebar-open');

  var messageContent = `
          <div class="alert alert-danger">
            <a href="#" class="close" data-dismiss="alert">&times;</a>
            <strong>Alert!</strong>
            <p> There was a problem with your network connection.</p>
            </br>
            <button type="button" class="btn btn-default btn-default-2">Respond</button>
            <button type="button" class="btn btn-default btn-default-2"  data-toggle="modal" data-target="#Aleart404Model">More</button>
          </div>`;

  $("#sidebarMessage").append(messageContent)
}