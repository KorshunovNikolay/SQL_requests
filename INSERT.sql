-- Заполняем music style
INSERT INTO music_style (name)
VALUES ('Рок');

INSERT INTO music_style (name)
VALUES ('Иностранный рок');

INSERT INTO music_style (name)
VALUES ('Русский рок');

INSERT INTO music_style (name)
VALUES ('Поп');

-- Заполняем artist
INSERT INTO artist (name)
VALUES ('Imagine Dragons');

INSERT INTO artist (name)
VALUES ('Adele');

INSERT INTO artist (name)
VALUES ('Аффинаж');

INSERT INTO artist (name)
VALUES ('Артур Пирожков');

-- Заполняем music album
INSERT INTO album (name, release_year)
VALUES ('Origins', '2018-11-09');

INSERT INTO album (name, release_year)
VALUES ('Mercury - Act 1', '2021-09-03');

INSERT INTO album (name, release_year)
VALUES ('30', '2021-11-19');

INSERT INTO album (name, release_year)
VALUES ('Мимо. Ранен. Убит', '2020-03-13');

INSERT INTO album (name, release_year)
VALUES ('Всё о любви', '2020-02-14');

INSERT INTO album (name, release_year)
VALUES ('Всё о любви', '2020-02-14');

-- Заполняем artist_style
INSERT INTO artist_style (artist_id, style_id)
VALUES (1, 1);

INSERT INTO artist_style (artist_id, style_id)
VALUES (1, 2);

INSERT INTO artist_style (artist_id, style_id)
VALUES (2, 4);

INSERT INTO artist_style (artist_id, style_id)
VALUES (3, 1);

INSERT INTO artist_style (artist_id, style_id)
VALUES (3, 3);

INSERT INTO artist_style (artist_id, style_id)
VALUES (4, 4);

-- Заполняем artist_album
INSERT INTO artist_album (artist_id, album_id)
VALUES (1, 1);

INSERT INTO artist_album (artist_id, album_id)
VALUES (1, 2);

INSERT INTO artist_album (artist_id, album_id)
VALUES (2, 3);

INSERT INTO artist_album (artist_id, album_id)
VALUES (3, 4);

INSERT INTO artist_album (artist_id, album_id)
VALUES (4, 5);

-- Заполняем track
INSERT INTO track (name, duration, album_id)
VALUES ('Natural', 189, 1);

INSERT INTO track (name, duration, album_id)
VALUES ('Bad Liar', 260, 1);

INSERT INTO track (name, duration, album_id)
VALUES ('Only', 180, 1);

INSERT INTO track (name, duration, album_id)
VALUES ('My Life', 224, 2);

INSERT INTO track (name, duration, album_id)
VALUES ('Lonely', 159, 2);

INSERT INTO track (name, duration, album_id)
VALUES ('Wrecked', 244, 2);

INSERT INTO track (name, duration, album_id)
VALUES ('Easy on me', 225, 3);

INSERT INTO track (name, duration, album_id)
VALUES ('My Little Love', 389, 3);

INSERT INTO track (name, duration, album_id)
VALUES ('Пролог', 20, 4);

INSERT INTO track (name, duration, album_id)
VALUES ('Ангел', 317, 4);

INSERT INTO track (name, duration, album_id)
VALUES ('Такси', 200, 4);

INSERT INTO track (name, duration, album_id)
VALUES ('Хостел', 324, 4);

INSERT INTO track (name, duration, album_id)
VALUES ('Кто тебе важнее', 255, 4);

INSERT INTO track (name, duration, album_id)
VALUES ('Летим со мной', 227, 5);

INSERT INTO track (name, duration, album_id)
VALUES ('Чужая', 196, 5);

INSERT INTO track (name, duration, album_id)
VALUES ('Красивая песня', 208, 5);

INSERT INTO track (name, duration, album_id)
VALUES ('Моя звезда', 160, 5);

-- Заполняем collection
INSERT INTO collection (name, release_year)
VALUES ('Rock music', '2020-10-10');

INSERT INTO collection (name, release_year)
VALUES ('Best of 2021', '2021-12-20');

INSERT INTO collection (name, release_year)
VALUES ('Love song', '2021-12-03');

INSERT INTO collection (name, release_year)
VALUES ('Сочетаем несочетаемое', '2022-01-01');

-- Заполняем track_collection
INSERT INTO track_collection (track_id, collection_id)
VALUES (2, 1);

INSERT INTO track_collection (track_id, collection_id)
VALUES (5, 1);

INSERT INTO track_collection (track_id, collection_id)
VALUES (11, 1);

INSERT INTO track_collection (track_id, collection_id)
VALUES (14, 1);

INSERT INTO track_collection (track_id, collection_id)
VALUES (5, 2);

INSERT INTO track_collection (track_id, collection_id)
VALUES (9, 2);

INSERT INTO track_collection (track_id, collection_id)
VALUES (8, 3);

INSERT INTO track_collection (track_id, collection_id)
VALUES (17, 3);

INSERT INTO track_collection (track_id, collection_id)
VALUES (3, 4);

INSERT INTO track_collection (track_id, collection_id)
VALUES (8, 4);

INSERT INTO track_collection (track_id, collection_id)
VALUES (11, 4);

INSERT INTO track_collection (track_id, collection_id)
VALUES (18, 4);