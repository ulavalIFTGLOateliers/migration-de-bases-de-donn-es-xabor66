ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician ADD COLUMN role varchar(50);
ALTER TABLE musician ADD COLUMN bandName varchar(50);
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;

UPDATE musician
SET role = 'vocals'
WHERE musicianName = 'Alina';
UPDATE musician
SET role = 'guitar'
WHERE musicianName = 'Mysterio';
UPDATE musician
SET role = 'percussion'
WHERE musicianName = 'Rainbow';
UPDATE musician
SET role = 'piano'
WHERE musicianName = 'Luna';

UPDATE musician
SET bandName = 'Crazy Duo'
WHERE musicianName = 'Alina';
UPDATE musician
SET bandName = 'Mysterio'
WHERE musicianName = 'Mysterio';
UPDATE musician
SET bandName = 'Crazy Duo'
WHERE musicianName = 'Rainbow';
UPDATE musician
SET bandName = 'Luna'
WHERE musicianName = 'Luna';

CREATE TABLE band (bandName varchar(50), creation YEAR, genre varchar(50), PRIMARY KEY (bandName));

INSERT INTO band (bandName, creation, genre)
VALUES ('Crazy Duo', 2015, 'rock');
INSERT INTO band (bandName, creation, genre)
VALUES ('Luna', 2009, 'classical');
INSERT INTO band (bandName, creation, genre)
VALUES ('Mysterio', 2019, 'pop');