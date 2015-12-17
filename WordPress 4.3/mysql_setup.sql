SET PASSWORD for 'root'@'localhost' = PASSWORD('Pass@word1');
CREATE DATABASE wordpress;
GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'localhost' IDENTIFIED BY 'Pass@word1';
DROP DATABASE test;
