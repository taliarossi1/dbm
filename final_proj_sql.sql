-- Talia Rossi --
-- 4/25/2014 --
-- FInal Project: The Lineages of the Grreat Houses of the Seven Kingdoms --

DROP TABLE IF EXISTS roster;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS houses;
DROP TABLE IF EXISTS arryns;
DROP TABLE IF EXISTS baratheons;
DROP TABLE IF EXISTS greyjoys;
DROP TABLE IF EXISTS lannisters;
DROP TABLE IF EXISTS martells;
DROP TABLE IF EXISTS starks;
DROP TABLE IF EXISTS targaryens;
DROP TABLE IF EXISTS tullys;
DROP TABLE IF EXISTS tyrells;
DROP TABLE IF EXISTS bastards;
DROP TABLE IF EXISTS gentry;

-- Create Statements --

-- Houses --
CREATE TABLE houses (
  houseName         text not null,
  houseWords        text,
  rulingRegion      text,
  houseSeat         text,
  houseSigil        text,
  sigilColor        text,
  bannerFieldColor  text,
 primary key(houseName)
);

-- Gentry --
CREATE TABLE gentry (
  wid          char(5) not null,
  firstName    text,
  lastName     text,
  houseName    text,
  birthStatus  text,
 primary key(wid)
);

-- House Arryn --
CREATE TABLE arryns (
  wid     char(5) not null references gentry(wid),
  title   text,
 primary key(wid)
);

-- House Baratheon --
CREATE TABLE baratheons (
  wid     char(5) not null references gentry(wid),
  title   text,
 primary key(wid)
);

-- House Greyjoy --
CREATE TABLE greyjoys (
  wid     char(5) not null references gentry(wid),
  title   text,
 primary key(wid)
);

-- House Lannister --
CREATE TABLE lannisters (
  wid     char(5) not null references gentry(wid),
  title   text,
 primary key(wid)
);

-- House Martell --
CREATE TABLE martells (
  wid     char(5) not null references gentry(wid),
  title   text,
 primary key(wid)
);

-- House Stark --
CREATE TABLE starks (
  wid     char(5) not null references gentry(wid),
  title   text,
 primary key(wid)
);

-- House Targaryen --
CREATE TABLE targaryens (
  wid     char(5) not null references gentry(wid),
  title   text,
 primary key(wid)
);

-- House Tully --
CREATE TABLE tullys (
  wid     char(5) not null references gentry(wid),
  title   text,
 primary key(wid)
);

-- House Tyrell --
CREATE TABLE tyrells (
  wid     char(5) not null references gentry(wid),
  title   text,
 primary key(wid)
);

-- Bastards --
CREATE TABLE bastards (
  wid     char(5) not null references gentry(wid),
 primary key(wid)
);

-- Orders --
CREATE TABLE orders (
  oid           char(5) not null,
  orderJoined   text,
 primary key(oid)
);

-- Roster -- 
CREATE TABLE roster (    
  wid     char(5) not null references gentry(wid),
  oid     char(5) not null references orders(oid),
 primary key(wid, oid)
);


-- Insert Statements --


-- Houses --

INSERT INTO houses(houseName, houseWords, rulingRegion, houseSeat, houseSigil, sigilColor, bannerFieldColor)
  VALUES('Arryn', 'As High As Honor', 'the Vale', 'the Eyrie', 'moon and falcon', 'celest and white', 'celest');

INSERT INTO houses(houseName, houseWords, rulingRegion, houseSeat, houseSigil, sigilColor, bannerFieldColor)
  VALUES('Baratheon', 'Ours is the Fury', 'the Stormlands', 'Storm''s End', 'stag', 'black', 'gold');

INSERT INTO houses(houseName, houseWords, rulingRegion, houseSeat, houseSigil, sigilColor, bannerFieldColor)
  VALUES('Greyjoy', 'We Do Not Sow', 'the Iron Islands', 'Pyke', 'kraken', 'gold', 'black');

