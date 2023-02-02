CREATE DATABASE NNMJ;

CREATE user 'nnmj_user'@'localhost' IDENTIFIED BY 'nnmj';
GRANT ALL PRIVILEGES ON NNMJ.* TO 'nnmj_user'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;

show databases;