CREATE TABLE article(
	id_article BIGSERIAL NOT NULL CONSTRAINT article_pkey PRIMARY KEY,
	title VARCHAR(50) NOT NULL,
	article TEXT NOT NULL,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	id_users BIGINT NOT NULL CONSTRAINT article_users_fkey REFERENCES users(id_user) MATCH SIMPLE ON UPDATE CASCADE ON DELETE RESTRICT
) WITH(
oids=false
);

ALTER TABLE article 
ADD COLUMN friendly_url VARCHAR(100) NOT NULL,
ADD COLUMN keywords varchar(100) not null,
ADD COLUMN meta_description varchar(100) not null;
