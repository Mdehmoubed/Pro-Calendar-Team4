
PRAGMA foreign_keys = ON;

.databases

drop table colors;
drop table events;
drop table notifications;
drop table repeats;
drop table users;

CREATE TABLE IF NOT EXISTS users ( 
        user_id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_name TEXT NOT NULL UNIQUE,
        user_psw TEXT NOT NULL,
        first_name TEXT NOT NULL,
        last_name TEXT NOT NULL,
        email TEXT NOT NULL UNIQUE
        );


CREATE TABLE IF NOT EXISTS colors ( 
        color_id INTEGER PRIMARY KEY AUTOINCREMENT,
        rgb_value TEXT,
        color_name TEXT
        );

CREATE TABLE IF NOT EXISTS notifications ( 
        notification_id INTEGER PRIMARY KEY AUTOINCREMENT,
        description TEXT
        );

CREATE TABLE IF NOT EXISTS repeats ( 
        repeats_id INTEGER PRIMARY KEY AUTOINCREMENT,
        description TEXT
        );


CREATE TABLE IF NOT EXISTS events ( 
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    start_date TEXT NOT NULL,
    end_date TEXT NOT NULL,
    start_time TEXT NOT NULL,
    end_time TEXT NOT NULL,
    event_title TEXT,
    event_description TEXT,
    event_location TEXT,
    event_phone_num TEXT,
    user_id INTEGER NOT NULL,
    repeats_id INTEGER NULL,
    notification_id INTEGER NULL,
    color_id INTEGER NULL,
    UNIQUE (start_date, start_time, end_date, end_time) ON CONFLICT REPLACE,
    FOREIGN KEY (user_id)
      	REFERENCES users (user_id) 
         ON UPDATE NO ACTION
         ON DELETE CASCADE,
	FOREIGN KEY (repeats_id)
		REFERENCES repeats (repeats_id)
		ON UPDATE NO ACTION
		ON DELETE CASCADE,
	FOREIGN KEY (notification_id)
		REFERENCES notifications (notification_id)
		ON UPDATE NO ACTION
		ON DELETE SET NULL,
	FOREIGN KEY (color_id)
		REFERENCES colors (color_id)
		ON UPDATE NO ACTION
		ON DELETE SET NULL
    );