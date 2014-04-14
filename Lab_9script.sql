-- Talia Rossi --
-- 4/15/2014 --
-- Lab 9 --

DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS engineers;
DROP TABLE IF EXISTS operators;
DROP TABLE IF EXISTS astronauts;
DROP TABLE IF EXISTS crew;
DROP TABLE IF EXISTS spacecraft;
DROP TABLE IF EXISTS catalog;
DROP TABLE IF EXISTS systems;
DROP TABLE IF EXISTS parts;
DROP TABLE IF EXISTS suppliers;


-- Create Tables --

-- People --
CREATE TABLE people (
  pid           char(4) not null,
  firstName     text,
  lastName      text,
  age           int,
 primary key(pid)
);


-- Engineers --
CREATE TABLE engineers (
  pid                 char(4) not null,
  highestDegree       text,
  favoriteVideoGame   text,
 primary key(pid)
);        

-- Operators --
CREATE TABLE operators (
  pid              char(4) not null,
  chairPreference  int,
  favoriteDrink    text,
 primary key(pid)
);

-- Astronauts --
CREATE TABLE astronauts (
  pid             char(4) not null,
  yearsFlying     int,
  golfHandicap    int,
 primary key(pid)
);

-- Spacecraft --
CREATE TABLE spacecraft (
  spid             char(4) not null,
  name             text,
  tailNumber       text,
  weightTons       int,
  fuelType         text,
  crewCapacity     int,
 primary key(spid)
);

-- Crew -- 
CREATE TABLE crew (   
  pid     char(4) not null references astronauts(pid),
  spid    char(4) not null references spacecraft(spid),
 primary key(pid,spid)
);

-- Systems --
CREATE TABLE systems (
  systid            char(7) not null,
  name              text,
  description       text,
 primary key(systid)
);

-- Parts --
CREATE TABLE parts (
  ptid            char(4) not null,
  name            text,
  description     text,
 primary key(ptid)
);

-- Suppliers --
CREATE TABLE suppliers (
  suid            char(5) not null,
  name            text,
  address         text,
  paymentTerms    text,
 primary key(suid)
);

CREATE TABLE catalog (   
  spid      char(4) not null references spacecraft(spid),
  systid    char(7) not null references systems(systid),
  ptid      char(4) not null references parts(ptid),
  suid      char(5) not null references suppliers(suid),
 primary key(spid,systid,ptid,suid)
);



-- Insert data into tables --


-- People --
INSERT INTO people(pid, firstName, lastName, age)
  VALUES('p01', 'Bob', 'Little', 55);
  
INSERT INTO people(pid, firstName, lastName, age)
  VALUES('p02', 'Sherlock', 'Holmes', 30);

INSERT INTO people(pid, firstName, lastName, age)
  VALUES('p03', 'John', 'Watson', 32);

INSERT INTO people(pid, firstName, lastName, age)
  VALUES('p04', 'Anna', 'Milton', 40);

INSERT INTO people(pid, firstName, lastName, age)
  VALUES('p05', 'Chris', 'Martin', 42);

INSERT INTO people(pid, firstName, lastName, age)
  VALUES('p06', 'Cosmo', 'Kramer', 39);

INSERT INTO people(pid, firstName, lastName, age)
  VALUES('p07', 'Greg', 'Pierce', 30);

INSERT INTO people(pid, firstName, lastName, age)
  VALUES('p08', 'Joanna', 'Harvelle', 39);

INSERT INTO people(pid, firstName, lastName, age)
  VALUES('p09', 'Megan', 'Masters', 57);


-- Engineers --
INSERT INTO engineers(pid, highestDegree, favoriteVideoGame)
  VALUES('p01', 'Bachelor', 'The Legend of Zelda: Ocarina of Time');
  
INSERT INTO engineers(pid, highestDegree, favoriteVideoGame)
  VALUES('p02', 'Master', 'Skyrim');

INSERT INTO engineers(pid, highestDegree, favoriteVideoGame)
  VALUES('p03', 'Master', 'Halo 3');


-- Operators --
INSERT INTO operators(pid, chairPreference, favoriteDrink)
  VALUES('p07', 10, 'Manhattan');

INSERT INTO operators(pid, chairPreference, favoriteDrink)
  VALUES('p08', 4, 'Martini');

INSERT INTO operators(pid, chairPreference, favoriteDrink)
  VALUES('p09', 9, 'Red wine');


-- Astronauts --
INSERT INTO astronauts(pid, yearsFlying, golfHandicap)
  VALUES('p04', 12, 9);

INSERT INTO astronauts(pid, yearsFlying, golfHandicap)
  VALUES('p05', 14, 17);

INSERT INTO astronauts(pid, yearsFlying, golfHandicap)
  VALUES('p06', 7, 3);


-- Spacecraft --
INSERT INTO spacecraft(spid, name, tailNumber, weightTons, fuelType, crewCapacity)
  VALUES('sp01', 'Enterprise' , 'NCC-1701', 150, 'fuel A', 20);

INSERT INTO spacecraft(spid, name, tailNumber, weightTons, fuelType, crewCapacity)
  VALUES('sp02', 'Voyager' , 'NCC-74656', 200, 'fuel B', 10);

INSERT INTO spacecraft(spid, name, tailNumber, weightTons, fuelType, crewCapacity)
  VALUES('sp03', 'Titan' , 'NCC-80102', 120, 'fuel A', 15);
  

-- Crew --
INSERT INTO crew(pid, spid)
  VALUES('p04', 'sp02');

INSERT INTO crew(pid, spid)
  VALUES('p05', 'sp01');

INSERT INTO crew(pid, spid)
  VALUES('p06', 'sp03');


