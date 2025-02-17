-- Задание 2
--Название и продолжительность самого длительного трека.
SELECT name, duration
FROM track
WHERE duration = (SELECT MAX(duration) FROM track);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name, duration
FROM track t 
WHERE duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name
FROM collection c
WHERE release_year BETWEEN '2018-01-01' AND '2020-12-31';

--Исполнители, чьё имя состоит из одного слова.
SELECT name
FROM artist a 
WHERE name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my». ("мой" - нет, есть "моя")
SELECT name
FROM track t 
WHERE lower(name) LIKE '%моя%' OR lower(name) LIKE '%my%';

--Задание 3
--Количество исполнителей в каждом жанре.
SELECT name, COUNT(*)
FROM music_style ms
JOIN artist_style as2 ON ms.id = as2.style_id
GROUP BY name;


--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT a.name, COUNT(*)
FROM album a
JOIN track t ON a.id = t.album_id
WHERE release_year BETWEEN '2019-01-01' AND '2020-12-31'
GROUP BY a.name;

--Средняя продолжительность треков по каждому альбому.
SELECT a.name , AVG(duration)
FROM album a
JOIN track t ON t.album_id = a.id
GROUP BY a.name;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT a.name
FROM artist a
JOIN artist_album aa ON a.id = aa.artist_id
JOIN album al ON al.id = aa.album_id
WHERE al.release_year NOT BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY a.name;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT c.name
FROM collection c
JOIN track_collection tc ON tc.collection_id = c.id
JOIN track t ON t.id = tc.track_id
JOIN album a ON a.id = t.album_id
JOIN artist_album aa ON aa.album_id = a.id
JOIN artist ar ON ar.id = aa.artist_id
WHERE ar.name = 'Imagine Dragons'
GROUP BY c.name;

--Задание 4
--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT a.name
FROM album a
JOIN artist_album aa ON aa.album_id = a.id
JOIN artist ar ON ar.id = aa.artist_id
JOIN artist_style as2 ON as2.artist_id = ar.id
GROUP BY a.name
HAVING COUNT(as2.style_id) > 1;


--Наименования треков, которые не входят в сборники.
SELECT t.name
FROM track t
LEFT JOIN track_collection tc ON tc.track_id = t.id
WHERE tc.track_id IS NULL
GROUP BY t.name;


--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек.
SELECT a.name, t.name, MIN(t.duration)
FROM artist a
JOIN artist_album aa ON aa.artist_id = a.id
JOIN album al ON al.id = aa.album_id
JOIN track t ON t.album_id = al.id
WHERE duration = (SELECT MIN(duration) FROM track)
GROUP BY a.name, t.name; 


--Названия альбомов, содержащих наименьшее количество треков.
SELECT a.name
FROM album a
JOIN track t ON a.id = t.album_id
GROUP BY a.name
HAVING COUNT(*) = (SELECT  MIN(COUNT) FROM (SELECT track.album_id, COUNT(*) FROM track GROUP BY track.album_id));
