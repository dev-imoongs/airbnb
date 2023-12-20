CREATE TABLE MEMBER(
	member_id NUMBER(10) NOT NULL PRIMARY KEY, 
	email VARCHAR2(30) UNIQUE NOT NULL, 
	password VARCHAR2(30) NOT NULL,
	first_name VARCHAR2(10) NOT NULL,
	last_name VARCHAR2(10) NOT NULL,
	birthday DATE NOT NULL,
	identification_status VARCHAR2(10) DEFAULT 'N',
	member_photo VARCHAR2(100),
	phone VARCHAR2(20),
	year_of_membership DATE,
	introduce VARCHAR2(300)
);

CREATE TABLE ACCOMMODATION(
	accommodation_id NUMBER(10) NOT NULL PRIMARY KEY,
	main_name VARCHAR2(50) NOT NULL,
	sub_name VARCHAR2(50) NOT NULL,
	price NUMBER(20) DEFAULT 0,
	maximum_people NUMBER(2) DEFAULT 0,
	number_of_bathrooms NUMBER(2) DEFAULT 0,
	number_of_bedrooms NUMBER(2) DEFAULT 0,
	number_of_bed NUMBER(2) DEFAULT 0,
	bed_type VARCHAR2(100),
	bed_icon VARCHAR2(100),
	amenities VARCHAR2(50),
	accommodation_photo VARCHAR2(100),
	accommodation_phone VARCHAR2(30),
	geometry NUMBER(10,3),
	address VARCHAR2(50),
	location_description VARCHAR2(100),
	check_in_out_rules VARCHAR2(100),
	cleanliness_program VARCHAR2(100),
	check_remaining_room VARCHAR2(1),
	host_message VARCHAR2(100),
	accommodation_type VARCHAR2(30),
	house_rules VARCHAR2(100),
	safety_property VARCHAR2(100),
	instant_book VARCHAR2(1),
	cancellation_policy VARCHAR2(100),
	member_id NUMBER(10),
    host_id NUMBER(10),
	CONSTRAINT fk_accommodation_member FOREIGN KEY(member_id)
	REFERENCES MEMBER(member_id)
);

CREATE TABLE HOST(
	host_id NUMBER(10) NOT NULL PRIMARY KEY, 
	check_superhost VARCHAR2(10) DEFAULT 'N',
	identification_status VARCHAR2(10) DEFAULT 'N',
	member_id NUMBER(10),
    accommodation_id NUMBER(10),
	CONSTRAINT fk_host_member FOREIGN KEY(member_id)
	REFERENCES MEMBER(member_id),
	CONSTRAINT fk_host_accommodation FOREIGN KEY(accommodation_id)
	REFERENCES ACCOMMODATION(accommodation_id)
);

ALTER TABLE ACCOMMODATION
ADD CONSTRAINT fk_accommodation_host FOREIGN KEY(host_id)
REFERENCES HOST(host_id)

CREATE TABLE REVIEW(
	review_id NUMBER(10) NOT NULL PRIMARY KEY, 
	anonymous_photo VARCHAR2(100),
	anonymous_name VARCHAR2(20),
	review_comment VARCHAR2(500),
	cleanliness NUMBER(1),
	communication NUMBER(1),
	check_in_date DATE,
	accuracy NUMBER(1),
	satisfaction NUMBER(1),
	review_date DATE,
	review_content VARCHAR2(500),
	member_id NUMBER(10),
    host_id NUMBER(10),
	accommodation_id NUMBER(10),
	CONSTRAINT fk_review_member FOREIGN KEY(member_id)
	REFERENCES MEMBER(member_id),
	CONSTRAINT fk_review_host FOREIGN KEY(host_id)
	REFERENCES HOST(host_id),
	CONSTRAINT fk_review_accommodation FOREIGN KEY(accommodation_id)
	REFERENCES ACCOMMODATION(accommodation_id)
);

CREATE TABLE MEMBER_RESERVATION(
	member_reservation_id NUMBER(10) NOT NULL PRIMARY KEY, 
	check_in_date DATE,
	check_out_date DATE,
	price NUMBER(20) DEFAULT 0,
	guest NUMBER(2),
	payment_datetime TIMESTAMP,
	reservation_number VARCHAR2(20),
	reservation_state VARCHAR2(10),
	member_id NUMBER(10),
    accommodation_id NUMBER(10),
	CONSTRAINT fk_member_reservation_member FOREIGN KEY(member_id)
	REFERENCES MEMBER(member_id),
	CONSTRAINT fk_member_reservation_accommodation FOREIGN KEY(accommodation_id)
	REFERENCES ACCOMMODATION(accommodation_id)
);

CREATE TABLE HOST_RESERVATION(
	host_reservation_id NUMBER(10) NOT NULL PRIMARY KEY, 
	check_in VARCHAR(1) DEFAULT 'N',
	check_out VARCHAR(1) DEFAULT 'N',
	reservation_date DATE,
	reservation_number VARCHAR2(20),
	member_id NUMBER(10),
    accommodation_id NUMBER(10),
	CONSTRAINT fk_host_reservation_member FOREIGN KEY(member_id)
	REFERENCES MEMBER(member_id),
	CONSTRAINT fk_host_reservation_accommodation FOREIGN KEY(accommodation_id)
	REFERENCES ACCOMMODATION(accommodation_id)
);

CREATE TABLE BOOKMARK(
	bookmark_id NUMBER(10) NOT NULL PRIMARY KEY, 
	check_in_date DATE,
	check_out_date DATE,
	bookmark_name VARCHAR2(10),
	member_id NUMBER(10),
    accommodation_id NUMBER(10),
    review_id NUMBER(10),
    CONSTRAINT fk_bookmark_member FOREIGN KEY(member_id)
	REFERENCES MEMBER(member_id),
	CONSTRAINT fk_bookmark_accommodation FOREIGN KEY(accommodation_id)
	REFERENCES ACCOMMODATION(accommodation_id),
	CONSTRAINT fk_bookmark_review FOREIGN KEY(review_id)
	REFERENCES REVIEW(review_id)	
);

CREATE TABLE CHAT(
	chat_id NUMBER(10) NOT NULL PRIMARY KEY,
	sender_id NUMBER(10),
	receiver_id	NUMBER(10),
	chat_content VARCHAR2(100),
	chat_image VARCHAR2(100),
	chat_date DATE,
	chat_time TIMESTAMP
);

CREATE TABLE LIST_VIEW(
	list_id NUMBER(10) NOT NULL PRIMARY KEY,
	main_name VARCHAR2(50) NOT NULL,
	accommodation_photo VARCHAR2(100),
	brief_address VARCHAR2(50),
	price NUMBER(20) DEFAULT 0,
	maximum_people NUMBER(2) DEFAULT 0,
	number_of_bathrooms NUMBER(2) DEFAULT 0,
	number_of_bedrooms NUMBER(2) DEFAULT 0,
	number_of_bed NUMBER(2) DEFAULT 0,
	geometry NUMBER(10,3),
	amenities VARCHAR2(50),
	accommodation_id NUMBER(10),
	CONSTRAINT fk_list_accommodation FOREIGN KEY(accommodation_id)
	REFERENCES ACCOMMODATION(accommodation_id)
);