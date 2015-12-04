 
CREATE OR REPLACE TRIGGER cascade_update_person
AFTER UPDATE OF name ON person     
REFERENCING NEW AS upd OLD AS prev
FOR EACH ROW
  BEGIN
		cascade_update.update_tables('phone',:prev.per_id,:upd.per_id);
  END;