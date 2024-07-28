exo1 - SELECT * from artiste WHERE nom AND annéeNaiss < 1950;

exo 2 - SELECT titre FROM film WHERE genre = 'drame';

exo3 SELECT role.nomRôle FROM role JOIN artiste ON role.idActeur = artiste.idArtiste WHERE artiste.nom = 'Willis' AND artiste.prénom = 'Bruce';

exo4 - SELECT artiste.nom, artiste.prénom FROM film JOIN artiste ON film.idRéalisateur = artiste.idArtiste WHERE film.titre = 'Memento';


exo5 -  SELECT Notation.note FROM film JOIN Notation ON film.idFilm = Notation.idFilm WHERE film.titre = 'Fargo';


exo6 - SELECT artiste.nom, artiste.prénom FROM role JOIN artiste ON role.idActeur = artiste.idArtiste WHERE role.nomRôle = 'Chewbacca';




exo7 SELECT film.titre FROM role JOIN artiste ON role.idActeur = artiste.idArtiste JOIN film ON role.idFilm = film.idFilm WHERE artiste.nom = 'Willis' AND artiste.prénom = 'Bruce' AND role.nomRôle = 'John McClane';


exo 8 SELECT DISTINCT artiste.nom, artiste.prénom FROM role JOIN artiste ON role.idActeur = artiste.idArtiste JOIN film ON role.idFilm = film.idFilm WHERE film.titre = 'Sueurs froides';


exo 9 - SELECT * FROM notation WHERE email = "anon0@afpa-zakademie.com";


exo10 - SELECT DISTINCT film.titre FROM film JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste JOIN role ON film.idFilm = role.idFilm JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste WHERE réalisateur.nom = 'Burton' AND réalisateur.prénom = 'Tim' AND acteur.nom = 'Depp' AND acteur.prénom = 'Johnny';




exo 11 - SELECT film.titre, role.nomRôle FROM role JOIN artiste ON role.idActeur = artiste.idArtiste JOIN film ON role.idFilm = film.idFilm WHERE artiste.nom = 'Allen' AND artiste.prénom = 'Woody';




exo 12 - SELECT DISTINCT réalisateur.nom AS nomRéalisateur, réalisateur.prénom AS prénomRéalisateur, role.nomRôle, film.titre FROM film JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste JOIN role ON film.idFilm = role.idFilm JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste WHERE réalisateur.idArtiste = acteur.idArtiste;


exo 13 - SELECT film.titre FROM film JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste LEFT JOIN role ON film.idFilm = role.idFilm LEFT JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste WHERE réalisateur.nom = 'Tarantino' AND réalisateur.prénom = 'Quentin' AND (acteur.nom IS NULL OR NOT (acteur.nom = 'Tarantino' AND acteur.prénom = 'Quentin'));




exo 14 - SELECT DISTINCT réalisateur.nom AS nomRéalisateur, réalisateur.prénom AS prénomRéalisateur, role.nomRôle, film.titre FROM film JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste JOIN role ON film.idFilm = role.idFilm JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste WHERE réalisateur.idArtiste = acteur.idArtiste;


exo 15 - SELECT film.titre FROM film JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste LEFT JOIN role ON film.idFilm = role.idFilm LEFT JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste WHERE réalisateur.nom = 'Hitchcock' AND réalisateur.prénom = 'Alfred' AND (acteur.nom IS NULL OR NOT (acteur.nom = 'Stewart' AND acteur.prénom = 'James'));


exo 16 - SELECT DISTINCT film.titre, réalisateur.prénom AS prénomRéalisateur, acteur.nom AS nomActeur FROM film JOIN artiste AS réalisateur ON film.idRéalisateur = réalisateur.idArtiste JOIN role ON film.idFilm = role.idFilm JOIN artiste AS acteur ON role.idActeur = acteur.idArtiste WHERE réalisateur.prénom = acteur.prénom AND réalisateur.idArtiste <> acteur.idArtiste;


exo 17 - SELECT film.titre FROM film LEFT JOIN role ON film.idFilm = role.idFilm WHERE role.idFilm IS NULL;


exo 18 - SELECT film.titre FROM film LEFT JOIN Notation ON film.idFilm = Notation.idFilm AND Notation.email = ( SELECT email FROM internaute WHERE prénom = 'Prénom1' AND nom = 'Nom1' ) WHERE Notation.idFilm IS NULL;




exo 19 - SELECT DISTINCT acteur.nom, acteur.prénom FROM artiste AS acteur LEFT JOIN film ON acteur.idArtiste = film.idRéalisateur WHERE film.idRéalisateur IS NULL;


exo 20 - SELECT AVG(Notation.note) AS moyenneNotes
FROM Notation
JOIN film ON Notation.idFilm = film.idFilm
WHERE film.titre = 'Memento';




exo 21 - SELECT réalisateur.idArtiste AS id, réalisateur.nom, réalisateur.prénom, COUNT(film.idFilm) AS nombreDeFilms FROM artiste AS réalisateur LEFT JOIN film ON réalisateur.idArtiste = film.idRéalisateur GROUP BY réalisateur.idArtiste, réalisateur.nom, réalisateur.prénom;


exo 22 - SELECT réalisateur.nom, réalisateur.prénom
FROM artiste AS réalisateur
JOIN film ON réalisateur.idArtiste = film.idRéalisateur
GROUP BY réalisateur.idArtiste, réalisateur.nom, réalisateur.prénom
HAVING COUNT(film.idFilm) >= 2;


exo 23 - SELECT film.titre FROM film JOIN Notation ON film.idFilm = Notation.idFilm GROUP BY film.idFilm, film.titre HAVING AVG(Notation.note) > 7;












artiste(idArtiste(clé primaire), nom, prénom, annéeNaiss)
film(idFilm(clé primaire), titre, année,  idRéalisateur, genre, résumé, codePays)
internaute(email, nom, prénom, codePays)
Notation(idFilm(clé étrangère), email, note)
pays(code, nom, langue)
role(idFilm(clé étrangère), idActeur; nomRôle)


