CREATE DATABASE bluetbdb;

use bluetbdb;

CREATE TABLE users (
    username VARCHAR(20) NOT NULL,
    pwd VARCHAR(30),
    nickname VARCHAR(20),
    PRIMARY KEY (username)
);

CREATE TABLE containers (
    container_id INT(6) UNSIGNED NOT NULL, 
    username VARCHAR (20),
    container_type VARCHAR(1),
    PRIMARY KEY(container_id),
    FOREIGN KEY(username)
        REFERENCES users(username)
);

CREATE TABLE tasks (
    task_id INT(8) UNSIGNED NOT NULL,
    container_id INT(6) UNSIGNED NOT NULL,
    locat VARCHAR(30),
    descript VARCHAR(255),
    PRIMARY KEY(task_id),
    FOREIGN KEY(container_id)
        REFERENCES containers(container_id) 
);

CREATE TABLE action_items (
    action_id INT(10) UNSIGNED NOT NULL,
    task_id INT(8) UNSIGNED NOT NULL,
    descript VARCHAR(255),
    quarter_hours_required INT NOT NULL DEFAULT 0,
    quarter_hours_done INT NOT NULL DEFAULT 0,
    PRIMARY KEY(action_id),
    FOREIGN KEY(task_id)
        REFERENCES tasks(task_id)
        ON DELETE CASCADE
);