CREATE TABLE advertising(
	id_advertising BIGSERIAL NOT NULL CONSTRAINT advertising_pkey PRIMARY KEY,
	id_user BIGINT NOT NULL CONSTRAINT advertising_sizes_users_fkey REFERENCES users(id_user) MATCH SIMPLE ON UPDATE CASCADE ON DELETE RESTRICT,
	id_image BIGINT NOT NULL CONSTRAINT advertising_image_fkey REFERENCES image(id_image) MATCH SIMPLE ON UPDATE CASCADE ON DELETE RESTRICT,
	id_advertising_sizes BIGINT NOT NULL CONSTRAINT advertising_sizes_fkey REFERENCES advertising_sizes(id_advertising_sizes) MATCH SIMPLE ON UPDATE CASCADE ON DELETE RESTRICT,
	alt VARCHAR(50) NOT NULL,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
) WITH(
oids=false
);