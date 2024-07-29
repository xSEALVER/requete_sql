exo 1
 -- Sélectionner toutes les colonnes de la table artiste
SELECT * 
FROM artiste 
-- Filtrer les artistes dont le nom n'est pas vide et l'année de naissance est inférieure à 1950
WHERE nom IS NOT NULL AND annéeNaiss < 1950;


exo 2
-- Sélectionner les titres des films
SELECT titre 
FROM film 
-- Filtrer les films de genre 'drame'
WHERE genre = 'drame';

exo 3
-- Sélectionner les noms des rôles
SELECT role.nomRôle 
FROM role 
-- Faire une jointure avec la table artiste pour obtenir les détails de l'acteur
JOIN artiste ON role.idActeur = artiste.idArtiste 
-- Filtrer les rôles joués par Bruce Willis
WHERE artiste.nom = 'Willis' AND artiste.prénom = 'Bruce';

exo 4
-- Sélectionner le nom et le prénom de l'artiste
SELECT artiste.nom, artiste.prénom 
FROM film 
-- Faire une jointure avec la table artiste pour obtenir les détails du réalisateur
JOIN artiste ON film.idRéalisateur = artiste.idArtiste 
-- Filtrer pour obtenir les détails du réalisateur du film 'Memento'
WHERE film.titre = 'Memento';

exo 5
-- Sélectionner les notes
SELECT Notation.note 
FROM film 
-- Faire une jointure avec la table Notation pour obtenir les notes du film
JOIN Notation ON film.idFilm = Notation.idFilm 
-- Filtrer les notes du film 'Fargo'
WHERE film.titre = 'Fargo';





exo 6
-- Sélectionner le nom et le prénom de l'artiste
SELECT artiste.nom, artiste.prénom 
FROM role 
-- Faire une jointure avec la table artiste pour obtenir les détails de l'acteur
JOIN artiste ON role.idActeur = artiste.idArtiste 
-- Filtrer pour obtenir l'acteur ayant joué le rôle de Chewbacca
WHERE role.nomRôle = 'Chewbacca';


exo 7
-- Sélectionner les titres des films
SELECT film.titre 
FROM role 
-- Faire une jointure avec la table artiste pour obtenir les détails de l'acteur
JOIN artiste ON role.idActeur = artiste.idArtiste 
-- Faire une jointure avec la table film pour obtenir les titres des films
JOIN film ON role.idFilm = film.idFilm 
-- Filtrer pour obtenir les films dans lesquels Bruce Willis a joué le rôle de John McClane
WHERE artiste.nom = 'Willis' AND artiste.prénom = 'Bruce' AND role.nomRôle = 'John McClane';


exo 8
-- Sélectionner distinctement le nom et le prénom de l'artiste
SELECT DISTINCT artiste.nom, artiste.prénom 
FROM role 
-- Faire une jointure avec la table artiste pour obtenir les détails de l'acteur
JOIN artiste ON role.idActeur = artiste.idArtiste 
-- Faire une jointure avec la table film pour obtenir les titres des films
JOIN film ON role.idFilm = film.idFilm 
-- Filtrer pour obtenir les acteurs du film 'Sueurs froides'
WHERE film.titre = 'Sueurs froides';


exo 9
-- Sélectionner toutes les colonnes de la table notation
SELECT * 
FROM Notation 
-- Filtrer pour obtenir les notations de l'internaute avec l'email "anon0@afpa-zakademie.com"
WHERE email = "anon0@afpa-zakademie.com";






exo 10
-- Sélectionner distinctement les titres des films
SELECT DISTINCT film.titre 
FROM film 
-- Faire une jointure avec la table artiste pour obtenir les détails du réalisateur
JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste 
-- Faire une jointure avec la table role pour obtenir les rôles des acteurs
JOIN role ON film.idFilm = role.idFilm 
-- Faire une jointure avec la table artiste pour obtenir les détails de l'acteur
JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste 
-- Filtrer pour obtenir les films réalisés par Tim Burton et joués par Johnny Depp
WHERE réalisateur.nom = 'Burton' AND réalisateur.prénom = 'Tim' AND acteur.nom = 'Depp' AND acteur.prénom = 'Johnny';



exo 11
-- Sélectionner les titres des films et les noms des rôles
SELECT film.titre, role.nomRôle 
FROM role 
-- Faire une jointure avec la table artiste pour obtenir les détails de l'acteur
JOIN artiste ON role.idActeur = artiste.idArtiste 
-- Faire une jointure avec la table film pour obtenir les titres des films
JOIN film ON role.idFilm = film.idFilm 
-- Filtrer pour obtenir les films dans lesquels Woody Allen a joué
WHERE artiste.nom = 'Allen' AND artiste.prénom = 'Woody';



