CREATE OR REPLACE PROCEDURE format_phone(
	p_phone_no IN OUT VARCHAR2
	) IS

BEGIN
  p_phone_no := '+88'  || SUBSTR(p_phone_no,1,5) ||            
                '-'  || SUBSTR(p_phone_no,6);
END format_phone;
/

DECLARE
	v_phone_no VARCHAR2(30);
BEGIN
	v_phone_no := '&v_phone_no';
	format_phone(v_phone_no);
	dbms_output.put_line('Formatted phone number: '||v_phone_no);
END;
/