INSERT INTO houses(houseName, houseWords, rulingRegion, houseSeat, houseSigil, sigilColor, bannerFieldColor)
  VALUES('Lannister', 'Hear Me Roar', 'the Westerlands', 'Casterly Rock', 'lion', 'gold', 'red');

INSERT INTO houses(houseName, houseWords, rulingRegion, houseSeat, houseSigil, sigilColor, bannerFieldColor)
  VALUES('Martell', 'Unbowed, Unbent, Unbroken', 'Dorne', 'Sunspear', 'sun pierced by a spear', 'red and gold', 'orange');

INSERT INTO houses(houseName, houseWords, rulingRegion, houseSeat, houseSigil, sigilColor, bannerFieldColor)
  VALUES('Stark', 'Winter is Coming', 'the North', 'Winterfell', 'direwolf', 'grey', 'white');

INSERT INTO houses(houseName, houseWords, rulingRegion, houseSeat, houseSigil, sigilColor, bannerFieldColor)
  VALUES('Targaryen', 'Fire and Blood', 'the Crownlands', 'Dragonstone', 'three-headed dragon', 'red', 'black');

INSERT INTO houses(houseName, houseWords, rulingRegion, houseSeat, houseSigil, sigilColor, bannerFieldColor)
  VALUES('Tully', 'Family, Duty, Honor', 'the Riverlands', 'Riverrun', 'trout', 'silver', 'red and blue');

INSERT INTO houses(houseName, houseWords, rulingRegion, houseSeat, houseSigil, sigilColor, bannerFieldColor)
  VALUES('Tyrell', 'Growing Strong', 'the Reach', 'Highgarden', 'rose', 'gold', 'green');


-- Gentry --

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w001', 'Jasper', 'Arryn', 'Arryn', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w002', 'Jon', 'Arryn', 'Arryn', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w003', 'Alys', 'Arryn', 'Arryn', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w004', 'Ronnel', 'Arryn', 'Arryn', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w005', 'Robert', 'Arryn', 'Arryn', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w006', 'Denys', 'Arryn', 'Arryn', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w007', 'Elbert', 'Arryn', 'Arryn', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w008', 'Harbert', 'Baratheon', 'Baratheon', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w009', 'Steffon', 'Baratheon', 'Baratheon', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w010', 'Robert', 'Baratheon', 'Baratheon', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w011', 'Stannis', 'Baratheon', 'Baratheon', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w012', 'Renly', 'Baratheon', 'Baratheon', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w013', 'Joffrey', 'Baratheon', 'Baratheon', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w014', 'Myrcella', 'Baratheon', 'Baratheon', 'true born');
  
INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w015', 'Tommen', 'Baratheon', 'Baratheon', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w016', 'Shireen', 'Baratheon', 'Baratheon', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w017', 'Mya', 'Stone', 'Baratheon', 'base born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w018', 'Edric', 'Storm', 'Baratheon', 'base born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w019', 'Gendry', 'Waters', 'Baratheon', 'base born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w020', 'Quellon', 'Greyjoy', 'Greyjoy', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w021', 'Balon', 'Greyjoy', 'Greyjoy', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w022', 'Euron', 'Greyjoy', 'Greyjoy', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w023', 'Victarion', 'Greyjoy', 'Greyjoy', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w024', 'Urrigon', 'Greyjoy', 'Greyjoy', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w025', 'Aeron', 'Greyjoy', 'Greyjoy', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w026', 'Harlon', 'Greyjoy', 'Greyjoy', 'true born');
  
INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w027', 'Quenton', 'Greyjoy', 'Greyjoy', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w028', 'Donel', 'Greyjoy', 'Greyjoy', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w029', 'Rodrik', 'Greyjoy', 'Greyjoy', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w030', 'Maron', 'Greyjoy', 'Greyjoy', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w031', 'Asha', 'Greyjoy', 'Greyjoy', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w032', 'Theon', 'Greyjoy', 'Greyjoy', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w033', 'Robin', 'Greyjoy', 'Greyjoy', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w034', 'Tytos', 'Lannister', 'Lannister', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w035', 'Tywin', 'Lannister', 'Lannister', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w036', 'Kevan', 'Lannister', 'Lannister', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w037', 'Tygett', 'Lannister', 'Lannister', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w038', 'Gerion', 'Lannister', 'Lannister', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w039', 'Genna', 'Lannister', 'Lannister', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w040', 'Cersei', 'Lannister', 'Lannister', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w041', 'Jaime', 'Lannister', 'Lannister', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w042', 'Tyrion', 'Lannister', 'Lannister', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w043', 'Lancel', 'Lannister', 'Lannister', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w044', 'Willem', 'Lannister', 'Lannister', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w045', 'Martyn', 'Lannister', 'Lannister', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w046', 'Janei', 'Lannister', 'Lannister', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w047', 'Joy', 'Hill', 'Lannister', 'base born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w048', 'Lewyn', 'Martell', 'Martell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w049', 'Doran', 'Martell', 'Martell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w050', 'Mors', 'Martell', 'Martell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w051', 'Olyvar', 'Martell', 'Martell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w052', 'Elia', 'Martell', 'Martell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w053', 'Oberyn', 'Martell', 'Martell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w054', 'Arianne', 'Martell', 'Martell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w055', 'Quentyn', 'Martell', 'Martell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w056', 'Trystane', 'Martell', 'Martell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w058', 'Obara', 'Sand', 'Martell', 'base born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w059', 'Nymeria', 'Sand', 'Martell', 'base born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w060', 'Tyene', 'Sand', 'Martell', 'base born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w061', 'Sarella', 'Sand', 'Martell', 'base born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w062', 'Elia', 'Sand', 'Martell', 'base born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w063', 'Obella', 'Sand', 'Martell', 'base born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w064', 'Dorea', 'Sand', 'Martell', 'base born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w065', 'Loreza', 'Sand', 'Martell', 'base born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w066', 'Willam', 'Stark', 'Stark', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w067', 'Artos', 'Stark', 'Stark', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w068', 'Edwyle', 'Stark', 'Stark', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w069', 'Brandon I', 'Stark', 'Stark', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w070', 'Rickard', 'Stark', 'Stark', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w071', 'Brandon II', 'Stark', 'Stark', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w072', 'Eddard', 'Stark', 'Stark', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w073', 'Benjen', 'Stark', 'Stark', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w074', 'Lyanna', 'Stark', 'Stark', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w075', 'Robb', 'Stark', 'Stark', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w076', 'Sansa', 'Stark', 'Stark', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w077', 'Arya', 'Stark', 'Stark', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w078', 'Brandon III', 'Stark', 'Stark', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w079', 'Rickon', 'Stark', 'Stark', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w080', 'Jon', 'Snow', 'Stark', 'base born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w081', 'Aegon V', 'Targaryen', 'Targaryen', 'true born');  

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w082', 'Rhaelle', 'Targaryen', 'Targaryen', 'true born'); 

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w083', 'Jaehaerys II', 'Targaryen', 'Targaryen', 'true born'); 

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w084', 'Aerys II', 'Targaryen', 'Targaryen', 'true born'); 

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w085', 'Rhaella', 'Targaryen', 'Targaryen', 'true born'); 

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w086', 'Rhaegar', 'Targaryen', 'Targaryen', 'true born'); 

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w087', 'Viserys', 'Targaryen', 'Targaryen', 'true born'); 

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w088', 'Daenerys', 'Targaryen', 'Targaryen', 'true born'); 

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w089', 'Rhaenys', 'Targaryen', 'Targaryen', 'true born'); 

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w090', 'Aegon', 'Targaryen', 'Targaryen', 'true born'); 

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w091', 'Hoster', 'Tully', 'Tully', 'true born'); 

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w092', 'Brynden', 'Tully', 'Tully', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w093', 'Catelyn', 'Tully', 'Tully', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w094', 'Edmure', 'Tully', 'Tully', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w095', 'Lysa', 'Tully', 'Tully', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w096', 'Luthor I', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w097', 'Garth', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w098', 'Moryn', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w099', 'Gormon', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w100', 'Mace', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w101', 'Janna', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w102', 'Mina', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w103', 'Garse', 'Flowers', 'Tyrell', 'base born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w104', 'Garrett', 'Flowers', 'Tyrell', 'base born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w105', 'Luthor II', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w106', 'Leo', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w107', 'Wilas', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w108', 'Garlan', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w109', 'Loras', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w110', 'Margaery', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w111', 'Theodore', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w112', 'Olene', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w113', 'Medwick', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w114', 'Elinor', 'Tyrell', 'Tyrell', 'true born');

INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w115', 'Luthor', 'Tyrell', 'Tyrell', 'true born');


-- Arryns --

INSERT INTO arryns(wid, title)
  VALUES('w001', 'Lord of the Eyrie');

INSERT INTO arryns(wid, title)
  VALUES('w002', 'Hand of the King');

INSERT INTO arryns(wid, title)
  VALUES('w003', 'Lady');

INSERT INTO arryns(wid, title)
  VALUES('w004', 'Keeper of the Gates of the Moon');

INSERT INTO arryns(wid, title)
  VALUES('w005', 'Lord of the Eyrie');

INSERT INTO arryns(wid, title)
  VALUES('w006', 'Ser');

INSERT INTO arryns(wid, title)
  VALUES('w007', 'Lord');


-- Baratheons --

INSERT INTO baratheons(wid, title)
  VALUES('w008', 'Ser');

INSERT INTO baratheons(wid, title)
  VALUES('w009', 'Lord of Storm''s End');

INSERT INTO baratheons(wid, title)
  VALUES('w010', 'King of the Seven Kingdoms of Westeros');

INSERT INTO baratheons(wid, title)
  VALUES('w011', 'King of the Seven Kingdoms of Westeros');

INSERT INTO baratheons(wid, title)
  VALUES('w012', 'King of the Seven Kingdoms of Westeros');

INSERT INTO baratheons(wid, title)
  VALUES('w013', 'King of the Seven Kingdoms of Westeros');  

INSERT INTO baratheons(wid, title)
  VALUES('w014', 'Princess');

INSERT INTO baratheons(wid, title)
  VALUES('w015', 'King of the Seven Kingdoms of Westeros');

INSERT INTO baratheons(wid, title)
  VALUES('w016', 'Princess');


-- Greyjoys --

INSERT INTO greyjoys(wid, title)
  VALUES('w020', 'Lord of the Iron Islands');

INSERT INTO greyjoys(wid, title)
  VALUES('w021', 'King of the Iron Islands and the North');

INSERT INTO greyjoys(wid, title)
  VALUES('w022', 'King of the Iron Islands and the North');

INSERT INTO greyjoys(wid, title)
  VALUES('w023', 'Lord Captian of the Iron Fleet');

INSERT INTO greyjoys(wid, title)
  VALUES('w024', 'Lord');

INSERT INTO greyjoys(wid, title)
  VALUES('w025', 'Priest of the Drowned God');

INSERT INTO greyjoys(wid, title)
  VALUES('w026', 'Lord');

INSERT INTO greyjoys(wid, title)
  VALUES('w027', 'Lord');

INSERT INTO greyjoys(wid, title)
  VALUES('w028', 'Lord');

INSERT INTO greyjoys(wid, title)
  VALUES('w029', 'Lord');

INSERT INTO greyjoys(wid, title)
  VALUES('w030', 'Lord');

INSERT INTO greyjoys(wid, title)
  VALUES('w031', 'Captain of the Black Wind');

INSERT INTO greyjoys(wid, title)
  VALUES('w032', 'Lord of the Iron Islands');

INSERT INTO greyjoys(wid, title)
  VALUES('w033', 'Lord');


-- Lannisters --

