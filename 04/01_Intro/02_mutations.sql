-- change email-address of Kyle Waller
-- from vitae.purus.gravida@Cumsociisnatoque.co.uk to kylie.waller@hotmail.com
use guestbookdb;
SELECT firstname, lastname, email FROM users
where firstname = 'Kylie' and lastname = 'Waller';
UPDATE users
SET email = 'kylie.waller@hotmail.com'
where firstname = 'Kylie' and lastname = 'Waller';

/*
update address of
from exiting to
*/
SELECT firstname, lastname, address1,address2,zip,city FROM users;
where firstname = 'Kylie' and lastname = 'Waller';
UPDATE users
SET email = 'kylie.waller@hotmail.com'
where firstname = 'Kylie' and lastname = 'Waller';




/*
-- Change back
UPDATE users
SET email = 'vitae.purus.gravida@Cumsociisnatoque.co.uk'
where firstname = 'Kylie' and lastname = 'Waller';
 */