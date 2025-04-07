# Creating Database
CREATE DATABASE Instagram;

USE Instagram;

# Creating Table Users
CREATE TABLE users1 (id INT AUTO_INCREMENT UNIQUE PRIMARY KEY, 
					username VARCHAR(255) NOT NULL,
                    created_at TIMESTAMP DEFAULT NOW());

# Creating Table Photos                    
CREATE TABLE photos1 (id INT AUTO_INCREMENT PRIMARY KEY,
					 image_url VARCHAR(255) NOT NULL,
                     user_id INT NOT NULL,
                     created_at TIMESTAMP DEFAULT NOW(),
                     FOREIGN KEY(user_id) REFERENCES users(id));

# Creating Table Comments
CREATE TABLE comments1(id INT AUTO_INCREMENT PRIMARY KEY,
					  comment_text VARCHAR(255) NOT NULL,
                      user_id INT NOT NULL,
                      photo_id INT NOT NULL,
                      created_at TIMESTAMP DEFAULT NOW(),
                      FOREIGN KEY (user_id) REFERENCES users(id),
                      FOREIGN KEY (photo_id) REFERENCES photos(id));

# Creating Table Likes
CREATE TABLE likes1(user_id INT NOT NULL,
			       photo_id INT NOT NULL,
                   created_at TIMESTAMP DEFAULT NOW(),
                   FOREIGN KEY(user_id) REFERENCES users(id),
                   FOREIGN KEY(photo_id) REFERENCES photos(id),
                   PRIMARY KEY(user_id,photo_id));

# Creating Table Follows
CREATE TABLE follows1(follower_id INT NOT NULL,
					 followee_id INT NOT NULL,
					 created_at TIMESTAMP DEFAULT NOW(),
                     FOREIGN KEY(follower_id) REFERENCES users(id),
                     FOREIGN KEY(followee_id) REFERENCES users(id),
                     PRIMARY KEY(follower_id,followee_id));

# Creating Table Tags
CREATE TABLE tags1(id INT AUTO_INCREMENT PRIMARY KEY,
				  tag_name VARCHAR(255) UNIQUE NOT NULL,
                  created_at TIMESTAMP DEFAULT NOW());

# Creating Table Photo-Tags
CREATE TABLE photo_tags1(photo_id INT NOT NULL,
						tag_id INT NOT NULL,
                        created_at TIMESTAMP DEFAULT NOW(),
                        FOREIGN KEY(photo_id) REFERENCES photos(id),
                        FOREIGN KEY(tag_id) REFERENCES tags(id),
                        PRIMARY KEY(photo_id,tag_id));

