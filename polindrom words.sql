declare
a_input varchar2(100):=&a;
c char(50);
b varchar2(100);
v varchar2(100);
begin
  for i in 1..length(a_input)
    loop
  c:=substr(a_input,i,1);
  select c  into b from dual;
  dbms_output.put(b);
  end loop;
       dbms_output.new_line();

  for i in reverse 1..length(a_input) loop
      c:=substr(a_input,i,1);
        select c  into v from dual;
dbms_output.put(v);
    end loop;
     dbms_output.new_line();
     if b=v then
       dbms_output.put_line(a_input||'  is poslindrom');
       else
                dbms_output.put_line(a_input||'  is not poslindrom');
                end if;

  end;
