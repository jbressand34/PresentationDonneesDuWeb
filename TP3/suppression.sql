BEGIN
        FOR f IN (SELECT table_name FROM user_tables) loop
                execute immediate 'drop table "'||f.table_name||'" cascade constraints';
        end loop;
        commit;
end;
/