# Inserting Values in Database
INSERT INTO users (username, created_at) VALUES 
('Sachin', '2017-02-16 18:22:10.846'), 
('Sarah Khan', '2017-04-02 17:11:21.417'),
 ('Shaireen Shams', '2017-02-21 11:12:32.574'),
 ('Isha Negi', '2017-08-13 01:28:43.085'),
 ('Ria Juneja', '2016-12-07 01:04:39.298'),
 ('Gautam Dhawan', '2017-04-30 13:26:14.496'), 
 ('Farhan Akhtar', '2016-12-12 06:50:07.996'),
 ('Iqbal Ziya', '2016-08-20 02:19:45.512'), 
 ('Abhishek', '2016-06-24 19:36:30.978'), 
 ('Aditi', '2016-08-07 16:25:48.561'),
 ('Aditya', '2017-05-04 16:32:15.577'),
 ('Aman Vishen', '2017-01-19 01:34:14.296'),
 ('Amreen Ansari', '2017-03-29 17:09:02.344'), 
 ('Anurag', '2017-02-06 23:29:16.394'),
 ('Apoorv Sharma', '2016-10-05 14:10:20.453'),
 ('Ashutosh', '2016-08-02 21:32:45.646'), 
 ('Yash Vardhan', '2017-02-06 22:05:43.425'), 
 ('Wilson', '2016-10-21 18:16:56.390'), 
 ('Vinay', '2017-04-29 18:53:39.650'),
 ('Vinayak', '2016-08-31 02:42:30.288'),
 ('Vikas', '2017-01-23 11:51:15.467'),
 ('Suresh', '2016-12-27 09:48:17.380'), 
 ('Sanjeet', '2017-01-23 23:14:18.569'),
 ('Marvin', '2017-04-18 02:32:43.597'),
 ('Sandra', '2016-10-03 12:49:20.774'),
 ('Maryam', '2016-06-07 12:47:00.703'),
 ('Fajar', '2017-03-18 03:10:07.047'), 
 ('Azhar', '2016-08-18 07:15:02.823'),
 ('Mashad', '2016-09-11 18:51:56.965'),
 ('Gulafsha', '2016-09-23 21:24:20.222'),
 ('Inderjeet', '2016-09-29 20:28:12.457'),
 ('Jerin', '2016-08-26 19:36:22.199'),
 ('Priyanka', '2016-11-14 12:32:01.405'),
 ('Kritika', '2016-07-08 21:42:00.982'),
 ('Kuldeep', '2017-03-30 03:25:21.937'),
 ('Lusee', '2016-08-04 15:42:20.322'),
 ('Mani', '2016-07-27 00:56:44.310'),
 ('Nandita', '2016-05-14 07:56:25.835'),
 ('Neha', '2016-06-08 17:48:08.478'),
 ('Nikhil', '2016-05-19 09:51:25.779'),
 ('Nikita Sharma', '2016-07-17 17:25:44.855'),
 ('Maya', '2016-12-11 18:04:45.344'),
 ('Natasha', '2016-10-06 07:57:44.491'),
 ('Bobby', '2016-07-07 11:40:26.557'),
 ('Zakir Khan', '2017-02-05 21:23:37.392'),
 ('Neeraj', '2016-07-09 21:37:07.610'),
 ('Aveek', '2016-09-02 03:48:38.340'),
 ('Binish Khan', '2016-06-26 03:10:22.202'), 
 ('Divya', '2016-10-30 12:42:31.387');
INSERT INTO photos(image_url, user_id) VALUES
 ('http://elijah.biz', 1),
 ('https://shanon.org', 1),
 ('http://vicky.biz', 1),
 ('http://oleta.net', 1),
 ('https://jennings.biz', 1), 
 ('https://quinn.biz', 2),
 ('https://selina.name', 2),
 ('http://malvina.org', 2),
 ('https://branson.biz', 2), 
 ('https://elenor.name', 3),
 ('https://marcelino.com', 3), 
 ('http://felicity.name', 3),
 ('https://fred.com', 3),
 ('https://gerhard.biz', 4),
 ('https://sherwood.net', 4), 
 ('https://maudie.org', 4),
 ('http://annamae.name', 6),
 ('https://mac.org', 6),
 ('http://miracle.info', 6),
 ('http://emmet.com', 6),
 ('https://lisa.com', 6),
 ('https://brooklyn.name', 8),
 ('http://madison.net', 8), 
 ('http://annie.name', 8),
 ('http://darron.info', 8),
 ('http://saige.com', 9),
 ('https://reece.net', 9),
 ('http://vance.org', 9),
 ('http://ignacio.net', 9),
 ('http://kenny.com', 10), 
 ('http://remington.name', 10), 
 ('http://kurtis.info', 10),
 ('https://alisha.com', 11), 
 ('https://henderson.com', 11),
 ('http://bonnie.info', 11), 
 ('http://kennith.net', 11),
 ('http://camille.name', 11), 
 ('http://alena.net', 12),
 ('http://ralph.name', 12), 
 ('https://tyshawn.com', 12),
 ('https://adella.net', 12),
 ('https://cielo.info', 13),
 ('https://easter.net', 13), 
 ('http://golden.org', 13),
 ('http://kendall.biz', 13),
 ('https://glenda.info', 13), 
 ('http://dominic.biz', 15),
 ('http://tressie.info', 15), 
 ('http://estevan.org', 15),
 ('http://zena.com', 15), 
 ('https://hershel.com', 16);
 INSERT INTO follows1(follower_id, following_id) VALUES
 (2, 1),
 (2, 3),
 (2, 4),
 (2, 5), 
 (2, 6), 
 (2, 7), 
 (2, 8),
 (2, 9),
 (2, 10),
 (2, 11),
 (2, 12),
 (2, 13),
 (2, 14),
 (2, 15),
 (2, 16),
 (2, 17),
 (2, 18),
 (2, 19),
 (2, 20),
 (2, 21),
 (2, 22), 
 (2, 23), 
 (2, 24), 
 (2, 25),
 (2, 26),
 (2, 27),
 (2, 28),
 (2, 29),
 (2, 30),
 (2, 31),
 (2, 32),
 (2, 33),
 (2, 34),
 (2, 35), 
 (2, 36),
 (2, 37),
 (2, 38), 
 (2, 39),
 (2, 40),
 (2, 41),
 (2, 42), 
 (2, 43),
 (2, 44),
 (2, 45),
 (2, 46),
 (2, 47),
 (2, 48),
 (2, 49),
 (2, 50),
 (2, 51);
