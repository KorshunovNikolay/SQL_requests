-- Заполняем music style
INSERT INTO music_style (name)
VALUES 
	('Рок'),
	('Иностранный рок'),
	('Русский рок'),
	('Поп');

-- Заполняем artist
INSERT INTO artist (name)
VALUES 
	('Imagine Dragons'),
	('Adele'),
	('Аффинаж'),
	('Артур Пирожков');

-- Заполняем music album
INSERT INTO album (name, release_year)
VALUES 
	('Origins', '2018-11-09'),
	('Mercury - Act 1', '2021-09-03'),
	('30', '2021-11-19'),
	('Мимо. Ранен. Убит', '2020-03-13'),
	('Всё о любви', '2020-02-14');

-- Заполняем artist_style
INSERT INTO artist_style (artist_id, style_id)
VALUES 
	(1, 1),
	(1, 2),
	(2, 4),
	(3, 1),
	(3, 3),
	(4, 4);

-- Заполняем artist_album
INSERT INTO artist_album (artist_id, album_id)
VALUES 
	(1, 1),
	(1, 2),
	(2, 3),
	(3, 4),
	(4, 5);

-- Заполняем track
INSERT INTO track (name, duration, album_id)
VALUES 
	('Natural', 189, 1),
	('Bad Liar', 260, 1),
	('Only', 180, 1),
	('My Life', 224, 2),
	('Lonely', 159, 2),
	('Wrecked', 244, 2),
	('Easy on me', 225, 3),
	('My Little Love', 389, 3),
	('Пролог', 20, 4),
	('Ангел', 317, 4),
	('Такси', 200, 4),
	('Хостел', 324, 4),
	('Кто тебе важнее', 255, 4),
	('Летим со мной', 227, 5),
	('Чужая', 196, 5),
	('Красивая песня', 208, 5),
	('Моя звезда', 160, 5);

-- Заполняем collection
INSERT INTO collection (name, release_year)
VALUES 
	('Rock music', '2020-10-10'),
	('Best of 2021', '2021-12-20'),
	('Love song', '2021-12-03'),
	('Сочетаем несочетаемое', '2022-01-01');

-- Заполняем track_collection
INSERT INTO track_collection (track_id, collection_id)
VALUES 
	(2, 1),
	(5, 1),
	(11, 1),
	(14, 1),
	(5, 2),
	(9, 2),
	(8, 3),
	(17, 3),
	(3, 4),
	(8, 4),
	(11, 4),
	(18, 4);
