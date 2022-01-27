/** ADRESSES **/
/* 1*/ INSERT INTO adresse (ville, pays) VALUES ('Yverdon-les-Bains', 'Suisse');
/* 2*/ INSERT INTO adresse (ville, pays) VALUES ('Lausanne', 'Suisse');
/* 3*/ INSERT INTO adresse (ville, pays) VALUES ('Bienne', 'Suisse');
/* 4*/ INSERT INTO adresse (ville, pays) VALUES ('Fribourg', 'Suisse');
/* 5*/ INSERT INTO adresse (ville, pays) VALUES ('Paris', 'France');
/* 6*/ INSERT INTO adresse (ville, pays) VALUES ('Kyiv', 'Ukraine');
/* 8*/ INSERT INTO adresse (ville, pays) VALUES ('Kharkiv', 'Ukraine');
/* 9*/ INSERT INTO adresse (ville, pays) VALUES ('Sion', 'Suisse');
/*10*/ INSERT INTO adresse (ville, pays) VALUES ('Sarcelles', 'France');


/** TOURNOIS **/
/* 1*/ INSERT INTO tournoi (nom, dateheuredebut, dateheurefin, delaiadmin, format, echellenbjoueur, idadresse)
	VALUES ('Impériale du Dragon',
			'2021-09-11 06:00',
			'2021-09-11 23:00',
			'2021-09-12 00:00',
			'Standard', 8, 1);
		
/* 2*/ INSERT INTO tournoi (nom, dateheuredebut, dateheurefin, delaiadmin, format, echellenbjoueur, idadresse)
	VALUES ('Pourax magenta',
			'2022-01-20 12:00',
			'2022-01-21 04:00',
			'2022-01-30 00:00',
			'EDH', 8, 1);
		
/* 3*/ INSERT INTO tournoi (nom, dateheuredebut, dateheurefin, delaiadmin, format, echellenbjoueur, idadresse)
	VALUES ('Biennale biennoise des jeux de cartes',
			'2022-06-01 10:00',
			'2022-06-08 12:00',
			'2022-06-10 00:00',
			'Standard', 16, 3);
		
/* 4*/ INSERT INTO tournoi (nom, dateheuredebut, dateheurefin, delaiadmin, format, echellenbjoueur, idadresse)
	VALUES ('Tournoi Larigot-Parmalat',
			'2021-12-06 10:00',
			'2021-12-07 13:00',
			'2021-12-10 00:00',
			'Vintage', 8, 4);
		
/* 5*/ INSERT INTO tournoi (nom, dateheuredebut, dateheurefin, delaiadmin, format, echellenbjoueur, idadresse)
	VALUES ('Xtreme contest Romande Énergie',
			'2022-03-30 12:00',
			'2022-03-31 00:00',
			'2022-04-14 00:00',
			'Standard', 32, 2);
		
/* 6*/ INSERT INTO tournoi (nom, dateheuredebut, dateheurefin, delaiadmin, format, echellenbjoueur, idadresse)
	VALUES ('Tournoi de la guilde vaudoise',
			'2022-03-30 12:00',
			'2022-04-05 12:00',
			'2022-04-20 00:00',
			'Modern', 8, 2);
		
/* 7*/ INSERT INTO tournoi (nom, dateheuredebut, dateheurefin, delaiadmin, format, echellenbjoueur, idadresse)
	VALUES ('Francilienne des jeux de carte',
			'2022-02-08 08:00',
			'2022-02-09 10:00',
			'2021-02-16 00:00',
			'Modern', 32, 5);
		
/* 8*/ INSERT INTO tournoi (nom, dateheuredebut, dateheurefin, delaiadmin, format, echellenbjoueur, idadresse)
	VALUES ('Japan Expo',
			'2022-04-01 10:00',
			'2022-04-01 22:00',
			'2022-04-08 00:00',
			'EDH', 16, 5);
		
/* 9*/ INSERT INTO tournoi (nom, dateheuredebut, dateheurefin, delaiadmin, format, echellenbjoueur, idadresse)
	VALUES ('Mizhnarodnyy turnir Magic',
			'2022-02-28 06:30',
			'2022-03-01 07:00',
			'2022-03-08 00:00',
			'Vintage', 8, 6);
		
/*10*/ INSERT INTO tournoi (nom, dateheuredebut, dateheurefin, delaiadmin, format, echellenbjoueur, idadresse)
	VALUES ('Tournoi du cercle d''amitié de Merlin l''enchanteur',
			'2022-07-03 10:00',
			'2022-07-03 19:00',
			'2022-07-17 00:00',
			'Standard', 8, 1);

		
/** PROCEDURES **/
CREATE OR REPLACE PROCEDURE ajoutePersonne(_nom TEXT, _prenom TEXT, _ville TEXT, _adresse TEXT)
LANGUAGE plpgsql
AS $BODY$
BEGIN 
	INSERT INTO personne(nom, prenom, idadresse) VALUES (_nom, _prenom, (SELECT id FROM adresse WHERE adresse.ville = _ville));
END
$BODY$;

CREATE OR REPLACE PROCEDURE setJoueurAsParticipant(_nom_personne TEXT, _id_tournoi SMALLINT)
LANGUAGE plpgsql 
AS $BODY$ 
BEGIN
	INSERT INTO membre()
END
$BODY$;
