var db = require('../db').dbConnection;

module.exports = {
  messages: {
    get: function(callback) {
      db.query('SELECT text, usernameid, roomnameid FROM messages;', function(err, rows) {
        if (err) { throw (err); }
        callback(rows);
      });
    }, // a function which produces all the messages
    post: function (message, callback) {
      // console.log('message object recieved in models.messages.post: ', message);
      db.query('INSERT INTO messages (text, usernameid, roomnameid) values ("' + message.message + '", "' + message.username + '", "' + message.roomname + '");',
        function (err, results) {
          if (err) {
            // console.log('error console ' + err);
            throw err;
          } else {
            // console.log('about to invoke callback for models.messages.post ', JSON.stringify(results));
            callback(err, JSON.stringify(results));
          }
        }); // a function which can be used to insert a message into the database
    },
  },

  users: {
    // Ditto as above.
    get: function (name, callback) {
      db.query('SELECT id FROM users ON users.username=\'' + name.username + '\';', 
        function(err, rows) {
          if (err) {
            throw (err);
          } else {
            callback(rows);
          } 
        });
    },
    post: function(user, callback) {
      db.query('INSERT INTO users (username) values (\'' + user.username + '\');',
        function (err, results) {
          if (err) {
            throw err;
          } else {
            // console.log('about to invoke callback for models.users.post ', results);
            callback(results);
          }
        });
    }
  }
};
