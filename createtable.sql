USE doan_an

CREATE TABLE account (
	id int IDENTITY(1,1) PRIMARY KEY,
	idUser int ,
    username nvarchar(255) NOT NULL,
    password nvarchar(max) NOT NULL,
	role varchar(50) NOT NULL,
)
 SELECT * FROM account
 SELECT * FROM informationUser

INSERT INTO informationUser(fullName, email)
              VALUES ( N'Teacher 1', N'teacher1@gmail.com')
              INSERT INTO account (idUser, username, password, role)
              VALUES ((SELECT id FROM informationUser WHERE email = N'teacher1@gmail.com'),
                  N'teacher1@gmail.com',
                  N'$2b$10$64fD1AA5HLoLQAAEk33aHONPbCoy69RAwLCQFiff2RVujWdh272cK',
                  N'teacher')

CREATE TABLE informationUser (
	id int IDENTITY(1,1) PRIMARY KEY,
	idClass int NULL,
	fullName nvarchar(max)  NULL,
	email nvarchar(255)  NULL,
	avatar nvarchar(max) NULL,
	address nvarchar(max)  NULL,
	brithDay nvarchar(255)  NULL,
	sex nvarchar(10)  NULL,
	phone nvarchar(10)  NULL,
	cccd nvarchar (50)  NULL,
)

 SELECT * FROM class
CREATE TABLE class (
	id int IDENTITY (1,1) PRIMARY KEY,
	idUser int NULL,
	nameClass nvarchar(max) NOT NULL,
	list_student nvarchar(max) NULL,
)

INSERT INTO class (idUser, nameClass, list_student) 
	VALUES (
		23, N'Lập trình web', N'["12", "13","14", "15", "16", "17"]'
	)


CREATE TABLE lop_hoc_phan(
	id int IDENTITY (1,1) PRIMARY KEY,
	id_giaovien int NULL,
	TC int NULL,
	tiet nvarchar(max) NULL,
	tuan nvarchar(max) NULL,
	nhom nvarchar(50) NULL
)

SELECT * FROM lop_hoc_phan

INSERT INTO lop_hoc_phan (id_giaovien, TC, tiet, tuan, nhom) 
	VALUES (23, 3, N'1-4', N'1,3,4,5,6,7,8,9,10', N'1')

	UPDATE lop_hoc_phan SET idClass  = 1 WHERE id = 1

 
 ALTER TABLE lop_hoc_phan DROP COLUMN name

 SELECT * FROM chi_tiet_LHP WHERE idStudent = 13

ALTER TABLE chi_tiet_LHP ADD idLHP int null

CREATE TABLE chi_tiet_LHP (
	id int IDENTITY (1,1) PRIMARY KEY,
	idTeacher int NULL,
	idStudent nvarchar(max) NULL,
	diem_cc nvarchar(50) NULL,
	diem_bt nvarchar(50) NULL,
	giua_ky nvarchar(50) NULL,
	cuoi_ky nvarchar(50) NULL,
	diem_t4 nvarchar(50) NULL,
	diem_t10 nvarchar(50) NULL,
	diem_tong nvarchar(50) NULL,
	diem_chu nvarchar(50) NULL,
	diem_xac_nhan nvarchar(50) NULL
)

SELECT * FROM class

INSERT INTO chi_tiet_LHP (idStudent, idLHP,diem_cc, diem_bt, giua_ky, cuoi_ky, diem_t4, diem_t10, diem_tong, diem_chu)
	VALUES(13, 1, N'9', N'9', N'9', N'9', N'4', N'9', N'9', N'A')
		UPDATE chi_tiet_LHP SET idStudent  = 12 WHERE id = 2

SELECT
      chi_tiet_LHP.diem_cc,
	  chi_tiet_LHP.diem_bt,
	  chi_tiet_LHP.giua_ky,
	  chi_tiet_LHP.cuoi_ky,
	  chi_tiet_LHP.diem_t4,
	  chi_tiet_LHP.diem_t10,
	  chi_tiet_LHP.diem_tong,
	  chi_tiet_LHP.diem_chu,
      informationUser.fullName,
      informationUser.email,
	  class.nameClass
    FROM chi_tiet_LHP
	INNER JOIN informationUser ON chi_tiet_LHP.idStudent = 13 AND informationUser.id = chi_tiet_LHP.idStudent
	INNER JOIN class ON class.id = chi_tiet_LHP.idLHP


	SELECT
        informationUser.fullName
      FROM informationUser WHERE  id = 13


SELECT * FROM account WHERE username = N'student1@gmail.com'
SELECT * FROM informationUser

DELETE FROM informationUser
DELETE FROM account

ALTER TABLE informationUser
  ADD birthDay nvarchar(50) NULL





INSERT INTO informationUser(fullName, email)
VALUES ( N'Student 1', N'student1@gmail.com')
INSERT INTO account (idUser, username, password, role)
VALUES ((SELECT id FROM informationUser WHERE email = N'student1@gmail.com'),
		N'student1@gmail.com',
		N'123123',
		N'student')
 SELECT
	account.id,
    account.username,
    account.idUser,
    account.role,
	informationUser.idClass,
    informationUser.fullName,
    informationUser.email,
	informationUser.avatar,
    informationUser.address,
    informationUser.birthDay,
    informationUser.sex,
    informationUser.phone,
    informationUser.cccd
FROM account 
INNER JOIN informationUser 
ON account.idUser = informationUser.id 
AND informationUser.email = N'student1@gmail.com' 
AND account.username = N'student1@gmail.com'


SELECT
      account.id,
      account.username,
      account.password,
      account.idUser,
      account.role,
      informationUser.fullName,
      informationUser.email,
      informationUser.avatar,
      informationUser.address,
      informationUser.birthDay,
      informationUser.sex,
      informationUser.phone,
      informationUser.cccd
    FROM account inner JOIN informationUser ON account.username = N'student2@gmail.com' AND informationUser.id = account.idUser




