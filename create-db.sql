

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
	numeroMembre INT NOT NULL,
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
	CONSTRAINT gagnant_check CHECK (idGagnant = NULL OR idGagnant = idJoueurUn OR idGagnant = idJoueurDeux),
	CONSTRAINT joueurs_check CHECK (idJoueurUn <> idJoueurDeux),
	PRIMARY KEY (id, idManche, idTournoi)
);

DROP TABLE IF EXISTS Manche CASCADE;
CREATE TABLE Manche (
	id SMALLSERIAL,
	idTournoi SMALLINT,
	dateHeureDebut TIMESTAMP NOT NULL,
	duree INTERVAL NOT NULL,
	PRIMARY KEY (id, idTournoi)
);

DROP TABLE IF EXISTS Tournoi CASCADE;
CREATE TABLE Tournoi (
	id SMALLSERIAL,
	nom TEXT NOT NULL,
	dateHeureDebut TIMESTAMP NOT NULL,
	dateHeureFin TIMESTAMP NOT NULL CONSTRAINT time_check CHECK (dateHeureFin > dateHeureDebut), 
	delaiAdmin TIME NOT NULL,
	format TEXT NOT NULL,
	echelleNbJoueur SMALLINT NOT NULL,
	idAdresse SMALLINT NOT NULL,
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

CREATE FUNCTION juge_level(id integer)
	RETURNS integer
	LANGUAGE plpgsql
	AS
	$BODY$
	DECLARE 
		juge_level integer;
		juge_exp integer
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
		ELSE
		THEN RETURN 3;
		END IF;
	END;
	$BODY$ 

CREATE FUNCTION juge_max_simultane(id integer)
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

CREATE FUNCTION check_valid_duel()
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
		RAISE EXCEPTION 'Un des joeuers n''est pas inscrit au tournoi '
	END IF
	IF (SELECT count(*)
		FROM Duel
			INNER JOIN TournoiJuge
				ON duel.idtournoi = TournoiJuge.idtournoi 
				AND duel.idjuge = TournoiJuge.idmembre
		) <> 1
	THEN 
		RAISE EXCEPTION 'Ce juge doit être inscrit au tournoi pour juger ce duel'
	END IF
	IF (SELECT count(*)
		FROM Duel 
		WHERE NEW.idjuge = idjuge
			AND NEW.idManche = idManche
			AND NEW.idTournoi = idTournoi
		) > juge_max_simultane(NEW.idJuge)
	THEN 
		RAISE EXCEPTION 'Ce juge ne peut pas juger plus de duel durant ce round'
	END IF
	IF (SELECT count(*)
		FROM Duel 
		WHERE (NEW.idJoueurUn = idJoueurUn OR NEW.idJoueurDeux = idJoueurDeux)
			AND NEW.idManche = idManche
			AND NEW.idTournoi = idTournoi
		) > 1
	THEN 
		RAISE EXCEPTION 'Un joueur ne peut pas participer à plus d''un duel à la fois'
END
$BODY$;

CREATE TRIGGER on_new_or_change_duel
AFTER INSERT OR UPDATE ON Duel
FOR EACH ROW check_valid_duel();





/*TODO EA à jour*/