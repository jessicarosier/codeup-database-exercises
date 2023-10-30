USE adlister_db;

INSERT INTO users (first_name, last_name, email, password)
VALUES ('Jessica', 'Rosier', 'jessicarosierc@gmail.com', 'password'),
         ('Jordan', 'Rosier', 'jordanrosier1@gmail.com', 'paSSw0rd'),
         ('Roman', 'Gonzalez', 'blippyfan1@gmail.com', 'paSSw0rd'),
         ('Aaron', 'Zavala', 'ajamesz@gmail.com', 'paSSw0rd'),
         ('Rachel', 'Jimenez', 'charliechocolate@gmail.com', 'paSSw0rd'),
         ('Aden', 'Jordan', 'booklover1@gmail.com', 'paSSw0rd'),
         ('Ray', 'Jimenez', 'raybeez@gmail.com', 'paSSw0rd'),
         ('Carly', 'Hoshock', 'megaphone@gmail.com', 'paSSw0rd'),
         ('James', 'Hamilton', 'jamestheham@gmail.com', 'paSSw0rd'),
         ('Juan', 'Torres', 'juant89@gmail.com', 'paSSw0rd'),
         ('Shaun', 'Force', 'sbForce@yahoo.com', 'paSSw0rd');

INSERT INTO category (cat_title)
VALUES ('appliances'),
       ('automobiles'),
       ('boats'),
       ('bikes'),
       ('books'),
       ('cell phones'),
       ('clothing'),
       ('computer parts'),
       ('electronics'),
       ('free'),
       ('furniture'),
       ('household'),
       ('music instruments'),
       ('sporting goods'),
       ('tools'),
       ('toys & games'),
       ('video games'),
       ('other');

INSERT INTO ads (title, description, user_id)
VALUES ('Washer and Dryer', 'Washer and Dryer for sale. 2 years old. Works great. $500', 1),
       ('2005 Honda Accord', '2005 Honda Accord for sale. 150,000 miles. $5,000', 5),
       ('70in flat screen TV', '70in Samsung Flat Screen TV, works great, 300 bucks OBO', 1),
       ('Desk Chair', 'old rolling desk chair, the cat has been using it as a scratching post. Free to anyone who wants it.', 7),
       ('Play Station Games', 'Original playstation games incluing Parapa Tha Rappa and Um Jammer Lammy. Must haves for any great collection!', 3);


INSERT INTO ads_category (ad_id, cat_id) VALUES (1,1),(2,5),(3,1),(4,10),(5,17);




