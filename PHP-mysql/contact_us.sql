 drop table contact_us;
 create table contact_us
      (id int(10) auto_increment,
	  fullname varchar(225),
       mobile int(10),
       email varchar(225),
       message varchar(225),
	    primary key(id));