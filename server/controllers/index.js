var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) { // a function which handles a get request for all messages
      console.log('Routed to controller.messages.get');
      models.messages.get(function(data) {
        res.json(data);
      });
      //response should be the data of messages sent back
    }, 
    post: function (req, res) {
      // console.log('Routed to controller.messages.post');
      var message = req.body;
      // console.log('Controller post message: ', message);
      models.messages.post(message, function() {
        res.send('success');
      });
    }, // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      console.log('Routed to controller.users.get');
      models.users.get(function(data) {
        res.json(data);
      });
    },
    post: function (req, res) {
      // console.log('Routed to controller.users.post');
      var user = req.body;
      // console.log('Controller post user: ', user);
      models.users.post(user, function() {
        res.send('success');
      });
    }
  }
};

//functions are handling interactions from router (routes.js) to the model funcs (models/index.js);