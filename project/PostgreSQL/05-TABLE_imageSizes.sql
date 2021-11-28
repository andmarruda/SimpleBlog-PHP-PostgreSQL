CREATE TABLE image_sizes(
	id_image_sizes BIGSERIAL NOT NULL CONSTRAINT image_sizes_pkey PRIMARY KEY,
	id_image BIGINT NOT NULL CONSTRAINT image_sizes_image_fkey REFERENCES image(id_image) MATCH SIMPLE ON UPDATE CASCADE ON DELETE RESTRICT,
	id_available_sizes BIGINT NOT NULL CONSTRAINT image_sizes_sizes_fkey REFERENCES available_sizes(id_available_sizes) MATCH SIMPLE ON UPDATE CASCADE ON DELETE RESTRICT,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	filesize BIGINT NOT NULL,
	CONSTRAINT image_sizes_ukey UNIQUE(id_image, id_image_sizes)
) WITH(
oids=false
);