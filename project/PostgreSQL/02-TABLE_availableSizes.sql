CREATE TABLE available_sizes(
	id_available_sizes SERIAL NOT NULL CONSTRAINT available_sizes_pkey PRIMARY KEY,
	width INTEGER NOT NULL,
	description VARCHAR(50) NOT NULL
) with(
oids=false
);

INSERT INTO available_sizes(width, description) 
VALUES(964, 'Large'),
	  (667, 'Medium'), 
	  (370, 'Small');