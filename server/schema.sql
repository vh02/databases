CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
text VARCHAR(140) NOT NULL,
createdAt TIMESTAMP NOT NULL
);

/* Create other tables and define schemas for them here! */
CREATE TABLE roomname (
id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
roomname VARCHAR(16)
);

CREATE TABLE user (
id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(16) NOT NULL
);

ALTER TABLE messages
FOREIGN KEY (usernameid) REFERENCES roomname(id);
ALTER TABLE messages
FOREIGN KEY (roomnameid) REFERENCES user(id);

-- CREATE TABLE userroom (
-- FOREIGN KEY (usernameid) REFERENCES roomname(id),
-- FOREIGN KEY (roomnameid) REFERENCES user(id)
-- );
-- note: join tables is a concept, dont need to implement

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