exo 12
-- Sélectionner distinctement le nom et le prénom du réalisateur, le nom du rôle et le titre du film
SELECT DISTINCT réalisateur.nom AS nomRéalisateur, réalisateur.prénom AS prénomRéalisateur, role.nomRôle, film.titre 
FROM film 
-- Faire une jointure avec la table artiste pour obtenir les détails du réalisateur
JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste 
-- Faire une jointure avec la table role pour obtenir les rôles des acteurs
JOIN role ON film.idFilm = role.idFilm 
-- Faire une jointure avec la table artiste pour obtenir les détails de l'acteur
JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste 
-- Filtrer pour obtenir les films dans lesquels le réalisateur a également joué un rôle
WHERE réalisateur.idArtiste = acteur.idArtiste;





exo 13
-- Sélectionner les titres des films
SELECT film.titre 
FROM film 
-- Faire une jointure avec la table artiste pour obtenir les détails du réalisateur
JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste 
-- Faire une jointure à gauche avec la table role pour obtenir les rôles des acteurs
LEFT JOIN role ON film.idFilm = role.idFilm 
-- Faire une jointure à gauche avec la table artiste pour obtenir les détails de l'acteur
LEFT JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste 
-- Filtrer pour obtenir les films réalisés par Quentin Tarantino dans lesquels il n'a pas joué
WHERE réalisateur.nom = 'Tarantino' AND réalisateur.prénom = 'Quentin' AND (acteur.nom IS NULL OR NOT (acteur.nom = 'Tarantino' AND acteur.prénom = 'Quentin'));


exo 14
-- Sélectionner distinctement le nom et le prénom du réalisateur, le nom du rôle et le titre du film
SELECT DISTINCT réalisateur.nom AS nomRéalisateur, réalisateur.prénom AS prénomRéalisateur, role.nomRôle, film.titre 
FROM film 
-- Faire une jointure avec la table artiste pour obtenir les détails du réalisateur
JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste 
-- Faire une jointure avec la table role pour obtenir les rôles des acteurs
JOIN role ON film.idFilm = role.idFilm 
-- Faire une jointure avec la table artiste pour obtenir les détails de l'acteur
JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste 
-- Filtrer pour obtenir les films dans lesquels le réalisateur a également joué un rôle
WHERE réalisateur.idArtiste = acteur.idArtiste;




exo 15
-- Sélectionner les titres des films
SELECT film.titre 
FROM film 
-- Faire une jointure avec la table artiste pour obtenir les détails du réalisateur
JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste 
-- Faire une jointure à gauche avec la table role pour obtenir les rôles des acteurs
LEFT JOIN role ON film.idFilm = role.idFilm 
-- Faire une jointure à gauche avec la table artiste pour obtenir les détails de l'acteur
LEFT JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste 
-- Filtrer pour obtenir les films réalisés par Alfred Hitchcock sans James Stewart
WHERE réalisateur.nom = 'Hitchcock' AND réalisateur.prénom = 'Alfred' AND (acteur.nom IS NULL OR NOT (acteur.nom = 'Stewart' AND acteur.prénom = 'James'));



exo 16
-- Sélectionner distinctement le titre du film, le prénom du réalisateur et le nom de l'acteur
SELECT DISTINCT film.titre, réalisateur.prénom AS prénomRéalisateur, acteur.nom AS nomActeur 
FROM film 
-- Faire une jointure avec la table artiste pour obtenir les détails du réalisateur
JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste 
-- Faire une jointure avec la table role pour obtenir les rôles des acteurs
JOIN role ON film.idFilm = role.idFilm 
-- Faire une jointure avec la table artiste pour obtenir les détails de l'acteur
JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste 
-- Filtrer pour obtenir les films où le prénom du réalisateur est le même que celui de l'acteur mais ce sont des personnes différentes
WHERE réalisateur.prénom = acteur.prénom AND


exo 17
-- Sélectionner les titres des films
SELECT film.titre 
FROM film 
-- Faire une jointure à gauche avec la table role pour obtenir les rôles des acteurs
LEFT JOIN role ON film.idFilm = role.idFilm 
-- Filtrer pour obtenir les films sans aucun rôle
WHERE role.idFilm IS NULL;



