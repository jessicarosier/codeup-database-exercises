USE codeup_test_db;


# All albums in your table.
SELECT * FROM albums;
# Make all the albums 10 times more popular (sales * 10)
UPDATE albums SET sales = sales * 10;


# All albums released before 1980
SELECT * FROM albums WHERE release_date < 1980;
# Move all the albums before 1980 back to the 1800s.
UPDATE albums SET release_date = 1800 WHERE release_date < 1980;


# All albums by Michael Jackson
SELECT * FROM albums WHERE artist_name = 'Michael Jackson';
# Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums SET artist_name = 'Peter Jackson' WHERE artist_name = 'Michael Jackson';