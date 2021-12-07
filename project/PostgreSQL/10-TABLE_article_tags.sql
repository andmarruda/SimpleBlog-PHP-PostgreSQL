CREATE TABLE article_tags(
	id_article_tag BIGSERIAL NOT NULL CONSTRAINT article_tag_pkey PRIMARY KEY,
	id_article BIGINT NOT NULL CONSTRAINT article_tags_article_fkey REFERENCES article(id_article) MATCH SIMPLE ON UPDATE CASCADE ON DELETE RESTRICT,
	tag_text VARCHAR(60) NOT NULL
) with(
oids=false
);
