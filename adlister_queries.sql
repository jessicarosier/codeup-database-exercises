USE adlister_db;
# For a given ad, what is the email address of the user that created it?
SELECT title, description, email
FROM ads
JOIN users
ON ads.user_id = users.id
WHERE ads.id = 3;

# For a given ad, what category, or categories, does it belong to?
SELECT cat_title, ads.title
FROM ads
JOIN ads_category
ON ads.id = ads_category.ad_id
JOIN category
ON ads_category.cat_id = category.id
WHERE ads.id = 3;

# For a given category, show all the ads that are in that category.
SELECT ads.title, cat_title
FROM ads
JOIN ads_category
ON ads.id = ads_category.ad_id
JOIN category
ON ads_category.cat_id = category.id
WHERE cat_id = 17;

# For a given user, show all the ads they have posted.
SELECT CONCAT(first_name, ' ', last_name), ads.title, ads.description
FROM users
JOIN ads
ON users.id = ads.user_id
WHERE users.first_name = 'Jessica'