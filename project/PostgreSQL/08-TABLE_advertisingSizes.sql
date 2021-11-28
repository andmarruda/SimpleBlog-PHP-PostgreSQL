CREATE TABLE advertising_sizes(
	id_advertising_sizes BIGSERIAL NOT NULL CONSTRAINT advertising_sizes_pkey PRIMARY KEY,
	id_user BIGINT NOT NULL CONSTRAINT advertising_sizes_users_fkey REFERENCES users(id_user) MATCH SIMPLE ON UPDATE CASCADE ON DELETE RESTRICT,
	description VARCHAR(50) NOT NULL,
	width INTEGER NOT NULL,
	height INTEGER NOT NULL,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
) WITH(
oids=false
);