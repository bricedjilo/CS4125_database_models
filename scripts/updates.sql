/*
CREATE TABLE update_tables_
(
            main_table        VARCHAR2(30) NOT NULL,
            table_name       VARCHAR2(30) NOT NULL,
            column_name    VARCHAR2(30) NOT NULL,
CONSTRAINT pk_update_tables_
PRIMARY KEY (main_table,table_name,column_name)
  );
  /
*/  

CREATE OR REPLACE PACKAGE cascade_update AS

PROCEDURE update_column(
            old_value           IN VARCHAR2,
            new_value         IN VARCHAR2,
            table_name       IN VARCHAR2,
            update_column IN VARCHAR2
);

PROCEDURE update_tables(
            source_table      IN VARCHAR2,
            old_value           IN VARCHAR2,
            new_value         IN VARCHAR2
);

END cascade_update;
/

CREATE OR REPLACE PACKAGE BODY cascade_update AS
 
PROCEDURE update_column(
            old_value           IN VARCHAR2,
            new_value         IN VARCHAR2,
            table_name       IN VARCHAR2,
            update_column IN VARCHAR2)
AS

            cur                    INTEGER;
            rows_processed             INTEGER;

BEGIN

            cur:=DBMS_SQL.OPEN_CURSOR;

            dbms_sql.parse(cur,
            'UPDATE '||table_name||' set '||update_column||'='||chr(39)||new_value||chr(39)||chr(10)||
            ' WHERE '||update_column||'='||chr(39)||old_value||chr(39)||' AND 1=1',dbms_sql.v7);

            rows_processed:=DBMS_SQL.EXECUTE(cur);

            DBMS_SQL.CLOSE_CURSOR(cur);

END update_column;
 
PROCEDURE update_tables(
            source_table      IN VARCHAR2,
            old_value           IN VARCHAR2,
            new_value         IN VARCHAR2) as

            CURSOR get_table_name IS
                        SELECT
                                    *
                        FROM
                                    bbs_update_tables
                        WHERE
                                    main_table=source_table;

            update_rec        update_tables%ROWTYPE;

BEGIN

 OPEN get_table_name;
 FETCH get_table_name INTO update_rec;

LOOP

   EXIT WHEN get_table_name%NOTFOUND;

   update_column(old_value, new_value, update_rec.table_name, update_rec.column_name);

   FETCH get_table_name INTO update_rec;

 END LOOP;

 CLOSE get_table_name;

END update_tables;

END cascade_update;
/