INSERT INTO lannisters(wid, title)
  VALUES('w034', 'Lord of Casterly Rock');

INSERT INTO lannisters(wid, title)
  VALUES('w035', 'Hand of the King');

INSERT INTO lannisters(wid, title)
  VALUES('w036', 'Ser');

INSERT INTO lannisters(wid, title)
  VALUES('w037', 'Ser');

INSERT INTO lannisters(wid, title)
  VALUES('w038', 'Lord');

INSERT INTO lannisters(wid, title)
  VALUES('w039', 'Lady');

INSERT INTO lannisters(wid, title)
  VALUES('w040', 'Queen of the Seven Kingdoms of Westeros');

INSERT INTO lannisters(wid, title)
  VALUES('w041', 'Lord Commander of the Kingsguard');

INSERT INTO lannisters(wid, title)
  VALUES('w042', 'Acting Hand of the King');

INSERT INTO lannisters(wid, title)
  VALUES('w043', 'Ser');

INSERT INTO lannisters(wid, title)
  VALUES('w044', 'Squire');

INSERT INTO lannisters(wid, title)
  VALUES('w045', 'Squire');

INSERT INTO lannisters(wid, title)
  VALUES('w046', 'Lady');


-- Martells --

INSERT INTO martells(wid, title)
  VALUES('w048', 'Prince of Dorne');

INSERT INTO martells(wid, title)
  VALUES('w049', 'Prince of Dorne');

INSERT INTO martells(wid, title)
  VALUES('w050', 'Prince of Dorne');

INSERT INTO martells(wid, title)
  VALUES('w051', 'Prince of Dorne');

INSERT INTO martells(wid, title)
  VALUES('w052', 'Princess');

INSERT INTO martells(wid, title)
  VALUES('w053', 'Prince of Dorne');

INSERT INTO martells(wid, title)
  VALUES('w054', 'Princess of Dorne');

INSERT INTO martells(wid, title)
  VALUES('w055', 'Prince of Dorne');

INSERT INTO martells(wid, title)
  VALUES('w056', 'Prince of Dorne');


-- Starks --

INSERT INTO starks(wid, title)
  VALUES('w066', 'Lord of Winterfell');

INSERT INTO starks(wid, title)
  VALUES('w067', 'Lord');

INSERT INTO starks(wid, title)
  VALUES('w068', 'Lord of Winterfell');

INSERT INTO starks(wid, title)
  VALUES('w069', 'Lord');

INSERT INTO starks(wid, title)
  VALUES('w070', 'Lord of Winterfell');

INSERT INTO starks(wid, title)
  VALUES('w071', 'Lord of Winterfell');

INSERT INTO starks(wid, title)
  VALUES('w072', 'Hand of the King');

INSERT INTO starks(wid, title)
  VALUES('w073', 'First Ranger');

INSERT INTO starks(wid, title)
  VALUES('w074', 'Lady');

INSERT INTO starks(wid, title)
  VALUES('w075', 'King in the North');

INSERT INTO starks(wid, title)
  VALUES('w076', 'Princess of Winterfell');

INSERT INTO starks(wid, title)
  VALUES('w077', 'Princess of Winterfell');

INSERT INTO starks(wid, title)
  VALUES('w078', 'Prince of Winterfell');

INSERT INTO starks(wid, title)
  VALUES('w079', 'Prince of Winterfell');


-- Targaryens --

INSERT INTO targaryens(wid, title)
  VALUES('w081', 'King of the Seven Kingdoms of Westeros');

INSERT INTO targaryens(wid, title)
  VALUES('w082', 'Princess');

INSERT INTO targaryens(wid, title)
  VALUES('w083', 'King of the Seven Kingdoms of Westeros');

INSERT INTO targaryens(wid, title)
  VALUES('w084', 'King of the Seven Kingdoms of Westeros');

INSERT INTO targaryens(wid, title)
  VALUES('w085', 'Queen of the Seven Kingdoms of Westeros');