-- Systems --
INSERT INTO systems(systid, name, description)
  VALUES('syst01', 'Power Supply', 'Produces electricity to be used by other onboard systems.');

INSERT INTO systems(systid, name, description)
  VALUES('syst02', 'Structural', 'Provides a place to attach components internaly and externally.');

INSERT INTO systems(systid, name, description)
  VALUES('syst03', 'Command and Data', 'responcible for overall management of activity.');

INSERT INTO systems(systid, name, description)
  VALUES('syst04', 'Propulsion', 'Maintaines and restores three-axis stability, controls spine, and executes maneuvers.');

INSERT INTO systems(systid, name, description)
  VALUES('syst05', 'Environmental', 'Protects the spacecraft''s components from extrememe thermal variations, micrometeoroid bombardment, and other space hazards.');

INSERT INTO systems(systid, name, description)
  VALUES('syst06', 'Landing', 'Slows spacecraft''s descent and guides it to a soft landing.');


-- Parts --
INSERT INTO parts(ptid, name, description)
  VALUES('pt01', 'Batteries', 'Produces a direct curret by converting chemical energy into electrical energy.');

INSERT INTO parts(ptid, name, description)
  VALUES('pt02', 'Radioisotope Thermoelectric Generator', 'Converts the heat produced by radioactive decay of plutonium into electricity.');

INSERT INTO parts(ptid, name, description)
  VALUES('pt03', 'Bus', 'Establishes basic geometry of spacecraft.');

INSERT INTO parts(ptid, name, description)
  VALUES('pt04', 'RAM', 'Random access memory, stores large quantities of digital information.');

INSERT INTO parts(ptid, name, description)
  VALUES('pt05', 'Spacecraft Clock', 'A counter that measures the passing of time during the life of the spacecraft.');

INSERT INTO parts(ptid, name, description)
  VALUES('pt06', 'Engines', 'Provides the large torques necessary to maintain stability during a solid rocket motor burn,');

INSERT INTO parts(ptid, name, description)
  VALUES('pt07', 'Thrusters', 'Used to provide the delta-V required for inerplanetary trajectory correction maneuvers, orbit trim maneuvers, and reaction wheel desaturation maneuvers.');

INSERT INTO parts(ptid, name, description)
  VALUES('pt08', 'Passive Cooling', 'Uses painting, shading, reflectors, and other techniques to cool the spacecraft.');

INSERT INTO parts(ptid, name, description)
  VALUES('pt09', 'Active Heating', 'Uses resistive electric heaters or radioisotope heaters to keep the spacecraft components above their minimal allowable temperatures.');

INSERT INTO parts(ptid, name, description)
  VALUES('pt10', 'Descent Engine', 'The rocket used to power the spacecraft as it makes a controlled landing.');

INSERT INTO parts(ptid, name, description)
  VALUES('pt11', 'Drogue', 'A small parachute used to slow and stabalize the spacecraft.');


-- Suppliers --
INSERT INTO suppliers(suid, name, address, paymentTerms)
  VALUES('su01', 'Kramerica Industries', '35 West Street', 'net 90');

INSERT INTO suppliers(suid, name, address, paymentTerms)
  VALUES('su02', 'Richard Roman Enterprises', '67 Angel Road', 'net 60');

INSERT INTO suppliers(suid, name, address, paymentTerms)
  VALUES('su03', 'Starchaser Industries', '55 Yellow Road', 'net 90');

INSERT INTO suppliers(suid, name, address, paymentTerms)
  VALUES('su04', 'Orbital Sciences Corp.', '198 Space Avenue', 'net 30');


-- Catalog --
INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp01', 'syst01', 'pt01', 'su01');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp01', 'syst01', 'pt02', 'su01');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp01', 'syst02', 'pt03', 'su01');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp01', 'syst03', 'pt04', 'su02');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp01', 'syst03', 'pt05', 'su02');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp01', 'syst04', 'pt06', 'su03');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp01', 'syst04', 'pt07', 'su03');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp01', 'syst05', 'pt08', 'su03');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp01', 'syst05', 'pt09', 'su03');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp01', 'syst06', 'pt10', 'su04');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp01', 'syst06', 'pt11', 'su04');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp02', 'syst01', 'pt01', 'su01');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp02', 'syst01', 'pt02', 'su01');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp02', 'syst02', 'pt03', 'su01');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp02', 'syst03', 'pt04', 'su02');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp02', 'syst03', 'pt05', 'su02');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp02', 'syst04', 'pt06', 'su03');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp02', 'syst04', 'pt07', 'su03');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp02', 'syst05', 'pt08', 'su03');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp02', 'syst05', 'pt09', 'su03');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp02', 'syst06', 'pt10', 'su04');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp02', 'syst06', 'pt11', 'su04');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp03', 'syst01', 'pt01', 'su01');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp03', 'syst01', 'pt02', 'su01');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp03', 'syst02', 'pt03', 'su01');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp03', 'syst03', 'pt04', 'su02');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp03', 'syst03', 'pt05', 'su02');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp03', 'syst04', 'pt06', 'su03');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp03', 'syst04', 'pt07', 'su03');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp03', 'syst05', 'pt08', 'su03');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp03', 'syst05', 'pt09', 'su03');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp03', 'syst06', 'pt10', 'su04');

INSERT INTO catalog(spid, systid, ptid, suid)
  VALUES('sp03', 'syst06', 'pt11', 'su04');


-- Display the data --



select *
from people;

select *
from engineers;

select *
from operators;

select *
from astronauts;

select *
from spacecraft;

select *
from crew;

select *
from systems;

select *
from parts;

select *
from suppliers;

select *
from catalog;

