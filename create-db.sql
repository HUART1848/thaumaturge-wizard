

/* ------------------------------------------------------------------ */ 
/* DECLARATION                                                        */
/* ------------------------------------------------------------------ */ 

DROP TABLE IF EXISTS Adresse CASCADE;
CREATE TABLE Adresse (
	id SMALLSERIAL,
	ville TEXT NOT NULL,
	pays TEXT NOT NULL,
	PRIMARY KEY(id)
);

DROP TABLE IF EXISTS Personne CASCADE;
CREATE TABLE Personne (
	id SMALLSERIAL,
	nom TEXT NOT NULL,
	prenom TEXT NOT NULL,
	idAdresse SMALLINT NOT NULL,
	PRIMARY KEY(id)
);

DROP TABLE IF EXISTS Juge CASCADE;
CREATE TABLE Juge (
	idPersonne SMALLINT,
	experience INT NOT NULL,
	PRIMARY KEY(idPersonne)
);

DROP TABLE IF EXISTS Membre CASCADE;
CREATE TABLE Membre (
	idPersonne SMALLINT,
	numeroMembre SMALLSERIAL NOT NULL,
	PRIMARY KEY(idPersonne)
);

DROP TABLE IF EXISTS Duel CASCADE;
CREATE TABLE Duel (
	id SMALLSERIAL,
	idManche SMALLINT,
	idTournoi SMALLINT,
	idJuge SMALLINT NOT NULL,
	idJoueurUn SMALLINT NOT NULL,
	idJoueurDeux SMALLINT NOT NULL,
	idGagnant SMALLINT,
	CONSTRAINT CK_Duel_idGagant CHECK (idGagnant = NULL OR idGagnant = idJoueurUn OR idGagnant = idJoueurDeux),
	CONSTRAINT CK_Duel_idJoueurUn_idJoueurDeux CHECK (idJoueurUn <> idJoueurDeux),
	PRIMARY KEY (id, idManche, idTournoi)
);

DROP TABLE IF EXISTS Manche CASCADE;
CREATE TABLE Manche (
	id SMALLSERIAL,
	idTournoi SMALLINT,
	dateHeureDebut TIMESTAMP NOT NULL,
	duree INTERVAL NOT NULL,
	CONSTRAINT CK_Manche_duree CHECK (duree < INTERVAL '50m'),
	PRIMARY KEY (id, idTournoi)
);

DROP TABLE IF EXISTS Tournoi CASCADE;
CREATE TABLE Tournoi (
	id SMALLSERIAL,
	nom TEXT NOT NULL,
	dateHeureDebut TIMESTAMP NOT NULL,
	dateHeureFin TIMESTAMP NOT NULL, 
	delaiAdmin TIME NOT NULL,
	format TEXT NOT NULL,
	echelleNbJoueur SMALLINT NOT NULL , /* peut aussi être considerer come le nombre max de joueur */
	idAdresse SMALLINT NOT NULL,
	CONSTRAINT CK_Tournoi_dateHeureDebut_dateHeureFin CHECK (dateHeureFin > dateHeureDebut AND (dateHeureDebut - dateHeureFin) > (INTERVAL '80m' * nb_rounds(echelleNbJoueur) + INTERVAL '60m')),
	CONSTRAINT CK_Tournoi_echelleNbJoueur CHECK (echelleNbJoueur = 8 OR echelleNbJoueur = 16 OR echelleNbJoueur = 32 OR echelleNbJoueur = 64),
	PRIMARY KEY (id)
);

DROP TABLE IF EXISTS TournoiMembreParticipant CASCADE;
CREATE TABLE TournoiMembreParticipant (
	idMembre SMALLINT,
	idTournoi SMALLINT,
	nomDuDeck TEXT NOT NULL,
	cardList TEXT NOT NULL,
	PRIMARY KEY (idMembre, idTournoi)
);

DROP TABLE IF EXISTS TournoiMembreOrganisateur CASCADE;
CREATE TABLE TournoiMembreOrganisateur (
	idOrg SMALLINT,
	idTournoi SMALLINT,
	PRIMARY KEY (idOrg, idTournoi)
);

DROP TABLE IF EXISTS TournoiJuge CASCADE;
CREATE TABLE TournoiJuge (
	idJuge SMALLINT,
	idTournoi SMALLINT,
	PRIMARY KEY (idJuge, idTournoi)
);

/* ------------------------------------------------------------------ */ 
/* CONSTRAINTS                                                        */
/* ------------------------------------------------------------------ */ 

