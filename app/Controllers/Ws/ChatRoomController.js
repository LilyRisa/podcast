'use strict'
const PublicMess = use('App/Models/PublicMess')

class ChatRoomController {
  constructor ({ socket, request }) {
    this.socket = socket
    this.request = request
  }
  onMessage (message) {
    this.socket.broadcastToAll('message', message)
  }
}

module.exports = ChatRoomController
