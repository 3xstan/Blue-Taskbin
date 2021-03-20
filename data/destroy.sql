use bluetbdb;

/* Delete all the data in the tables */
TRUNCATE TABLE action_items;
TRUNCATE TABLE tasks;
TRUNCATE TABLE  containers;
TRUNCATE TABLE users;

/* Drop all the tables */

DROP TABLE action_items;
DROP  TABLE tasks;
DROP TABLE  containers;
DROP TABLE users;

/* Remove the empty database */
DROP DATABASE bluetbdb;