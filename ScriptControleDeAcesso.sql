
/* CREATE USER 'luann'@'200.200.190.190' IDENTIFIED BY 'milani123456'; */
/* CREATE USER 'luann'@'%' IDENTIFIED BY 'milani123456'; */

CREATE USER 'andre'@'localhost' IDENTIFIED BY 'milani123456';
GRANT ALL PRIVILEGES ON curso_sql.* TO 'andre'@'localhost';

CREATE USER 'luann'@'%' IDENTIFIED BY 'andreviagem';
GRANT SELECT ON curso_sql.* TO 'luann'@'%';
/* GRANT INSERT ON curso_sql.* TO 'andre'@'%'; */
GRANT INSERT ON curso_sql.funcionarios TO 'luann'@'%';

REVOKE INSERT ON curso_sql.funcionarios FROM 'luann'@'%';
REVOKE SELECT ON curso_sql.* FROM 'andre'@'%';

GRANT SELECT ON curso_sql.funcionarios TO 'luann'@'%';
GRANT SELECT ON curso_sql.veiculos TO 'luann'@'%';

REVOKE SELECT ON curso_sql.funcionarios FROM 'luann'@'%';
REVOKE SELECT ON curso_sql.veiculos FROM 'luann'@'%';

REVOKE ALL ON curso_sql.* FROM 'luann'@'localhost';

DROP USER 'luann'@'%';
DROP USER 'luann'@'localhost';

SELECT User FROM mysql.user;
SHOW GRANTS FOR 'luann'@'%';
