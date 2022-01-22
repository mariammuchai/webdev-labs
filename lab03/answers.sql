-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
--Q3....sorting
SELECT id, first_name, last_name
FROM users
ORDER BY last_name;


-- Exercise 4
--Q4...filtering
SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26; 


-- Exercise 5
--Q5....filtering
SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26 or user_id = 12;


-- Exercise 6
--Q6...
SELECT count(posts)
FROM posts;




-- Exercise 7
SELECT user_id, count(*)
FROM comments
GROUP BY user_id
ORDER BY count(*) desc;


-- Exercise 8
SELECT posts.id, posts.image_url, posts.user_id, users.username, users.first_name, users.last_name
FROM posts
JOIN users
ON posts.user_id = users.id
WHERE user_id = 26 or user_id = 12; 


-- Exercise 9
--Q9...
SELECT posts.id, posts.pub_date, following.following_id
FROM posts
JOIN following
ON posts.user_id = following.following_id
WHERE following.user_id = 26;



-- Exercise 10
SELECT posts.id, posts.pub_date, following.following_id, users.username
FROM posts
JOIN following
ON posts.user_id = following.following_id
JOIN users
ON posts.user_id = users.id
WHERE following.user_id = 26
ORDER BY posts.pub_date desc;



-- Exercise 11
INSERT INTO bookmarks(user_id, post_id) VALUES(26, 219);
INSERT INTO bookmarks(user_id, post_id) VALUES(26, 220);
INSERT INTO bookmarks(user_id, post_id) VALUES(26, 221);


-- Exercise 12
DELETE FROM bookmarks where user_id =26 and post_id = 219;
DELETE FROM bookmarks where user_id =26 and post_id = 220;
DELETE FROM bookmarks where user_id =26 and post_id = 221;


-- Exercise 13
UPDATE users SET email = 'cyoung2022@gmail.com' where id = 26;

-- Exercise 14