exo 18
-- Sélectionner les titres des films
SELECT film.titre 
FROM film 
-- Faire une jointure à gauche avec la table Notation pour obtenir les notes des films par l'internaute spécifique
LEFT JOIN Notation ON film.idFilm = Notation.idFilm AND Notation.email = (
    -- Sous-requête pour obtenir l'email de l'internaute ayant le prénom 'Prénom1' et le nom 'Nom1'
    SELECT email 
    FROM internaute 
    WHERE prénom = 'Prénom1' AND nom = 'Nom1'
) 
-- Filtrer pour obtenir les films qui n'ont pas été notés par cet internaute
WHERE Notation.idFilm IS NULL;





exo 19
-- Sélectionner distinctement le nom et le prénom de l'acteur
SELECT DISTINCT acteur.nom, acteur.prénom 
FROM artiste AS acteur 
-- Faire une jointure à gauche avec la table film pour obtenir les détails des films réalisés par l'acteur
LEFT JOIN film ON acteur.idArtiste = film.idRéalisateur 
-- Filtrer pour obtenir les acteurs qui n'ont jamais réalisé de film
WHERE film.idRéalisateur IS NULL;



exo 20
-- Sélectionner la moyenne des notes et la renommer en 'moyenneNotes'
SELECT AVG(Notation.note) AS moyenneNotes 
FROM Notation 
-- Faire une jointure avec la table film pour obtenir les notes du film
JOIN film ON Notation.idFilm = film.idFilm 
-- Filtrer pour obtenir les notes du film 'Memento'
WHERE film.titre = 'Memento';



exo 21
-- Sélectionner l'id, le nom et le prénom du réalisateur, et compter le nombre de films qu'il a réalisés
SELECT réalisateur.idArtiste AS id, réalisateur.nom, réalisateur.prénom, COUNT(film.idFilm) AS nombreDeFilms 
FROM artiste AS réalisateur 
-- Faire une jointure à gauche avec la table film pour obtenir les détails des films réalisés par chaque réalisateur
LEFT JOIN film ON réalisateur.idArtiste = film.idRéalisateur 
-- Grouper les résultats par l'id, le nom et le prénom du réalisateur pour compter le nombre de films
GROUP BY réalisateur.idArtiste, réalisateur.nom, réalisateur.prénom;

exo 22
-- Sélectionner le nom et le prénom du réalisateur
SELECT réalisateur.nom, réalisateur.prénom 
FROM artiste AS réalisateur 
-- Faire une jointure avec la table film pour obtenir les détails des films réalisés par chaque réalisateur
JOIN film ON réalisateur.idArtiste = film.idRéalisateur 
-- Grouper les résultats par l'id, le nom et le prénom du réalisateur pour compter le nombre de films
GROUP BY réalisateur.idArtiste, réalisateur.nom, réalisateur.prénom 
-- Filtrer pour obtenir les réalisateurs ayant tourné au moins deux films
HAVING COUNT(film.idFilm) >= 2;



exo 23
-- Sélectionner les titres des films
SELECT film.titre 
-- Faire une jointure avec la table Notation pour obtenir les notes des films
JOIN Notation ON film.idFilm = Notation.idFilm 
-- Grouper les résultats par l'id et le titre des films pour calculer la moyenne des notes
GROUP BY film.idFilm, film.titre 
-- Filtrer pour obtenir les films ayant une moyenne des notes supérieure à 7
HAVING AVG(Notation.note) > 7;











-- exo1 - SELECT * from artiste WHERE nom AND annéeNaiss < 1950;

-- exo 2 - SELECT titre FROM film WHERE genre = 'drame';

-- exo3 SELECT role.nomRôle FROM role JOIN artiste ON role.idActeur = artiste.idArtiste WHERE artiste.nom = 'Willis' AND artiste.prénom = 'Bruce';

-- exo4 - SELECT artiste.nom, artiste.prénom FROM film JOIN artiste ON film.idRéalisateur = artiste.idArtiste WHERE film.titre = 'Memento';


-- exo5 -  SELECT Notation.note FROM film JOIN Notation ON film.idFilm = Notation.idFilm WHERE film.titre = 'Fargo';


-- exo6 - SELECT artiste.nom, artiste.prénom FROM role JOIN artiste ON role.idActeur = artiste.idArtiste WHERE role.nomRôle = 'Chewbacca';




-- exo7 SELECT film.titre FROM role JOIN artiste ON role.idActeur = artiste.idArtiste JOIN film ON role.idFilm = film.idFilm WHERE artiste.nom = 'Willis' AND artiste.prénom = 'Bruce' AND role.nomRôle = 'John McClane';


-- exo 8 SELECT DISTINCT artiste.nom, artiste.prénom FROM role JOIN artiste ON role.idActeur = artiste.idArtiste JOIN film ON role.idFilm = film.idFilm WHERE film.titre = 'Sueurs froides';