INSERT INTO targaryens(wid, title)
  VALUES('w086', 'Prince of Dragonstone');

INSERT INTO targaryens(wid, title)
  VALUES('w087', 'King of the Andals and the Rhoynar and the First Men, Lord of the Seven Kingdoms of Westeros');

INSERT INTO targaryens(wid, title)
  VALUES('w088', 'Queen of the Andals and the First Men, Lord of the Seven Kingdoms of Westeros, Khaleesi of the Great Grass Sea, Queen of Meereen');

INSERT INTO targaryens(wid, title)
  VALUES('w089', 'Princess');

INSERT INTO targaryens(wid, title)
  VALUES('w090', 'Prince');


-- Tullys --

INSERT INTO tullys(wid, title)
  VALUES('w091', 'Lord of Riverrun');

INSERT INTO tullys(wid, title)
  VALUES('w092', 'Warden of the Southern Marches');

INSERT INTO tullys(wid, title)
  VALUES('w093', 'Lady of Winterfell');

INSERT INTO tullys(wid, title)
  VALUES('w094', 'Lord of Riverrun');

INSERT INTO tullys(wid, title)
  VALUES('w095', 'Lady of the Vale');


-- Tyrells --

INSERT INTO tyrells(wid, title)
  VALUES('w096', 'Lord of Highgarden');

INSERT INTO tyrells(wid, title)
  VALUES('w097', 'Lord Seneschal');

INSERT INTO tyrells(wid, title)
  VALUES('w098', 'Lord Commander of the City Watch of Oldtown');

INSERT INTO tyrells(wid, title)
  VALUES('w099', 'Maester');

INSERT INTO tyrells(wid, title)
  VALUES('w100', 'Hand of the King');

INSERT INTO tyrells(wid, title)
  VALUES('w101', 'Lady');

INSERT INTO tyrells(wid, title)
  VALUES('w102', 'Lady');

INSERT INTO tyrells(wid, title)
  VALUES('w105', 'Ser');

INSERT INTO tyrells(wid, title)
  VALUES('w106', 'Lord');

INSERT INTO tyrells(wid, title)
  VALUES('w107', 'Lord');

INSERT INTO tyrells(wid, title)
  VALUES('w108', 'Lord of Bridgewater Keep');

INSERT INTO tyrells(wid, title)
  VALUES('w109', 'Ser');

INSERT INTO tyrells(wid, title)
  VALUES('w110', 'Queen of the Seven Kingdoms of Westeros');

INSERT INTO tyrells(wid, title)
  VALUES('w111', 'Ser');

INSERT INTO tyrells(wid, title)
  VALUES('w112', 'Lady');

INSERT INTO tyrells(wid, title)
  VALUES('w113', 'Maester');

INSERT INTO tyrells(wid, title)
  VALUES('w114', 'Lady');

INSERT INTO tyrells(wid, title)
  VALUES('w115', 'Squire');


-- Bastards --

INSERT INTO bastards(wid)
  VALUES('w017');

INSERT INTO bastards(wid)
  VALUES('w018');

INSERT INTO bastards(wid)
  VALUES('w019');

INSERT INTO bastards(wid)
  VALUES('w047');

INSERT INTO bastards(wid)
  VALUES('w058');

INSERT INTO bastards(wid)
  VALUES('w059');

INSERT INTO bastards(wid)
  VALUES('w060');

INSERT INTO bastards(wid)
  VALUES('w061');

INSERT INTO bastards(wid)
  VALUES('w062');

INSERT INTO bastards(wid)
  VALUES('w063');

INSERT INTO bastards(wid)
  VALUES('w064');

INSERT INTO bastards(wid)
  VALUES('w065');

INSERT INTO bastards(wid)
  VALUES('w080');

INSERT INTO bastards(wid)
  VALUES('w103');

INSERT INTO bastards(wid)
  VALUES('w104');


-- Orders --

INSERT INTO orders(oid, orderJoined)
  VALUES('o01', 'Kingsguard');