INSERT INTO likes(user_id,photo_id) VALUES 
(2, 1),
(5, 1),
 (9, 1),
 (10, 1),
 (11, 1),
 (14, 1),
 (19, 1),
 (21, 1),
 (24, 1),
 (35, 1),
 (36, 1),
 (41, 1),
 (46, 1),
 (47, 1),
 (54, 1),
 (55, 1),
 (57, 1),
 (66, 1), 
 (69, 1),
 (71, 1),
 (75, 1),
 (76, 1),
 (78, 1),
 (82, 1),
 (91, 1),
 (3, 2),
 (5, 2),
 (6, 2),
 (8, 2),
 (14, 2),
 (17, 2), 
 (19, 2),
 (21, 2),
 (24, 2),
 (26, 2),
 (27, 2),
 (30, 2),
 (31, 2),
 (33, 2);
INSERT INTO tags(tag_name) VALUES 
('sunset'),
('photography'),
 ('sunrise'),
 ('landscape'),
 ('food'),
 ('foodie'),
 ('delicious'),
 ('beauty'),
 ('stunning'),
 ('dreamy'),
 ('lol'),
 ('happy'),
 ('fun'),
 ('style'),
 ('hair'),
 ('fashion'),
 ('party'),
 ('concert'),
 ('drunk'),
 ('beach'),
 ('smile');
INSERT INTO photo_tags1(photo_id, tag_id) VALUES
 (1, 18),
 (1, 17),
 (1, 21),
 (1, 13),
 (1, 19),
 (2, 4),
 (2, 3),
 (2, 20),
 (2, 2),
 (3, 8),
 (4, 12),
 (4, 11),
 (4, 21),
 (4, 13),
 (5, 15),
 (5, 14),
 (5, 17),
 (5, 16),
 (6, 19),
 (6, 13),
 (6, 17),
 (6, 21),
 (7, 11),
 (7, 12),
 (7, 21),
 (7, 13),
 (8, 17),
 (8, 21),
 (8, 13),
 (8, 19),
 (9, 18),
 (10, 2),
 (11, 12),
 (11, 21),
 (11, 11),
 (12, 4),
 (13, 13),
 (13, 19),
 (14, 1),
 (14, 20),
 (17, 19),
 (17, 13),
 (17, 18),
 (19, 5),
 (21, 20), 
 (21, 3),
 (21, 1),
 (21, 4),
 (22, 7),
 (22, 5),
 (22, 6),
 (23, 18),
 (23, 19),
 (23, 13),
 (23, 21),
 (24, 12),
 (24, 13),
 (24, 21),
 (25, 8),
 (25, 21),
 (25, 10),
 (26, 20),
 (26, 21),
 (26, 8),
 (26, 9),
 (26, 10),
 (28, 9), 
 (28, 10),
 (29, 8),
 (29, 21),
 (29, 9),
 (29, 20),
 (30, 7),
 (30, 6),
 (30, 5),
 (31, 7),
 (31, 5),
 (32, 10),
 (32, 9), 
 (32, 21),
 (32, 8),
 (32, 20),
 (34, 11),
 (34, 13),
 (34, 12),
 (35, 6),
 (35, 7),
 (35, 5),
 (36, 5),
 (36, 7),
 (36, 6),
 (37, 18),
 (37, 21),
 (37, 13),
 (38, 3),
 (38, 2),
 (43, 11);
