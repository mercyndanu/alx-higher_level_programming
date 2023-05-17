-- Import the database dump from hbtn_0d_tvshows to your MySQL server: download (same as 12-no_genre.sql)
-- Each record should display: <TV Show genre> - <Number of shows linked to this genre>

SELECT tv_genres.name AS genre, COUNT(tv_genres.name) AS number_shows
FROM tv_genres JOIN tv_show_genres
ON tv_genres.id = tv_show_genres.genre_id
GROUP BY tv_genres.name
ORDER BY number_shows DESC;
