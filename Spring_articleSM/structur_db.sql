CREATE TABLE tbl_category(
	cat_id serial PRIMARY KEY,
	cat_name VARCHAR(255)
)


CREATE TABLE tbl_user(
	u_id serial PRIMARY KEY,
	u_user VARCHAR(255),
	u_password VARCHAR(255),
	u_type VARCHAR(255)
)

CREATE TABLE tbl_article(
	art_id serial PRIMARY KEY,
	title VARCHAR(255),
	description VARCHAR(255),
	public_date VARCHAR(255),
	image VARCHAR(255),
	u_id INTEGER REFERENCES tbl_user(u_id),
	cat_id INTEGER REFERENCES tbl_category(cat_id)
	
)