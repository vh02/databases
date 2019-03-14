var models = require('../models');
const headers = {
  'access-control-allow-origin': '*',
  'access-control-allow-methods': 'GET, POST, PUT, DELETE, OPTIONS',
  'access-control-allow-headers': 'content-type, accept',
  'access-control-max-age': 10
};

module.exports = {
  messages: {
    get: function (req, res) { // a function which handles a get request for all messages
      res.writeHead(200, headers);
      console.log(req);
      //response should be the data of messages sent back
    }, 
    post: function (req, res) {
      console.log(req);
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      res.writeHead(200, headers);
      console.log(req);
    },
    post: function (req, res) {
      console.log(req);
    }
  }
};

//functions are handling interactions from router (routes.js) to the model funcs (models/index.js);