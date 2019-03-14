CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
text VARCHAR(140) NOT NULL,
createdAt DATE NOT NULL,
usernameid INTEGER,
roomnameid INTEGER
);

/* Create other tables and define schemas for them here! */
CREATE TABLE rooms (
id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
roomname VARCHAR(16)
);

CREATE TABLE users (
id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(16) NOT NULL
);

ALTER TABLE messages ADD FOREIGN KEY (usernameid) REFERENCES users(id);
ALTER TABLE messages ADD FOREIGN KEY (roomnameid) REFERENCES rooms(id);

-- CREATE TABLE userroom (
-- FOREIGN KEY (usernameid) REFERENCES roomname(id),
-- FOREIGN KEY (roomnameid) REFERENCES user(id)
-- );
-- note: join tables is a concept, dont need to implement

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

 insert into rooms (roomname) values ('room1'),
  ('room2'),
  ('room3'),
  ('room4');

insert into users (username) values ('A'), ('B'), ('C'), ('D');

insert into messages (text, usernameid, roomnameid, createdAt) values ('whatever', 4, 1, STR_TO_DATE('1-01-2012', '%d-%m-%Y')),
('test1', 4, 1, STR_TO_DATE('1-01-2012', '%d-%m-%Y')),
('test2', 1, 2, STR_TO_DATE('1-01-2012', '%d-%m-%Y')),
('test3', 2, 2, STR_TO_DATE('1-01-2012', '%d-%m-%Y')),
('test5', 2, 3, STR_TO_DATE('1-01-2012', '%d-%m-%Y')),
('test6', 2, 2, STR_TO_DATE('1-01-2012', '%d-%m-%Y')),
('test4', 3, 1, STR_TO_DATE('1-01-2012', '%d-%m-%Y'));

