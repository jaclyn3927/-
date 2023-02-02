USE NNMJ;

DROP TABLE IF EXISTS Member;
CREATE TABLE Member(
	mem_id		INT			NOT NULL,
    mem_pw		CHAR(40)	NOT NULL,
    department	VARCHAR(50)	NOT NULL,
    mem_name	VARCHAR(30)	NOT NULL,
    gender		VARCHAR(10)	NOT NULL,
    PRIMARY KEY(mem_id)
) ENGINE = InnoDB	DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS Party;
CREATE TABLE Party(
	pt_number		INT				NOT NULL	AUTO_INCREMENT,
    writer			INT,
    pt_name			VARCHAR(200)	NOT NULL,
    category		VARCHAR(40)		NOT NULL,
    store			VARCHAR(45)		NOT NULL,
    date_eat		DATE			NOT NULL,
    time_eat		TIME			NOT NULL,
    way_eat			VARCHAR(20)		NOT NULL,
    location		VARCHAR(20)		NOT NULL,
    payment			VARCHAR(30)		NOT NULL,
    platform		VARCHAR(30)		NOT NULL,
    num_applicants	INT				NOT NULL,
    cnum_applicants	INT				NOT NULL	DEFAULT 0,
    link			VARCHAR(200)	NOT NULL,
    completion		CHAR(15)		NOT NULL	DEFAULT '미완료',
    PRIMARY KEY(pt_number),
    FOREIGN KEY(writer) REFERENCES Member(mem_id) ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS Application;
CREATE TABLE Application(
	app_number	INT 		NOT NULL,
    applicant	INT			NOT NULL,
    app_time	DATETIME	NOT NULL,
    accept		CHAR(15)	NOT NULL	DEFAULT '미확인',
    PRIMARY KEY(app_number, applicant),
	FOREIGN KEY(app_number) REFERENCES Party(pt_number) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(applicant) REFERENCES Member(mem_id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS Manager;
CREATE TABLE Manager(
	man_id		INT			NOT NULL,
    man_pw		CHAR(40)	NOT NULL,
    man_name	VARCHAR(30)	NOT NULL,
    phone		CHAR(30)	NOT NULL,
    PRIMARY KEY(man_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;