INSERT INTO orders(oid, orderJoined)
  VALUES('o02', 'Nightswatch');

INSERT INTO orders(oid, orderJoined)
  VALUES('o03', 'Order of Maesters');


-- Roster --

INSERT INTO roster(oid, wid)
  VALUES('o01', 'w041');  

INSERT INTO roster(oid, wid)
  VALUES('o01', 'w048'); 

INSERT INTO roster(oid, wid)
  VALUES('o01', 'w109'); 

INSERT INTO roster(oid, wid)
  VALUES('o02', 'w073'); 

INSERT INTO roster(oid, wid)
  VALUES('o02', 'w080');   

INSERT INTO roster(oid, wid)
  VALUES('o03', 'w099'); 

INSERT INTO roster(oid, wid)
  VALUES('o03', 'w113'); 

---------------------------------------------------

-- Queres ---

select *
from houses;

select *
from gentry;

select *
from orders;

select *
from roster;


-- Views --

-- Gentry Orders --

create view GentryOrders as
     select g.firstName as "First Name",
            g.lastName as "Surname",
            g.houseName as "House Name",
            o.orderJoined as "Affiliated Order"
     from gentry g,
          orders o,
          roster r
     where r.oid = o.oid
       and r.wid = g.wid
order by g.houseName asc


-- Houses In Orders --

create view HousesInOrders as
     select h.rulingRegion as "Home Region",
            o.orderJoined as "Affiliated Order"
     from houses h,
          gentry g,
          roster r,
          orders o
     where r.oid = o.oid
       and r.wid = g.wid
       and h.houseName = g.houseName
order by h.rulingRegion ASC


-- Reports --

-- name and birth status of those who are in the Kingsguard --

select g.firstName,
       g.lastName,
       g.birthStatus
  from gentry g,
       roster r,
       orders o
  where r.oid = o.oid
    and r.wid = g.wid
    and o.orderJoined = 'Kingsguard'
order by g.lastName ASC



-- The house names and house words of any bastards --

select distinct h.houseName,
                h.houseWords
           from houses h,
                gentry g
           where g.houseName = h.houseName
             and g.birthStatus = 'base born'
order by h.houseName asc




-- The house names and banner descriptions of those who are in an order --

select distinct g.houseName,
                h.houseSigil,
                h.sigilColor,
                h.bannerFieldColor
           from gentry g,
                houses h,
                orders o,
                roster r
           where h.houseName = g.houseName
             and r.oid = o.oid
             and r.wid = g.wid
order by g.houseName ASC



-- Name any stark who has been the hand of the king --

select g.firstName,
       g.lastName
  from gentry g,
       starks s
  where g.wid = s.wid
    and s.title = 'Hand of the King'
order by g.lastName asc



-- Name any members of house Martell who do not have the surname Martell --

select distinct g.firstName,
                g.lastName
           from gentry g,
                martells m
           where g.houseName = 'Martell'
             and g.lastName != 'Martell'
order by g.firstName asc



-- Stored Procedures --

-- count the total number of gentry --

create or replace function gentry_count() returns int as $$
declare
   gentrycount int;
begin
   select count(*) into gentrycount from gentry;
   return gentrycount;
end;
$$
language plpgsql;

select gentry_count();


-- Triggers --


-- inserting a new person in the gentry table but not knowing their name --

create function unknown_first_name() returns trigger as $$
begin
   if new.firstName is null or new.firstName = ''
      then new.firstName := 'Unknown';
   end if;
   return new;
end;
$$
language plpgsql;

create trigger my_trigger
before insert on gentry
for each row
execute procedure unknown_first_name()


INSERT INTO gentry(wid, firstName, lastName, houseName, birthStatus)
  VALUES('w116', '', 'Tyrell', 'Tyrell', 'true born');

select *
from gentry



-- Security --

-- admin --

create roll admin
grant select, insert, update
on all tables in schema public
to admin


-- public users --

create roll user
grant select
on all tables in schema public
to user



