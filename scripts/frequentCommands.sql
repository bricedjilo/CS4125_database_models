-- Get all tables for this user
SELECT table_name from user_tables;
select 'drop table '|| table_name ||' cascade constraints;' from user_tables;

-- Install a jar in maven
mvn install:install-file -Dfile=ojdbc7-12.1.0.2.jar -DgroupId=com.oracle -DartifactId=ojdbc7-12.1.0.2 -Dversion=12.1.0.2 -Dpackaging=jar

-- 
SELECT NVL(MAX(P.per_ID), 0) AS MAX_VAL from person p;