INSERT INTO comments1(comment_text, user_id, photo_id) VALUES 
('unde at dolorem', 2, 1),
 ('quae ea ducimus', 3, 1),
 ('alias a voluptatum', 5, 1),
 ('facere suscipit sunt', 14, 1),
 ('totam eligendi quaerat', 17, 1),
 ('vitae quia aliquam', 21, 1),
 ('exercitationem occaecati neque', 24, 1),
 ('sint ad fugiat', 31, 1),
 ('nesciunt aut nesciunt', 36, 1),
 ('laudantium ut nostrum', 41, 1),
 ('omnis aut asperiores', 52, 1), 
 ('et eum molestias', 54, 1),
 ('alias pariatur neque', 55, 1),
 ('amet iure adipisci', 57, 1),
 ('cum enim repellat', 62, 1),
 ('provident dolorem non', 63, 1),
 ('eos consequuntur impedit', 66, 1),
 ('voluptas nemo blanditiis', 71, 1),
 ('id fugit dolores', 72, 1),
 ('occaecati tenetur exercitationem', 75, 1),
 ('quasi deserunt voluptates', 76, 1), 
 ('reprehenderit sunt cumque', 78, 1),
 ('non impedit ut', 87, 1),
 ('voluptatum sit id', 91, 1),
 ('tenetur voluptas aspernatur', 98, 1),
 ('in veritatis quia', 3, 2),
 ('quis facilis ea', 5, 2),
 ('quia est sit', 14, 2),
 ('voluptatem doloremque accusamus', 15, 2),
 ('consectetur inventore quis', 18, 2),
 ('sunt dolorem reprehenderit', 19, 2),
 ('omnis omnis nulla', 21, 2),
 ('ullam in facilis', 24, 2),
 ('possimus consequuntur occaecati', 28, 2),
 ('voluptas dicta aut', 30, 2),
 ('explicabo qui ipsum', 31, 2),
 ('qui pariatur dolor', 35, 2),
 ('ratione debitis laborum', 36, 2),
 ('architecto tempora natus', 21, 3);
 DELIMITER //
 CREATE PROCEDURE GetUser1 (
 In in_username VARCHAR(50),
 IN in_email VARCHAR(100),
 OUT out_user_id INT
 )
 BEGIN
 INSERT INTO users (username, email,created_at)
 VALUES (in_username,in_email,NOW());
 SET out_user_id = LAST_INSERT_ID();
 END//
 DELIMITER ;
 
 DELIMITER //
 CREATE PROCEDURE GetPhoto1 (
 IN in_user_id INT,
 IN in_photo_url TEXT,
 IN in_caption TEXT,
 OUT out_photo_id INT)
 BEGIN
 INSERT INTO photos (user_id, photo_url, caption, uploaded_at)
 VALUES (in_user_id, in_photo_url, in_caption, NOW());
 SET out_photo_id = LAST_INSERT_ID();
 END//
 DELIMITER ;
 
 DELIMITER //
 CREATE PROCEDURE GetComment1 (
 IN in_user_id INT,
 IN in_photo_id INT,
 IN in_comment_id INT,
 OUT out_comment_id int)
 BEGIN
 INSERT INTO comments (user_id, photo_id, comment_text, commented_at)
 VALUES (in_user_id, in_photo_id, in_comment_text, NOW());
 SET out_comment_id = LAST_INSERT_ID();
 END //
 DELIMITER ;
 
 DELIMITER //
 CREATE PROCEDURE GetLike1 (
 IN in_user_id INT,
 IN in_photo_id INT,
 OUT out_status VARCHAR(50))
 BEGIN
 IF EXISTS (
 SELECT 1 FROM likes 
 WHERE user_id = in_user_id AND photo_id = in_photo_id)
 THEN
 SET out_status = 'Already liked';
 ELSE 
 INSERT INTO likes (user_id, photo_id, liked_at)
 VALUES (in_user_id, in_photo_id, NOW());
 SET out_status = 'Like added';
 END IF;
 END //
 DELIMITER ;
 
 DELIMITER //
 CREATE PROCEDURE GetFollow1 (
 IN in_follower_id INT,
 IN in_followed_id INT,
 OUT out_result VARCHAR(50))
 BEGIN
 IF in_follower_id = in_followed_id 
 THEN
 SET out_result = 'Cannot follow yourself';
 ELSEIF EXISTS (
 SELECT 1 FROM follows 
 WHERE follower_id = in_follower_id AND
 followed_id = in_followed_id)
 THEN
 SET out_result = 'Already following';
 else
 INSERT INTO follows (follower_id, followed_id, followed_at)
 VALUES (in_follower_id, in_followed_id, NOW());
 SET out_result = 'Followed successfully';
 END IF;
 END //
 DELIMITER ;
 
 DELIMITER //
 CREATE PROCEDURE GetTag(
 IN in_tag_name VARCHAR(50),
 OUT out_tag_id INT)
 BEGIN
 INSERT INTO tags (tag_name)
 VALUES (in_tag_name);
 SET out_tag_id = LAST_INSERT_ID():
 END //
 DELIMITER ;
 
 DELIMITER //
 CREATE PROCEDURE TagPhoto1 (
 IN in_photo_id INT,
 IN in_tag_id INT,
 OUT out_status VARCHAR(50))
 BEGIN 
 IF EXISTS (
 SELECT 1 FROM photo_tags 
 WHERE photo_id = in_photo_id AND tags_id = in_tag_id)
 THEN
 SET out_status = 'Already tagged';
 else
 INSERT INTO photo_tags (photo_id, tag_id)
 VALUES (in_photo-id, in_tag_id);
 SET out_status = 'Photo tagged ';
 END IF;
 END //
 DELIMITER ;
 
 #Q1) We want to reward our users who have been around the longest.  Find the 5 oldest users.
	 SELECT * FROM users 
     ORDER BY created_at LIMIT 5;
     
