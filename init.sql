/** PROCEDURES **/
CREATE OR REPLACE PROCEDURE createMembre(_nom TEXT, _prenom TEXT, _ville TEXT)
LANGUAGE plpgsql
AS $BODY$
DECLARE
	idp SMALLINT;
BEGIN
	INSERT INTO Personne(nom, prenom, idAdresse) VALUES (_nom, _prenom, (SELECT id FROM Adresse WHERE Adresse.ville = _ville)) RETURNING id INTO idp;
	INSERT INTO Membre(idPersonne) VALUES (idp);
END
$BODY$;

CREATE OR REPLACE PROCEDURE createParticipantFromPersonne(_idPersonne SMALLINT , _idTournoi SMALLINT, _nomDuDeck TEXT, _cardList TEXT)
LANGUAGE plpgsql
AS $BODY$
BEGIN
	INSERT INTO tournoiMembreParticipant(idMembre, idTournoi, nomDuDeck, cardList) VALUES (_idPersonne, _idTournoi, _nomDuDeck, _cardList);
END
$BODY$;

CREATE OR REPLACE PROCEDURE createOrganisateurFromPersonne(_idPersonne SMALLINT, _idTournoi SMALLINT)
LANGUAGE plpgsql
AS $BODY$
BEGIN
	INSERT INTO TournoiMembreOrganisateur(idOrg, idTournoi) VALUES (_idPersonne, _idTournoi);
END
$BODY$;

CREATE OR REPLACE PROCEDURE createJugeFromPersonne(_idPersonne SMALLINT, _experience INT)
LANGUAGE plpgsql
AS $BODY$
BEGIN
	INSERT INTO Juge(idPersonne, experience) VALUES (_idPersonne, _experience);
END
$BODY$;

CREATE OR REPLACE PROCEDURE assignJudgeToTournoi(_idPersonne SMALLINT, _idTournoi INT)
LANGUAGE plpgsql
AS $BODY$
BEGIN
	INSERT INTO Tournoijuge(idJuge, idTournoi) VALUES (_idPersonne, _idTournoi);
END
$BODY$;

CREATE OR REPLACE PROCEDURE assignJudgeAsOrganisateur(_idJuge SMALLINT, _idTournoi SMALLINT)
LANGUAGE plpgsql
AS $BODY$
BEGIN
	INSERT INTO TournoiMembreOrganisateur(idOrg, idTournoi) VALUES (_idJuge, _idTournoi);
END
$BODY$;

CREATE OR REPLACE PROCEDURE registerManche(_idTournoi SMALLINT, _debut TIMESTAMP, _duree INTERVAL)
LANGUAGE plpgsql
AS $BODY$
BEGIN
	INSERT INTO Manche (idTournoi, dateHeureDebut, duree) VALUES (_idTournoi, _debut, _duree);
END
$BODY$;

CREATE OR REPLACE PROCEDURE registerDuel(_idmanche SMALLINT, _idTournoi SMALLINT, _idJuge SMALLINT, _idP1 SMALLINT, _idP2 SMALLINT, _idWin SMALLINT)
LANGUAGE plpgsql
AS $BODY$
BEGIN
	INSERT INTO Duel (idmanche, idTournoi, idJuge, idjoueurun, idjoueurdeux, idgagnant) VALUES (_idmanche, _idTournoi, _idJuge, _idP1, _idP2, _idWin);
END
$BODY$;


/** ADRESSES **/
/* 1*/ INSERT INTO Adresse (ville, pays) VALUES ('Yverdon-les-Bains', 'Suisse');
/* 2*/ INSERT INTO Adresse (ville, pays) VALUES ('Lausanne', 'Suisse');
/* 3*/ INSERT INTO Adresse (ville, pays) VALUES ('Bienne', 'Suisse');
/* 4*/ INSERT INTO Adresse (ville, pays) VALUES ('Fribourg', 'Suisse');
/* 5*/ INSERT INTO Adresse (ville, pays) VALUES ('Paris', 'France');
/* 6*/ INSERT INTO Adresse (ville, pays) VALUES ('Kyiv', 'Ukraine');
/* 8*/ INSERT INTO Adresse (ville, pays) VALUES ('Kharkiv', 'Ukraine');
/* 9*/ INSERT INTO Adresse (ville, pays) VALUES ('Sion', 'Suisse');
/*10*/ INSERT INTO Adresse (ville, pays) VALUES ('Sarcelles', 'France');


