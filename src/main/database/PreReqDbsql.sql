drop table if exists student               cascade;
drop table if exists student_school    cascade;
drop table if exists transcripts             cascade;
drop table if exists recommendations      cascade;
drop table if exists schools               cascade;
drop table if exists student_pre_reqs              cascade;
drop table if exists school_pre_reqs              cascade;
drop table if exists pre_reqs              cascade;


CREATE TABLE student (
student_id serial NOT NULL,
last_name  varchar(20) NOT NULL,
first_name varchar(20) NOT NULL,
gender varchar(1)  NOT NULL,
desired_degree varchar(20),
gre_math integer NOT NULL,
gre_verbal integer NOT NULL,
gre_writing integer NOT NULL,
CONSTRAINT pk_student_student_id PRIMARY KEY (student_id),
CONSTRAINT ck_gender CHECK(gender IN('M', 'F'))
);

CREATE TABLE student_school (
student_id integer NOT NULL,
school_id  integer NOT NULL,
school_name varchar(30) NOT NULL,
app_deadline date NOT NULL,
tuition integer NOT NULL,
min_gre_math integer NOT NULL,
min_gre_verbal integer NOT NULL,
min_gre_writing integer NOT NULL,
recommendations_needed integer NOT NULL,
recommended_gpa integer NOT NULL,
summer_option boolean NOT NULL,
interview_date date NOT NULL,
CONSTRAINT pk_student_school_student_id_school_id PRIMARY KEY(student_id, school_id)
);

CREATE TABLE recommendations (
recommendation_id serial NOT NULL,
student_id integer NOT NULL,
recommender_first_name varchar(20) NOT NULL,
recommender_last_name varchar(20) NOT NULL,
in_hand boolean NOT NULL,
CONSTRAINT pk_recommendation_id PRIMARY KEY(recommendation_id)
);

CREATE TABLE schools (
school_id serial NOT NULL,
school_name varchar(30) NOT NULL,
CONSTRAINT pk_schools_school_id_school_name PRIMARY KEY(school_id)
);

ALTER TABLE schools
DROP CONSTRAINT pk_schools_school_id_school_name;

ALTER TABLE schools
ADD PRIMARY KEY(school_id);



CREATE TABLE pre_reqs (
pre_req_id serial NOT NULL,
pre_req_name varchar(30)NOT NULL,
CONSTRAINT pk_pre_reqs_pre_req_id PRIMARY KEY(pre_req_id)
);

CREATE TABLE student_pre_reqs(
student_id integer NOT NULL,
pre_req_id integer NOT NULL,
CONSTRAINT pk_student_pre_reqs_student_id_pre_req_id PRIMARY KEY(student_id, pre_req_id)
);

CREATE TABLE school_pre_reqs(
school_id integer NOT NULL,
pre_req_id integer NOT NULL,
CONSTRAINT pk_student_pre_reqs_school_id_pre_req_id PRIMARY KEY(school_id, pre_req_id)
);

CREATE TABLE transcripts(
student_id integer NOT NULL,
transcript_name varchar(30) NOT NULL,
transcript_in_hand boolean NOT NULL,
CONSTRAINT pk_student_id_transcript_name PRIMARY KEY(student_id, transcript_name)
);

ALTER TABLE school_pre_reqs
ADD FOREIGN KEY (school_id)
REFERENCES schools(school_id);

ALTER TABLE school_pre_reqs
ADD FOREIGN KEY (pre_req_id)
REFERENCES pre_reqs(pre_req_id);

ALTER TABLE student_pre_reqs
ADD FOREIGN KEY (student_id)
REFERENCES student(student_id);

ALTER TABLE student_pre_reqs
ADD FOREIGN KEY (pre_req_id)
REFERENCES pre_reqs(pre_req_id);

ALTER TABLE transcripts
ADD FOREIGN KEY (student_id)
REFERENCES student(student_id);

ALTER TABLE student_school
ADD FOREIGN KEY (student_id)
REFERENCES student(student_id);

ALTER TABLE student_school
ADD FOREIGN KEY (school_id)
REFERENCES schools(school_id);

ALTER TABLE recommendations
ADD FOREIGN KEY (student_id)
REFERENCES student(student_id);



delete from employee;
delete from employee_department;
delete from employee_project;
delete from job_title;
delete from project;
delete from department;




