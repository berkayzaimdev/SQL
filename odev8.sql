/*
1. test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
2. Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
4. Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
*/


-----------1-----------
CREATE TABLE IF NOT EXISTS employee
(
	id INTEGER,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
)

-----------2-----------
INSERT INTO employee 
VALUES 
(1, 'Robin Pedersen', '1997/12/13', 'rpedersen0@jalbum.net'),
(2, 'Alley Elflain', '1979/12/21', 'aelflain1@toplist.cz'),
(3, 'Kristofor Casetta', '1991/10/06', 'kcasetta2@artisteer.com'),
(4, 'Jillana Silson', '1988/01/17', 'jsilson3@zimbio.com'),
(5, 'Gabie Ondrasek', '1966/06/18', 'gondrasek4@blogspot.com'),
(6, 'Barclay Huggon', '1965/04/13', 'bhuggon5@newsvine.com'),
(7, 'Aeriel Younger', '1988/02/29', 'ayounger6@archive.org'),
(8, 'Loy Ketchaside', '1983/07/29', 'lketchaside7@abc.net.au'),
(9, 'Bibbye Rantoul', '1992/01/15', 'brantoul8@imageshack.us'),
(10, 'Jarid Bourgaize', '1990/11/16', 'jbourgaize9@addthis.com'),
(11, 'Maynord Abels', '1971/11/13', 'mabelsa@example.com'),
(12, 'Inglebert Oppy', '1971/10/17', 'ioppyb@trellian.com'),
(13, 'Layton McKernan', '1988/03/31', 'lmckernanc@prlog.org'),
(14, 'Anderea Pococke', '1968/03/07', 'apococked@blogspot.com'),
(15, 'Dayna Dullard', '1966/10/19', 'ddullarde@google.es'),
(16, 'Anderea Heyfield', '1995/11/12', 'aheyfieldf@paginegialle.it'),
(17, 'Agathe Aindriu', '1980/10/05', 'aaindriug@walmart.com'),
(18, 'Dilly Wilfing', '1993/11/05', 'dwilfingh@netvibes.com'),
(19, 'Ketty Mendonca', '1984/09/01', 'kmendoncai@myspace.com'),
(20, 'Whit Khan', '1996/04/17', 'wkhanj@google.co.jp'),
(21, 'Fawnia Brownbill', '1975/10/05', 'fbrownbillk@intel.com'),
(22, 'Marcelo Haylands', '1983/02/02', 'mhaylandsl@wikipedia.org'),
(23, 'Fernando Lanchberry', '1964/02/22', 'flanchberrym@bluehost.com'),
(24, 'Frasquito Clarkin', '1986/09/13', 'fclarkinn@typepad.com'),
(25, 'Harv Ecclestone', '1977/04/22', 'hecclestoneo@mac.com'),
(26, 'Brigida Gunningham', '1973/08/01', 'bgunninghamp@geocities.com'),
(27, 'Lotti Knowlden', '1960/12/24', 'lknowldenq@youtu.be'),
(28, 'Lula Node', '1986/04/25', 'lnoder@blogs.com'),
(29, 'Belita Moncreiff', '1977/09/18', 'bmoncreiffs@tmall.com'),
(30, 'Robby Garmey', '1995/04/23', 'rgarmeyt@archive.org'),
(31, 'Ulric Tretter', '1992/04/23', 'utretteru@networkadvertising.org'),
(32, 'Honor Skittrall', '1990/11/01', 'hskittrallv@unesco.org'),
(33, 'Sheena Vivers', '1973/12/05', 'sviversw@oaic.gov.au'),
(34, 'Jolynn Lothean', '1976/02/12', 'jlotheanx@umich.edu'),
(35, 'Daryn Milson', '1986/12/07', 'dmilsony@youku.com'),
(36, 'Alexandre Gieves', '1998/04/27', 'agievesz@sina.com.cn'),
(37, 'Balduin Sisse', '1995/05/05', 'bsisse10@de.vu'),
(38, 'Willem Giuroni', '1975/04/09', 'wgiuroni11@opensource.org'),
(39, 'Marie Tidey', '1968/03/19', 'mtidey12@bluehost.com'),
(40, 'Cybil Caps', '1992/04/04', 'ccaps13@businesswire.com'),
(41, 'Denver Mogenot', '1999/09/10', 'dmogenot14@fotki.com'),
(42, 'Sinclair Pigrome', '1975/05/02', 'spigrome15@bandcamp.com'),
(43, 'Addy MacLardie', '1986/07/05', 'amaclardie16@sina.com.cn'),
(44, 'Conni McClaurie', '1985/07/25', 'cmcclaurie17@state.tx.us'),
(45, 'L;urette Iskov', '1972/11/10', 'liskov18@ibm.com'),
(46, 'Brad Nelthrop', '1989/01/15', 'bnelthrop19@businessweek.com'),
(47, 'Fabe Jemmett', '1983/09/14', 'fjemmett1a@ftc.gov'),
(48, 'Stefania Mahody', '1976/11/08', 'smahody1b@clickbank.net'),
(49, 'Malissa Cowan', '1997/10/03', 'mcowan1c@yelp.com'),
(50, 'Myra Whitworth', '1972/10/27', 'mwhitworth1d@yolasite.com')

-----------3-----------
UPDATE employee
SET email = 'deneme@deneme.deneme'
WHERE id > 48;

UPDATE employee
SET name = 'Berkay Zaim'
WHERE name LIKE 'S%n';

UPDATE employee
SET name = 'Abc Def'
WHERE id = 22;

UPDATE employee
SET name = 'Lorem Ipsum'
WHERE birthday BETWEEN '1995/1/1' AND '1996/1/1';

UPDATE employee
SET birthday = NULL
WHERE name LIKE '%g';

-----------4-----------
DELETE FROM employee
WHERE id = 50;

DELETE FROM employee
WHERE birthday = NULL;

DELETE FROM employee
WHERE email LIKE '%.com';

DELETE FROM employee
WHERE name LIKE 'S%i';

DELETE FROM employee
WHERE birthday BETWEEN '1995/1/1' AND '1996/1/1';