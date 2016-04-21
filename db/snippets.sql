# NOTE
# Select the current or next number from the id sequence
# on the `pictures` table.
SELECT currval('pictures_id_seq');
SELECT nextval('pictures_id_seq');

ALTER SEQUENCE IF EXISTS pictures_id_seq RESTART WITH 1;