#Q2) What day of the week do most users register on? We need to figure out when to schedule and ad campaign.
	 SELECT DAYNAME(created_at) as day,
     COUNT(created_at) as day_count FROM users 
     GROUP BY day ORDER BY day_count DESC LIMIT 1;
     

#Q3) We want to target our inactive users with an email campaign. Find the users who have never posted a photo.
	 SELECT * FROM users
     WHERE id NOT IN (SELECT user_id FROM photos);
     
#Q4) We're running a new contest to see who can get the most likes on a single photo. WHO WON?
	 SELECT users.id as user_id,
     users.username as username,
     photos.id as photo_id, photos.image_url as url,
     COUNT(likes.user_id) as like_count FROM likes
     JOIN photos ON likes.photo_id=photos.id 
     JOIN users ON photos.user_id=users.id
     GROUP BY likes.photo_id
     ORDER BY like_count DESC LIMIT 1;

#Q5) Our Investors want to know. How many times does the average user post? Total number of photos/total number of users.
	 SELECT ROUND((SELECT COUNT(id) FROM photos)/(SELECT COUNT(id) FROM users),2)
     as photo_posting_avg_time;

#Q6) User ranking by postings higher to lower?
     SELECT users.id, users.username,
     COUNT(photos.id) as photos_posted FROM users
     JOIN photos ON users.id=photos.user_id 
     GROUP BY users.id 
     ORDER BY photos_posted DESC;

#Q7) Total numbers of users who have posted at least one time.
     SELECT COUNT(DISTINCT user_id) 
     as user_posted_atleast_once FROM photos;
     
#Q8) A brand wants to know which hashtags to use in a post. What are the top 5 most commonly used hashtags?
	 SELECT tags.id as tag_id,
     tags.tag_name as tag_name,
     COUNT(photo_tags.tag_id)
     as tag_count FROM tags
     JOIN photo_tags
     ON tags.id=photo_tags.tag_id
     GROUP BY tags.id 
     ORDER BY tag_count DESC LIMIT 5;
     
#Q9) We have a small problem with bots on our site. Find users who have liked every single photo on the site and Commented on every single photo.
	 SELECT users.id as user_id, users.username as username, COUNT(users.id) as total_likes_by_user FROM users JOIN likes ON users.id=likes.user_id GROUP BY users.id HAVING total_likes_by_user = (SELECT COUNT(*) FROM photos);
	 SELECT users.id as user_id, users.username as username, COUNT(comments.user_id) as total_comment FROM users JOIN comments ON users.id=comments.user_id GROUP BY users.id HAVING total_comment = (SELECT COUNT(DISTINCT comments.photo_id) FROM comments);
     
#Q10) We also have a problem with celebrities. Find users who have never commented on a photo.
	  SELECT users.id as user_id,
      users.username as username, 
      comments.comment_text FROM users
      LEFT JOIN comments 
      ON users.id=comments.user_id
      WHERE comments.comment_text IS NULL;
 