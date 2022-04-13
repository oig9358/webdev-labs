-- Exercise 1 (done for you):
SELECT * FROM users;

-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;

-- Exercise 3
SELECT id, first_name, last_name 
FROM users ORDER BY last_name;

-- Exercise 4
SELECT id, image_url, user_id
FROM posts WHERE user_id = 26;

-- Exercise 5
SELECT id, image_url, user_id
FROM posts WHERE user_id = 26 OR user_id = 12;

-- Exercise 6
SELECT COUNT (id) FROM posts;

-- Exercise 7
SELECT user_id, COUNT (user_id) 
FROM comments
GROUP BY user_id 
ORDER BY COUNT (user_id) desc;

-- Exercise 8
SELECT posts.id, posts.image_url, posts.user_id, 
users.username, users.first_name, users.last_name
FROM posts 
INNER JOIN users ON users.id = posts.user_id
WHERE posts.user_id = 26 OR posts.user_id = 12;

-- Exercise 9
SELECT posts.id, posts.pub_date, following.following_id
FROM following
INNER JOIN posts ON following.following_id = posts.user_id
WHERE following.user_id = 26;

-- Exercise 10
-- optional!

-- Exercise 11
INSERT INTO bookmarks (user_id,post_id)
SELECT posts.user_id, posts.id
FROM posts 
WHERE posts.id = 219;

INSERT INTO bookmarks (user_id,post_id)
SELECT posts.user_id, posts.id
FROM posts 
WHERE posts.id = 220;

INSERT INTO bookmarks (user_id,post_id)
SELECT posts.user_id, posts.id
FROM posts 
WHERE posts.id = 221;

-- Exercise 12
DELETE FROM bookmarks
WHERE post_id = 219;

DELETE FROM bookmarks
WHERE post_id = 220;

DELETE FROM bookmarks
WHERE post_id = 221;

-- Exercise 13
UPDATE users
SET email = 'knick2022@gmail.com'
WHERE id = 26;

-- Exercise 14
SELECT posts.id, posts.user_id, COUNT (comments.post_id), posts.caption
FROM comments
INNER JOIN posts ON comments.post_id = posts.id
WHERE posts.user_id = 26
GROUP BY posts.id
ORDER BY COUNT (comments.post_id) desc;