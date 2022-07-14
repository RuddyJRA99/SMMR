/*
DROP TABLE TRANSACTIONS;
DROP TABLE DEPOSITS;
DROP TABLE ACCOUNTS;
DROP TABLE MATERIALS;
DROP TABLE USERS;
DROP TABLE ROLES;
DROP TABLE ACCOUNTS_DEPOSITS;
*/


CREATE TABLE IF NOT EXISTS ROLES(
    ID INTEGER PRIMARY KEY auto_increment NOT NULL,
    NAME VARCHAR(50) NOT NULL,
    CREATED_AT DATE NOT NULL DEFAULT CURRENT_DATE,
    UPDATED_AT DATE NOT NULL DEFAULT CURRENT_DATE
);

INSERT INTO ROLES(ID, NAME) VALUES(NULL, 'SUPPORT');
INSERT INTO ROLES(ID, NAME) VALUES(NULL, 'ADMIN');

CREATE TABLE IF NOT EXISTS USERS (
    ID INTEGER PRIMARY KEY auto_increment,
    DNI VARCHAR(15) NOT NULL UNIQUE,
    NAME VARCHAR(50) NOT NULL,
    SURNAME VARCHAR(100) NOT NULL,
    EMAIL VARCHAR(100) NOT NULL UNIQUE,
    VER_MAIL BIT NOT NULL DEFAULT 0,
    PASSWORD VARCHAR(60) NOT NULL,
    CREATED_AT DATE NOT NULL DEFAULT CURRENT_DATE,
    UPDATED_AT DATE NOT NULL DEFAULT CURRENT_DATE,
    IMAGE_PATH VARCHAR(255),
    ID_ROLE INTEGER,
    REMEMBER_TOKEN VARCHAR(100),
    PASSWORD_RESETS VARCHAR(100),
    CONSTRAINT FK_USER_ROLE FOREIGN KEY (ID_ROLE) REFERENCES ROLES(ID)
);



CREATE TABLE IF NOT EXISTS MATERIALS(
    ID INTEGER PRIMARY KEY auto_increment NOT NULL,
    NAME VARCHAR(50) NOT NULL,
    VALUE INTEGER(9) NOT NULL,
    CREATED_AT DATE NOT NULL DEFAULT CURRENT_DATE,
    UPDATED_AT DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE IF NOT EXISTS ACCOUNTS(
    ID INTEGER PRIMARY KEY auto_increment NOT NULL,
    BALANCE INTEGER NOT NULL DEFAULT 0,
    ID_USUARIO INTEGER NOT NULL,
    CREATED_AT DATE NOT NULL DEFAULT CURRENT_DATE,
    UPDATED_AT DATE NOT NULL DEFAULT CURRENT_DATE,
    CONSTRAINT FK_ACCOUNT_USER FOREIGN KEY (ID_USUARIO) REFERENCES USERS(ID)
);

CREATE TABLE IF NOT EXISTS DEPOSITS(
    ID INTEGER PRIMARY KEY auto_increment NOT NULL,
    CONCEPT VARCHAR(255) NOT NULL,
    AMOUNT INTEGER(9) NOT NULL,
    CREATED_AT DATE NOT NULL DEFAULT CURRENT_DATE,
    UPDATED_AT DATE NOT NULL DEFAULT CURRENT_DATE,
    ID_ACCOUNT INTEGER NOT NULL,
    CONSTRAINT FK_DEPOSITS_ACCOUNT FOREIGN KEY (ID_ACCOUNT) REFERENCES ACCOUNTS(ID)
);

CREATE TABLE IF NOT EXISTS MATERIALS_DEPOSITS(
    ID INTEGER PRIMARY KEY auto_increment NOT NULL,
    AMOUNT INTEGER(9) NOT NULL,
    ID_MATERIAL INTEGER NOT NULL,
    ID_DEPOSIT INTEGER NOT NULL,
    CREATED_AT DATE NOT NULL DEFAULT CURRENT_DATE,
    UPDATED_AT DATE NOT NULL DEFAULT CURRENT_DATE,
    CONSTRAINT FK_ACCOUNT_DEPOSITS_DEPOSITS FOREIGN KEY (ID_DEPOSIT) REFERENCES DEPOSITS(ID),
    CONSTRAINT FK_ACCOUNT_DEPOSITS_MATERIALS FOREIGN KEY (ID_MATERIAL) REFERENCES MATERIALS(ID)
);

CREATE TABLE IF NOT EXISTS TRANSACTIONS(
    ID INTEGER PRIMARY KEY auto_increment NOT NULL,
    ID_DEBITED_ACCOUNT INTEGER NOT NULL,
    ID_CREDITED_ACCOUNT INTEGER NOT NULL,
    CONCEPT VARCHAR(255) NOT NULL,
    CREATED_AT DATE NOT NULL DEFAULT CURRENT_DATE,
    UPDATED_AT DATE NOT NULL DEFAULT CURRENT_DATE,
    CONSTRAINT FK_DEBITED_ACCOUNT_ACCOUNT FOREIGN KEY (ID_DEBITED_ACCOUNT) REFERENCES ACCOUNTS(ID),
    CONSTRAINT FK_CREDITED_ACCOUNT_ACCOUNT FOREIGN KEY (ID_CREDITED_ACCOUNT) REFERENCES ACCOUNTS(ID)
);