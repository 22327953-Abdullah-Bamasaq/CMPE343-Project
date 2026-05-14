CREATE TABLE PLANE_MODEL (
  model_id INTEGER PRIMARY KEY AUTOINCREMENT,
  manufacturer VARCHAR(20),
  model_name VARCHAR(20),
  max_range INT,
  engine_type VARCHAR(50)
);

CREATE TABLE AIRPLANE (
  plane_id INTEGER PRIMARY KEY AUTOINCREMENT,
  model_id INT NOT NULL,
  capacity INT NOT NULL,
  manufacture_year INT,
  status VARCHAR(20),

  FOREIGN KEY (model_id)
  REFERENCES PLANE_MODEL(model_id)
);

CREATE TABLE HANGER(
  hanger_id INTEGER PRIMARY KEY AUTOINCREMENT,
  location VARCHAR(50),
  capacity INT NOT NULL,
  status VARCHAR(10)
  );
  
 CREATE TABLE HANGER_HISTORY(
   history_id INTEGER PRIMARY KEY AUTOINCREMENT,
   plane_id INT NOT NULL,
   hanger_id INT NOT NULL,
   check_in date not null,
   check_out date,
   
   FOREIGN KEY (plane_id)
  REFERENCES AIRPLANE(plane_id),
   FOREIGN KEY (hanger_id)
  REFERENCES HANGER(hanger_id),
   
   CHECK (check_out IS NULL OR check_out >= check_in)
   );
   
   CREATE TABLE UNION_INFO(
   union_id INTEGER PRIMARY KEY AUTOINCREMENT,
     union_name varchar(50),
     membership_number VARCHAR(50) NOT NULL,
     join_date date
   );
   
   CREATE TABLE TEST(
   test_id INTEGER PRIMARY KEY AUTOINCREMENT,
     test_name varchar(20) NOT NULL,
     description varchar(100) NOT NULL,
     max_score INT NOT NULL
   );
   
   CREATE TABLE EMPLOYEE(
   emp_id INTEGER PRIMARY KEY AUTOINCREMENT,
     ssn INT NOT NULL,
     first_name VARCHAR(20),
     last_name VARCHAR(20),
     phone INT NOT NULL,
     hire_date DATE NOT NULL,
     salary INT NOT NULL,
     union_id INT NOT NULL,
   
     FOREIGN KEY (union_id)
  REFERENCES UNION_INFO(union_id)
   );
   
   CREATE TABLE TECHNICIAN(
   tech_id INTEGER PRIMARY KEY AUTOINCREMENT,
     certification_level VARCHAR(20),
     specialization VARCHAR(20),
     
     FOREIGN KEY (tech_id)
    REFERENCES EMPLOYEE(emp_id)
   );
   
   CREATE TABLE TRAFFIC_CONTROL(
   controller_id INTEGER PRIMARY KEY AUTOINCREMENT,
     last_medical_exam DATE,
     license_level VARCHAR(20) NOT NULL
   );
   
   CREATE TABLE TEST_EVENT(
   event_id INTEGER PRIMARY KEY AUTOINCREMENT,
     plane_id INT NOT NULL,
     tech_id INT NOT NULL,
     test_id INT NOT NULL,
     test_date DATE NOT NULL,
     hours_spent INT NOT NULL,
     score INT NOT NULL,
     
     FOREIGN KEY (plane_id)
  REFERENCES AIRPLANE(plane_id),
     FOREIGN KEY (tech_id)
  REFERENCES TECHNICIAN(tech_id),
     FOREIGN KEY (test_id)
  REFERENCES TEST(test_id)
   );
   
   