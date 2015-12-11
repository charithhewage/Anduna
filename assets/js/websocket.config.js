var websocket;
var webSocketURL = "ws://localhost:9763/outputwebsocket/WebsocketOutputAdaptor/websocket";
var nulltest =  null;
var waitTime = 1000;
var webSocketOnMessage;

function waitForSocketConnection(socket, callback){
  
  setTimeout( function () {
    if (socket.readyState === 1) {
      initializeWebSocket();
      waitTime = 1000;
      
      console.log("Connection is made");
      
      if(callback != null){
        callback();
      }
      return;

    } else {
      websocket = new WebSocket(webSocketURL);
      waitTime += 400;
      $.UIkit.notify({
        message: "wait for connection "+waitTime/1000+" Seconds...",
        status: 'warning',
        timeout: waitTime,
        pos: 'top-center'
      });
      waitForSocketConnection(websocket, callback);
    }
  }, waitTime); // wait 5 milisecond for the connection...

} //waitForSocketConnection

var webSocketOnOpen = function () {
  $.UIkit.notify({
    message: 'You Are Connected to Server!!',
    status: 'success',
    timeout: 5000,
    pos: 'top-center'
  });
  console.log("websocket on open");
}; //webSocketOnOpen

var webSocketOnError = function (e) {
  $.UIkit.notify({
    message: 'Something went wrong when trying to connect to <b>'+webSocketURL+'<b/>',
    status: 'danger',
    timeout: 5000,
    pos: 'top-center'
  });
//    waitForSocketConnection(websocket);
  console.log("websocket on error");
}; //webSocketOnError

var webSocketOnClose =function (e) {
  $.UIkit.notify({
    message: 'Connection lost with server!!',
    status: 'danger',
    timeout: 5000,
    pos: 'top-center'
  });

  console.log("websocket on close");
  waitForSocketConnection(websocket);
}; //webSocketOnClose


var webSocketOnMessage = function(message) {
  console.log("websocket on message");
  var info = $.parseJSON(message.data);
  console.log(message);

  this.showAlert = function(){
    console.log('show Alert');
    window[info.id]();
    //$('#right-sidebar').toggleClass('sidebar-open');
  }
  this.showAlert(info)
}

function initializeWebSocket(){
  websocket           = new WebSocket(webSocketURL);
  websocket.onmessage = webSocketOnMessage;
  websocket.onclose   = webSocketOnClose;
  websocket.onerror   = webSocketOnError;
  websocket.onopen    = webSocketOnOpen;
}

initializeWebSocket();
