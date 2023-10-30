USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    # id = an integer that will not be negative or NULL and will be used as the primary key for this table
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    # artist will be a variable character that will be no longer than 50 characters
    artist_name VARCHAR(100),
    # name will be a variable character that will be no longer than 50 characters
    album_name VARCHAR(100),
    # release_date will be an integer
    release_date INT,
    # sales will be an decimal number that will be no longer than 10 digits total and will show 2 decimal places*/
    sales DECIMAL(5,1),
    # genre will be a variable character that is no longer than 50 characters
    genre VARCHAR(100),
    # tells the table that the id field will be the Primary Key for this table
    PRIMARY KEY (id)
);




