CREATE TABLE article_comment(
	id_article_comment BIGSERIAL NOT NULL CONSTRAINT article_comment_pkey PRIMARY KEY,
	id_article BIGINT NOT NULL CONSTRAINT article_comment_fkey REFERENCES article(id_article) MATCH SIMPLE ON UPDATE CASCADE ON DELETE RESTRICT,
	comment_name VARCHAR(100) NOT NULL,
	comment_email VARCHAR(150) NOT NULL,
	comment_text TEXT NOT NULL,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
) WITH(
oids=false
);

ALTER TABLE article_comment ADD COLUMN authorized BOOLEAN;