insert into users ( user_name, user_psw, first_name, last_name, email)
            values ( "User1", "User Pass 1", "User FirstName 1", "User LastName 1", "User@Email1.com"),
                   ( "User2", "User Pass 2", "User FirstName 2", "User LastName 2", "User@Email2.com"),
                   ( "User3", "User Pass 3", "User FirstName 3", "User LastName 3", "User@Email3.com"),
                   ( "User4", "User Pass 4", "User FirstName 4", "User LastName 4", "User@Email4.com");

insert into colors (color_name, RGB_value)
            values ("bright red", "FF3333"),
                   ("pastel yellow", "DEE18E"),
                   ("pastel blue", "CCFFFF"),
                   ("pastel green", "CCFFCC");

insert into notifications ( description)
            values ("1 week before event" ),
                   ("1 day before event"),
                   ("1 hour before event"),
                   ("15 minutes before event"),
                   ("2 weeks before event" ),
                   ("2 days before event"),
                   ("2 hours before event"),
                   ("30 minutes before event");
                  

insert into repeats (description)
            values ("weekly"),
                   ("every 2 weeks"),
                   ("monthly");



insert into events ( start_date, end_date, start_time, end_time, event_title, event_description, event_location, event_phone_num, user_id, color_id) values ("03/05/20", "03/05/20", "12:00:00", "13:00:00", "ProCalendar Meeting", "Discuss Google API #2", "Great Online App", "", 1,1 ),
    ("03/05/20", "03/05/20", "14:00:00", "16:00:00", "ProCalendar Meeting", "Friend Birthday", "Great Restaurant", "", 1,2 ),
    ("03/05/20", "03/05/20", "17:30:00", "18:00:00", "ProCalendar Meeting", "Take Dog to Vet", "Great Vet Office", "", 1,4 ),
    ("03/06/20", "03/06/20", "9:00:00", "9:40:00", "ProCalendar Meeting", "Project", "Online", "", 1,3 ),
    ("03/07/20", "03/09/20", "00:00:00", "11:59:59", "ProCalendar Meeting", "Great Conference", "Great Event Place", "", 1,1 )
    ;