-- exo 9 - SELECT * FROM notation WHERE email = "anon0@afpa-zakademie.com";


-- exo10 - SELECT DISTINCT film.titre FROM film JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste JOIN role ON film.idFilm = role.idFilm JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste WHERE réalisateur.nom = 'Burton' AND réalisateur.prénom = 'Tim' AND acteur.nom = 'Depp' AND acteur.prénom = 'Johnny';




-- exo 11 - SELECT film.titre, role.nomRôle FROM role JOIN artiste ON role.idActeur = artiste.idArtiste JOIN film ON role.idFilm = film.idFilm WHERE artiste.nom = 'Allen' AND artiste.prénom = 'Woody';




-- exo 12 - SELECT DISTINCT réalisateur.nom AS nomRéalisateur, réalisateur.prénom AS prénomRéalisateur, role.nomRôle, film.titre FROM film JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste JOIN role ON film.idFilm = role.idFilm JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste WHERE réalisateur.idArtiste = acteur.idArtiste;


-- exo 13 - SELECT film.titre FROM film JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste LEFT JOIN role ON film.idFilm = role.idFilm LEFT JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste WHERE réalisateur.nom = 'Tarantino' AND réalisateur.prénom = 'Quentin' AND (acteur.nom IS NULL OR NOT (acteur.nom = 'Tarantino' AND acteur.prénom = 'Quentin'));




-- exo 14 - SELECT DISTINCT réalisateur.nom AS nomRéalisateur, réalisateur.prénom AS prénomRéalisateur, role.nomRôle, film.titre FROM film JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste JOIN role ON film.idFilm = role.idFilm JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste WHERE réalisateur.idArtiste = acteur.idArtiste;


-- exo 15 - SELECT film.titre FROM film JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste LEFT JOIN role ON film.idFilm = role.idFilm LEFT JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste WHERE réalisateur.nom = 'Hitchcock' AND réalisateur.prénom = 'Alfred' AND (acteur.nom IS NULL OR NOT (acteur.nom = 'Stewart' AND acteur.prénom = 'James'));


-- exo 16 - SELECT DISTINCT film.titre, réalisateur.prénom AS prénomRéalisateur, acteur.nom AS nomActeur FROM film JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste JOIN role ON film.idFilm = role.idFilm JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste WHERE réalisateur.prénom = acteur.prénom AND réalisateur.idArtiste <> acteur.idArtiste;


-- exo 17 - SELECT film.titre FROM film LEFT JOIN role ON film.idFilm = role.idFilm WHERE role.idFilm IS NULL;


-- exo 18 - SELECT film.titre FROM film LEFT JOIN Notation ON film.idFilm = Notation.idFilm AND Notation.email = ( SELECT email FROM internaute WHERE prénom = 'Prénom1' AND nom = 'Nom1' ) WHERE Notation.idFilm IS NULL;




-- exo 19 - SELECT DISTINCT acteur.nom, acteur.prénom FROM artiste AS acteur LEFT JOIN film ON acteur.idArtiste = film.idRéalisateur WHERE film.idRéalisateur IS NULL;


-- exo 20 - SELECT AVG(Notation.note) AS moyenneNotes
-- FROM Notation
-- JOIN film ON Notation.idFilm = film.idFilm
-- WHERE film.titre = 'Memento';




-- exo 21 - SELECT réalisateur.idArtiste AS id, réalisateur.nom, réalisateur.prénom, COUNT(film.idFilm) AS nombreDeFilms FROM artiste AS réalisateur LEFT JOIN film ON réalisateur.idArtiste = film.idRéalisateur GROUP BY réalisateur.idArtiste, réalisateur.nom, réalisateur.prénom;


-- exo 22 - SELECT réalisateur.nom, réalisateur.prénom
-- FROM artiste AS réalisateur
-- JOIN film ON réalisateur.idArtiste = film.idRéalisateur
-- GROUP BY réalisateur.idArtiste, réalisateur.nom, réalisateur.prénom
-- HAVING COUNT(film.idFilm) >= 2;


-- exo 23 - SELECT film.titre FROM film JOIN Notation ON film.idFilm = Notation.idFilm GROUP BY film.idFilm, film.titre HAVING AVG(Notation.note) > 7;












artiste(idArtiste(clé primaire), nom, prénom, annéeNaiss)
film(idFilm(clé primaire), titre, année,  idRéalisateur, genre, résumé, codePays)
internaute(email, nom, prénom, codePays)
Notation(idFilm(clé étrangère), email, note)
pays(code, nom, langue)
role(idFilm(clé étrangère), idActeur; nomRôle)