/** TOURNOIS **/
/* 1*/ INSERT INTO Tournoi (nom, dateHeureDebut, dateHeureFin, delaiAdmin, format, echelleNbJoueur, idAdresse)
	VALUES ('Impériale du Dragon',
			'2022-09-11 06:00',
			'2022-09-11 23:00',
			'2022-09-12 00:00',
			'Standard', 8, 1);

/* 2*/ INSERT INTO Tournoi (nom, dateHeureDebut, dateHeureFin, delaiAdmin, format, echelleNbJoueur, idAdresse)
	VALUES ('Pourax magenta',
			'2022-01-20 12:00',
			'2022-01-20 23:00',
			'2022-01-30 00:00',
			'EDH', 8, 1);

/* 3*/ INSERT INTO Tournoi (nom, dateHeureDebut, dateHeureFin, delaiAdmin, format, echelleNbJoueur, idAdresse)
	VALUES ('Biennale biennoise des jeux de cartes',
			'2022-06-01 10:00',
			'2022-06-01 20:00',
			'2022-06-10 00:00',
			'Standard', 16, 3);

/* 4*/ INSERT INTO Tournoi (nom, dateHeureDebut, dateHeureFin, delaiAdmin, format, echelleNbJoueur, idAdresse)
	VALUES ('Tournoi Larigot-Parmalat',
			'2021-12-06 10:00',
			'2021-12-06 16:00',
			'2021-12-10 00:00',
			'Vintage', 8, 4);

/* 5*/ INSERT INTO Tournoi (nom, dateHeureDebut, dateHeureFin, delaiAdmin, format, echelleNbJoueur, idAdresse)
	VALUES ('Xtreme contest Romande Énergie',
			'2022-03-30 12:00',
			'2022-03-30 20:00',
			'2022-04-14 00:00',
			'Standard', 32, 2);

/* 6*/ INSERT INTO Tournoi (nom, dateHeureDebut, dateHeureFin, delaiAdmin, format, echelleNbJoueur, idAdresse)
	VALUES ('Tournoi de la guilde vaudoise',
			'2022-04-30 12:00',
			'2022-04-30 19:00',
			'2022-05-01 00:00',
			'Modern', 8, 2);

/* 7*/ INSERT INTO Tournoi (nom, dateHeureDebut, dateHeureFin, delaiAdmin, format, echelleNbJoueur, idAdresse)
	VALUES ('Francilienne des jeux de carte',
			'2022-02-08 08:00',
			'2022-02-08 19:00',
			'2021-02-16 00:00',
			'Modern', 32, 5);

/* 8*/ INSERT INTO Tournoi (nom, dateHeureDebut, dateHeureFin, delaiAdmin, format, echelleNbJoueur, idAdresse)
	VALUES ('Japan Expo',
			'2022-04-01 10:00',
			'2022-04-01 17:30',
			'2022-04-08 00:00',
			'EDH', 16, 5);

/* 9*/ INSERT INTO Tournoi (nom, dateHeureDebut, dateHeureFin, delaiAdmin, format, echelleNbJoueur, idAdresse)
	VALUES ('Mizhnarodnyy turnir Magic',
			'2022-02-28 06:30',
			'2022-02-28 20:30',
			'2022-03-08 00:00',
			'Vintage', 8, 6);

/*10*/ INSERT INTO Tournoi (nom, dateHeureDebut, dateHeureFin, delaiAdmin, format, echelleNbJoueur, idAdresse)
	VALUES ('Tournoi du cercle d''amitié de Merlin l''enchanteur',
			'2022-07-03 10:00',
			'2022-07-03 17:30',
			'2022-07-17 00:00',
			'Standard', 8, 1);

CALL createMembre('Bob', 'Michael', 'Paris');