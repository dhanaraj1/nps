CREATE table if not exists `zone` (
	zone_id int auto_increment NOT null primary key,
	zone_name varchar(50) NOT null,
	created_at timestamp default CURRENT_TIMESTAMP
)

CREATE table if not exists customer(
customer_id BIGINT auto_increment NOT null primary key,
customer_name varchar(100) not null,
customer_username varchar(50) not null index,
customer_password varchar(100) not null,
customer_gps varchar(50),
customer_mobile int(10),
customer_address varchar(200),
customer_payment_status varchar(25),
customer_profile_pic blob,
customer_zone_id int fk,
customer_expiry varchar(100),
customer_phone_id varchar(500),
customer_is_active boolean default true index,
created_at timestamp default CURRENT_TIMESTAMP
)

CREATE table if not exists complain(
complain_id  BIGINT auto_increment NOT null primary key,
complain_customer_id int not null,
complain_subject varchar(200) not null,
complain_description varchar(500),
complain_status varchar(10),
complain_assigned_engg_id int fk,
complain_is_active default true index,
created_at timestamp default CURRENT_TIMESTAMP
updated_at timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
)

CREATE table if not exists employee(
employee_id BIGINT auto_increment NOT null primary key,
employee_login_id varchar(50),
employee_password varchar(100),
emaployee_name varchar(100),
employee_mobile_number int(10),
employee_designation varchar(10),
employee_zone_id int fk,
created_at timestamp default CURRENT_TIMESTAMP 
)

CREATE table if not exists employee_tracking(
employee_tracking_id BIGINT auto_increment NOT null primary key,
employee_lat decimal(4,10) not null,
employee_long decimal(4,10) not null,
created_at timestamp default CURRENT_TIMESTAMP
)

CREATE table if not exists employee_attendance(
employee_attendance_id BIGINT auto_increment NOT null primary key,
employee_attendance_employee_id int fk,
employee_status varchar(10) "fullday half day or available" index,
created_at timestamp default CURRENT_TIMESTAMP
)







