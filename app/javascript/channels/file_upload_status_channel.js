import consumer from "channels/consumer"

consumer.subscriptions.create("FileUploadStatusChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("actioncable connected")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    document.getElementById("alerts").innerHTML = `<div class="alert alert-${data.body.alert}">${data.body.message}</div>`
  }
});