ALTER TABLE Juge ADD CONSTRAINT idPersonne
     FOREIGN KEY (idPersonne)
     REFERENCES Personne (id)
	 ON DELETE CASCADE
     ON UPDATE CASCADE;

ALTER TABLE Membre ADD CONSTRAINT FK_Membre_idPersonne
     FOREIGN KEY (idPersonne)
     REFERENCES Personne (id)
     ON DELETE CASCADE
     ON UPDATE CASCADE;

ALTER TABLE Personne ADD CONSTRAINT FK_Personne_idAdresse
	FOREIGN KEY (idAdresse)
	REFERENCES Adresse (id)
	ON DELETE SET NULL 
	ON UPDATE CASCADE;
	
ALTER TABLE Tournoi ADD CONSTRAINT FK_Tournoi_idAdresse
	FOREIGN KEY (idAdresse)
	REFERENCES Adresse (id)
	ON DELETE SET NULL 
	ON UPDATE CASCADE;
	
ALTER TABLE Manche ADD CONSTRAINT FK_Manche_idTournoi
	FOREIGN KEY (idTournoi)
	REFERENCES Tournoi (id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
	
ALTER TABLE Duel ADD CONSTRAINT FK_Duel_idManche
	FOREIGN KEY (idManche, idTournoi)
	REFERENCES Manche (id, idTournoi)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
	
ALTER TABLE Duel ADD CONSTRAINT FK_Duel_idJoueurUn
	FOREIGN KEY (idJoueurUn)
	REFERENCES Membre (idPersonne)
	ON DELETE NO ACTION 
	ON UPDATE CASCADE;
	
ALTER TABLE Duel ADD CONSTRAINT FK_Duel_idJoueurDeux
	FOREIGN KEY (idJoueurDeux)
	REFERENCES Membre (idPersonne)
	ON DELETE NO ACTION 
	ON UPDATE CASCADE;
	
ALTER TABLE Duel ADD CONSTRAINT FK_Duel_idGagnant
	FOREIGN KEY (idGagnant)
	REFERENCES Membre (idPersonne)
	ON DELETE NO ACTION 
	ON UPDATE CASCADE;

ALTER TABLE Duel ADD CONSTRAINT FK_Duel_idJuge
	FOREIGN KEY (idJuge)
	REFERENCES Juge (idPersonne)
	ON DELETE NO ACTION 
	ON UPDATE CASCADE;

ALTER TABLE TournoiJuge ADD CONSTRAINT FK_TournoiJuge_idJuge
	FOREIGN KEY (idJuge)
	REFERENCES Juge (idPersonne)
	ON DELETE NO ACTION 
	ON UPDATE CASCADE;

ALTER TABLE TournoiJuge ADD CONSTRAINT FK_TournoiJuge_idTournoi
	FOREIGN KEY (idTournoi)
	REFERENCES Tournoi (id)
	ON DELETE CASCADE 
	ON UPDATE CASCADE;

ALTER TABLE TournoiMembreOrganisateur ADD CONSTRAINT FK_TournoiJuge_idOtg
	FOREIGN KEY (idOrg)
	REFERENCES Membre (idPersonne)
	ON DELETE NO ACTION 
	ON UPDATE CASCADE;

ALTER TABLE TournoiMembreOrganisateur ADD CONSTRAINT FK_TournoiJuge_idTournoi
	FOREIGN KEY (idTournoi)
	REFERENCES Tournoi (id)
	ON DELETE CASCADE 
	ON UPDATE CASCADE;

ALTER TABLE TournoiMembreParticipant ADD CONSTRAINT FK_TournoiJuge_idMembre
	FOREIGN KEY (idMembre)
	REFERENCES Membre (idPersonne)
	ON DELETE NO ACTION 
	ON UPDATE CASCADE;

ALTER TABLE TournoiMembreParticipant ADD CONSTRAINT FK_TournoiJuge_idTournoi
	FOREIGN KEY (idTournoi)
	REFERENCES Tournoi (id)
	ON DELETE CASCADE 
	ON UPDATE CASCADE;

/* ------------------------------------------------------------------ */ 
/* FUNCTIONS                                                          */
/* ------------------------------------------------------------------ */

CREATE OR REPLACE FUNCTION niveau_min_de_Juge_total(echelle integer)
	RETURNS integer
	LANGUAGE plpgsql
	AS
	$BODY$
	DECLARE 
		rounds integer;
	BEGIN
		
		IF echelle = 8
		THEN RETURN 1;
		ELSEIF echelle = 16
		THEN RETURN 2;
		ELSEIF echelle = 32
		THEN RETURN 4;
		ELSEIF echelle = 64
		THEN RETURN 8;
		ELSE RETURN -1;
		END IF;
	END;
	$BODY$;


CREATE OR REPLACE FUNCTION nb_Rounds(echelle integer)
	RETURNS integer
	LANGUAGE plpgsql
	AS
	$BODY$
	DECLARE 
		rounds integer;
	BEGIN
		
		IF echelle = 8
		THEN RETURN 3;
		ELSEIF echelle = 16
		THEN RETURN 4;
		ELSEIF echelle = 32
		THEN RETURN 5;
		ELSEIF echelle = 64
		THEN RETURN 6;
		ELSE RETURN -1;
		END IF;
	END;
	$BODY$;


CREATE OR REPLACE FUNCTION nb_Joueur_min(echelle integer)
	RETURNS integer
	LANGUAGE plpgsql
	AS
	$BODY$
	DECLARE 
		joueurs_min integer;
	BEGIN
		
		IF echelle = 8
		THEN RETURN 4;
		ELSEIF echelle = 16
		THEN RETURN 9;
		ELSEIF echelle = 32
		THEN RETURN 17;
		ELSEIF echelle = 64
		THEN RETURN 33;
		ELSE RETURN -1;
		END IF;
	END;
	$BODY$;

CREATE OR REPLACE FUNCTION Juge_level(id integer)
	RETURNS integer
	LANGUAGE plpgsql
	AS
	$BODY$
	DECLARE 
		juge_level integer;
		juge_exp integer;
	BEGIN
		SELECT Juge.experience INTO juge_exp
		FROM juge 
		WHERE Juge.idPersonne = id;
	
		IF juge_exp <= 3
		THEN RETURN 0;
		ELSEIF juge_exp <= 100
		THEN RETURN 1;
		ELSEIF juge_exp <= 300
		THEN RETURN 2;
		ELSE RETURN 3;
		END IF;
	END;
	$BODY$;

CREATE OR REPLACE FUNCTION Juge_max_simultane(id integer)
	RETURNS integer
	LANGUAGE plpgsql
	AS
	$BODY$
	DECLARE 
		max_juged_games integer;
	BEGIN
		SELECT juge_level(id)*4 INTO max_juged_games;
		RETURN max_juged_games;
	END;
	$BODY$;

/* ------------------------------------------------------------------ */ 
/* TRIGGERS                                                           */
/* ------------------------------------------------------------------ */

/* MANCHE TRIGGER */
CREATE OR REPLACE FUNCTION check_valid_Manche()
	RETURNS TRIGGER 
	LANGUAGE plpgsql
AS
$BODY$
BEGIN 
	IF (SELECT count(*)
		FROM Manche
			WHERE NEW.idTournoi = idTournoi 
				AND NEW.id <> id 
				AND NEW.dateHeureDebut BETWEEN dateheuredebut AND dateHeureDebut + duree
		) > 0
	THEN 
		RAISE EXCEPTION 'Une manche ne peut commancer durant une autre manche';
	END IF;
	RETURN NULL;
END;
$BODY$;

CREATE OR REPLACE TRIGGER on_new_or_change_Manche
AFTER INSERT OR UPDATE ON Manche
FOR EACH ROW EXECUTE FUNCTION check_valid_Manche();

/* DUEL TRIGGER */
CREATE OR REPLACE FUNCTION check_valid_Duel()
	RETURNS TRIGGER 
	LANGUAGE plpgsql
AS
$BODY$
BEGIN 
	IF (SELECT count(*)
		FROM Duel
			INNER JOIN TournoiMembreParticipant
				ON duel.idtournoi = TournoiMembreParticipant.idtournoi 
				AND (duel.idjoueurun = TournoiMembreParticipant.idmembre
					OR duel.idjoueurdeux = TournoiMembreParticipant.idmembre)
		) <> 1
	THEN 
		RAISE EXCEPTION 'Un des joueuers n''est pas inscrit au tournoi';
	END IF;
	IF (SELECT count(*)
		FROM Duel
			INNER JOIN TournoiJuge
				ON duel.idtournoi = TournoiJuge.idtournoi 
				AND duel.idjuge = TournoiJuge.idmembre
		) <> 1
	THEN 
		RAISE EXCEPTION 'Ce juge doit être inscrit au tournoi pour juger ce duel';
	END IF;
	IF (SELECT count(*)
		FROM Duel 
		WHERE NEW.idjuge = idjuge
			AND NEW.idManche = idManche
			AND NEW.idTournoi = idTournoi
		) > juge_max_simultane(NEW.idJuge)
	THEN 
		RAISE EXCEPTION 'Ce juge ne peut pas juger plus de duel durant ce round';
	END IF;
	IF (SELECT count(*)
		FROM Duel 
		WHERE (NEW.idJoueurUn = idJoueurUn OR NEW.idJoueurDeux = idJoueurDeux)
			AND NEW.idManche = idManche
			AND NEW.idTournoi = idTournoi
		) > 1
	THEN 
		RAISE EXCEPTION 'Un joueur ne peut pas participer à plus d''un duel à la fois';
	END IF;
	RETURN NULL;
END;
$BODY$;

CREATE OR REPLACE TRIGGER on_new_or_change_Duel
AFTER INSERT OR UPDATE ON Duel
FOR EACH ROW EXECUTE FUNCTION check_valid_Duel();

/* Exclusion jouer - juge/organisateur et exclusion d'inbscription à des tournois simultané*/

/* joueur */
CREATE OR REPLACE FUNCTION check_valid_TournoiMembreParticipant()
	RETURNS TRIGGER 
	LANGUAGE plpgsql
AS
$BODY$
BEGIN 
	IF (SELECT count(*)
		FROM TournoiMembreParticipant
			LEFT JOIN TournoiJuge
				ON NEW.idtournoi = TournoiJuge.idtournoi 
				AND NEW.idmembre = TournoiJuge.idjuge
			LEFT JOIN TournoiMembreOrganisateur 
				ON NEW.idtournoi = TournoiMembreOrganisateur.idtournoi 
				AND NEW.idmembre = TournoiMembreOrganisateur.idorg 
		WHERE TournoiJuge.idjuge IS NOT NULL OR TournoiMembreOrganisateur.idorg IS NOT NULL
		) > 0
	THEN 
		RAISE EXCEPTION 'On ne peut pas participer à un tournoi qu''on organise et/ou juge';
	END IF;
	RETURN NULL;
END;
$BODY$;

CREATE OR REPLACE TRIGGER on_new_or_change_TournoiMembreParticipant
AFTER INSERT OR UPDATE ON TournoiMembreParticipant
FOR EACH ROW EXECUTE FUNCTION check_valid_TournoiMembreParticipant();

/* juge */
CREATE OR REPLACE FUNCTION check_valid_TournoiJuge()
	RETURNS TRIGGER 
	LANGUAGE plpgsql
AS
$BODY$
BEGIN 
	IF (SELECT count(*)
		FROM TournoiJuge
			INNER JOIN TournoiMembreParticipant
				ON TournoiMembreParticipant.idtournoi = NEW.idtournoi 
				AND TournoiMembreParticipant.idmembre = NEW.idjuge
		) > 0
	THEN 
		RAISE EXCEPTION 'On ne peut pas juge d''un tournoi auquel on participe';
	END IF;
	RETURN NULL;
END;
$BODY$;

CREATE OR REPLACE TRIGGER on_new_or_change_TournoiJuge
AFTER INSERT OR UPDATE ON TournoiJuge
FOR EACH ROW EXECUTE FUNCTION check_valid_TournoiJuge();

/* joueur */
CREATE OR REPLACE FUNCTION check_valid_TournoiMembreOrganisateur()
	RETURNS TRIGGER 
	LANGUAGE plpgsql
AS
$BODY$
BEGIN 
	IF (SELECT count(*)
		FROM TournoiMembreOrganisateur
			INNER JOIN TournoiMembreParticipant 
				ON TournoiMembreParticipant.idtournoi = NEW.idtournoi 
				AND TournoiMembreParticipant.idmembre = NEW.idorg 
		) > 0
	THEN 
		RAISE EXCEPTION 'On ne peut pas être organisateur d''un tournoi auquel on participe';
	END IF;
	RETURN NULL;
END;
$BODY$;

CREATE OR REPLACE TRIGGER on_new_or_change_TournoiMembreOrganisateur
AFTER INSERT OR UPDATE ON TournoiMembreOrganisateur
FOR EACH ROW EXECUTE FUNCTION check_valid_TournoiMembreOrganisateur();

