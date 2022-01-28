/*Création des joueurs*/
CALL createMembre('Marshall', 'Richard', 'Lausanne');
CALL createMembre('Harvey', 'Mark', 'Yverdon-les-Bains');
CALL createMembre('Barker', 'Thomas', 'Bienne');
CALL createMembre('Muller', 'James', 'Yverdon-les-Bains');
CALL createMembre('Kapinos', 'Terry', 'Kyiv');
CALL createMembre('Woods', 'Ruth', 'Bienne');
CALL createMembre('Franks', 'April', 'Fribourg');
CALL createMembre('Hartley', 'George', 'Kyiv');
CALL createMembre('Wright', 'Robert', 'Paris');
CALL createMembre('Ballard', 'Deborah', 'Fribourg');
CALL createMembre('Martin', 'June', 'Bienne');
CALL createMembre('Bonds', 'Richard', 'Sarcelles');
CALL createMembre('Angelo', 'Teresa', 'Paris');
CALL createMembre('Lawrence', 'Shirley', 'Yverdon-les-Bains');
CALL createMembre('Hodson', 'Alec', 'Fribourg');
CALL createMembre('Renteria', 'Frances', 'Kyiv');
CALL createMembre('Aaron', 'Gary', 'Paris');
CALL createMembre('Dunn', 'Alvin', 'Paris');
CALL createMembre('Maynard', 'Roderick', 'Yverdon-les-Bains');
CALL createMembre('Campbell', 'John', 'Yverdon-les-Bains');
CALL createMembre('Boles', 'Kevin', 'Sarcelles');
CALL createMembre('Anderson', 'Jeffery', 'Sarcelles');
CALL createMembre('Weatherford', 'Matthew', 'Sarcelles');
CALL createMembre('Kearney', 'Carmen', 'Kyiv');
CALL createMembre('Cornelia', 'Karen', 'Kyiv');
CALL createMembre('Bucci', 'Sanjuanita', 'Lausanne');
CALL createMembre('Sims', 'Toni', 'Yverdon-les-Bains');
CALL createMembre('Wuertz', 'Dee', 'Fribourg');
CALL createMembre('Decker', 'David', 'Yverdon-les-Bains');
CALL createMembre('Buhl', 'Timothy', 'Sarcelles');
CALL createMembre('Schwartz', 'Nathan', 'Bienne');
CALL createMembre('Marshall', 'Richard', 'Sarcelles');
CALL createMembre('Griffen', 'Fred', 'Yverdon-les-Bains');
CALL createMembre('Horn', 'Ethel', 'Bienne');
CALL createMembre('Kelly', 'James', 'Kyiv');
CALL createMembre('Jackson', 'Graciela', 'Lausanne');
CALL createMembre('Sosa', 'Rachel', 'Kyiv');
CALL createMembre('Myers', 'Franklin', 'Yverdon-les-Bains');
CALL createMembre('Lerner', 'Ruth', 'Sion');
CALL createMembre('Gould', 'Cliff', 'Bienne');
CALL createMembre('Bruster', 'Norma', 'Sion');
CALL createMembre('Weathers', 'David', 'Lausanne');
CALL createMembre('Pullen', 'Susan', 'Kyiv');
CALL createMembre('Farris', 'Charles', 'Sion');
CALL createMembre('Gillen', 'Scott', 'Paris');
CALL createMembre('Saunders', 'Jennifer', 'Bienne');
CALL createMembre('Smith', 'John', 'Bienne');
CALL createMembre('Arroyo', 'Phyllis', 'Yverdon-les-Bains');
CALL createMembre('Mount', 'Violet', 'Yverdon-les-Bains');
CALL createMembre('Lomas', 'Beatrice', 'Yverdon-les-Bains');
CALL createMembre('Criscuolo', 'Marsha', 'Kyiv');
CALL createMembre('Schwartz', 'Jan', 'Yverdon-les-Bains');
CALL createMembre('Hanway', 'Priscilla', 'Kyiv');
CALL createMembre('Brown', 'Janice', 'Sion');
CALL createMembre('Hoskins', 'Maria', 'Paris');
CALL createMembre('Ezell', 'Beth', 'Paris');
CALL createMembre('Collis', 'Frederick', 'Lausanne');
CALL createMembre('Sprengeler', 'Shanti', 'Bienne');
CALL createMembre('Valenzuela', 'Wendy', 'Paris');
CALL createMembre('Mcintyre', 'Pamella', 'Fribourg');
CALL createMembre('Moore', 'Jeffery', 'Yverdon-les-Bains');
CALL createMembre('Aguilar', 'Johnny', 'Kyiv');
CALL createMembre('Jones', 'Derrick', 'Paris');
CALL createMembre('Hardinger', 'Willie', 'Paris');

/*Peuplage des tournois */

/*Tournoi #1*/
/*Création du juge*/
CALL createMembre('Lee', 'Jennifer', 'Paris');
CALL createJugeFromPersonne(65::SMALLINT, 2::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(65::SMALLINT, 1::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(65::SMALLINT, 1::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(42::SMALLINT, 1::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(53::SMALLINT, 1::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(14::SMALLINT, 1::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(5::SMALLINT, 1::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(44::SMALLINT, 1::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(50::SMALLINT, 1::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(27::SMALLINT, 1::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(18::SMALLINT, 1::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);

/*Création des manches et duels*/
CALL registerManche(1::SMALLINT, '2022-09-11 06:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 42::SMALLINT, 53::SMALLINT, 42::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 14::SMALLINT, 5::SMALLINT, 14::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 44::SMALLINT, 50::SMALLINT, 44::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 27::SMALLINT, 18::SMALLINT, 27::SMALLINT);
CALL registerManche(1::SMALLINT, '2022-09-11 06:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 1::SMALLINT, 65::SMALLINT, 42::SMALLINT, 14::SMALLINT, 42::SMALLINT);
CALL registerDuel(2::SMALLINT, 1::SMALLINT, 65::SMALLINT, 44::SMALLINT, 27::SMALLINT, 44::SMALLINT);
CALL registerManche(1::SMALLINT, '2022-09-11 06:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 1::SMALLINT, 65::SMALLINT, 42::SMALLINT, 44::SMALLINT, 42::SMALLINT);

/*Tournoi #2*/
/*Création du juge*/
CALL createMembre('Stonerock', 'Garrett', 'Paris');
CALL createJugeFromPersonne(66::SMALLINT, 2::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(66::SMALLINT, 2::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(66::SMALLINT, 2::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(49::SMALLINT, 2::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(11::SMALLINT, 2::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(33::SMALLINT, 2::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(46::SMALLINT, 2::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(54::SMALLINT, 2::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(14::SMALLINT, 2::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(29::SMALLINT, 2::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(53::SMALLINT, 2::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);

/*Création des manches et duels*/
CALL registerManche(2::SMALLINT, '2022-01-20 12:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 49::SMALLINT, 11::SMALLINT, 49::SMALLINT);
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 33::SMALLINT, 46::SMALLINT, 33::SMALLINT);
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 54::SMALLINT, 14::SMALLINT, 54::SMALLINT);
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 29::SMALLINT, 53::SMALLINT, 29::SMALLINT);
CALL registerManche(2::SMALLINT, '2022-01-20 12:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 2::SMALLINT, 66::SMALLINT, 49::SMALLINT, 33::SMALLINT, 49::SMALLINT);
CALL registerDuel(2::SMALLINT, 2::SMALLINT, 66::SMALLINT, 54::SMALLINT, 29::SMALLINT, 54::SMALLINT);
CALL registerManche(2::SMALLINT, '2022-01-20 12:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 2::SMALLINT, 66::SMALLINT, 49::SMALLINT, 54::SMALLINT, 49::SMALLINT);

/*Tournoi #3*/
/*Création du juge*/
CALL createMembre('Wenger', 'John', 'Paris');
CALL createJugeFromPersonne(67::SMALLINT, 2::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(67::SMALLINT, 3::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(67::SMALLINT, 3::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(18::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(46::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(64::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(6::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(22::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(21::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(42::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(58::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(5::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(41::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(2::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(16::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(34::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(12::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(36::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(54::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);

/*Création des manches et duels*/
CALL registerManche(3::SMALLINT, '2022-06-01 10:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 18::SMALLINT, 46::SMALLINT, 18::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 64::SMALLINT, 6::SMALLINT, 64::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 22::SMALLINT, 21::SMALLINT, 22::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 42::SMALLINT, 58::SMALLINT, 42::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 5::SMALLINT, 41::SMALLINT, 5::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 2::SMALLINT, 16::SMALLINT, 2::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 34::SMALLINT, 12::SMALLINT, 34::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 36::SMALLINT, 54::SMALLINT, 36::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 18::SMALLINT, 64::SMALLINT, 18::SMALLINT);
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 22::SMALLINT, 42::SMALLINT, 22::SMALLINT);
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 5::SMALLINT, 2::SMALLINT, 5::SMALLINT);
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 34::SMALLINT, 36::SMALLINT, 34::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 3::SMALLINT, 67::SMALLINT, 18::SMALLINT, 22::SMALLINT, 18::SMALLINT);
CALL registerDuel(3::SMALLINT, 3::SMALLINT, 67::SMALLINT, 5::SMALLINT, 34::SMALLINT, 5::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:30', INTERVAL '10m');
CALL registerDuel(4::SMALLINT, 3::SMALLINT, 67::SMALLINT, 18::SMALLINT, 5::SMALLINT, 18::SMALLINT);

/*Tournoi #4*/
/*Création du juge*/
CALL createMembre('Beaver', 'Clyde', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(68::SMALLINT, 2::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(68::SMALLINT, 4::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(68::SMALLINT, 4::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(31::SMALLINT, 4::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(18::SMALLINT, 4::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(30::SMALLINT, 4::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(4::SMALLINT, 4::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(12::SMALLINT, 4::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(36::SMALLINT, 4::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(19::SMALLINT, 4::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(50::SMALLINT, 4::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);

/*Création des manches et duels*/
CALL registerManche(4::SMALLINT, '2021-12-06 10:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 31::SMALLINT, 18::SMALLINT, 31::SMALLINT);
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 30::SMALLINT, 4::SMALLINT, 30::SMALLINT);
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 12::SMALLINT, 36::SMALLINT, 12::SMALLINT);
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 19::SMALLINT, 50::SMALLINT, 19::SMALLINT);
CALL registerManche(4::SMALLINT, '2021-12-06 10:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 4::SMALLINT, 68::SMALLINT, 31::SMALLINT, 30::SMALLINT, 31::SMALLINT);
CALL registerDuel(2::SMALLINT, 4::SMALLINT, 68::SMALLINT, 12::SMALLINT, 19::SMALLINT, 12::SMALLINT);
CALL registerManche(4::SMALLINT, '2021-12-06 10:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 4::SMALLINT, 68::SMALLINT, 31::SMALLINT, 12::SMALLINT, 31::SMALLINT);

/*Tournoi #5*/
/*Création du juge*/
CALL createMembre('Tidwell', 'Justin', 'Lausanne');
CALL createJugeFromPersonne(69::SMALLINT, 3::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(69::SMALLINT, 5::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(69::SMALLINT, 5::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(58::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(38::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(52::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(22::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(21::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(35::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(12::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(50::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(57::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(31::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(9::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(13::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(36::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(49::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(41::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(63::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(34::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(6::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(3::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(45::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(19::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(30::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(60::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(62::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(42::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(44::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(54::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(53::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(39::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(18::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(61::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(40::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);

/*Création des manches et duels*/
CALL registerManche(5::SMALLINT, '2022-03-30 12:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 58::SMALLINT, 38::SMALLINT, 58::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 52::SMALLINT, 22::SMALLINT, 52::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 21::SMALLINT, 35::SMALLINT, 21::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 12::SMALLINT, 50::SMALLINT, 12::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 57::SMALLINT, 31::SMALLINT, 57::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 9::SMALLINT, 13::SMALLINT, 9::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 36::SMALLINT, 49::SMALLINT, 36::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 41::SMALLINT, 63::SMALLINT, 41::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 34::SMALLINT, 6::SMALLINT, 34::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 3::SMALLINT, 45::SMALLINT, 3::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 19::SMALLINT, 30::SMALLINT, 19::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 60::SMALLINT, 62::SMALLINT, 60::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 42::SMALLINT, 44::SMALLINT, 42::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 54::SMALLINT, 53::SMALLINT, 54::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 39::SMALLINT, 18::SMALLINT, 39::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 61::SMALLINT, 40::SMALLINT, 61::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 58::SMALLINT, 52::SMALLINT, 58::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 21::SMALLINT, 12::SMALLINT, 21::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 57::SMALLINT, 9::SMALLINT, 57::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 36::SMALLINT, 41::SMALLINT, 36::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 34::SMALLINT, 3::SMALLINT, 34::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 19::SMALLINT, 60::SMALLINT, 19::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 42::SMALLINT, 54::SMALLINT, 42::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 39::SMALLINT, 61::SMALLINT, 39::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 58::SMALLINT, 21::SMALLINT, 58::SMALLINT);
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 57::SMALLINT, 36::SMALLINT, 57::SMALLINT);
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 34::SMALLINT, 19::SMALLINT, 34::SMALLINT);
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 42::SMALLINT, 39::SMALLINT, 42::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:30', INTERVAL '10m');
CALL registerDuel(4::SMALLINT, 5::SMALLINT, 69::SMALLINT, 58::SMALLINT, 57::SMALLINT, 58::SMALLINT);
CALL registerDuel(4::SMALLINT, 5::SMALLINT, 69::SMALLINT, 34::SMALLINT, 42::SMALLINT, 34::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:40', INTERVAL '10m');
CALL registerDuel(5::SMALLINT, 5::SMALLINT, 69::SMALLINT, 58::SMALLINT, 34::SMALLINT, 58::SMALLINT);

/*Tournoi #6*/
/*Création du juge*/
CALL createMembre('Lawrence', 'Elliot', 'Fribourg');
CALL createJugeFromPersonne(70::SMALLINT, 2::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(70::SMALLINT, 6::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(70::SMALLINT, 6::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(22::SMALLINT, 6::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(36::SMALLINT, 6::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(21::SMALLINT, 6::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(61::SMALLINT, 6::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(50::SMALLINT, 6::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(27::SMALLINT, 6::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(56::SMALLINT, 6::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(5::SMALLINT, 6::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);

/*Création des manches et duels*/
CALL registerManche(6::SMALLINT, '2022-04-30 12:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 22::SMALLINT, 36::SMALLINT, 22::SMALLINT);
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 21::SMALLINT, 61::SMALLINT, 21::SMALLINT);
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 50::SMALLINT, 27::SMALLINT, 50::SMALLINT);
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 56::SMALLINT, 5::SMALLINT, 56::SMALLINT);
CALL registerManche(6::SMALLINT, '2022-04-30 12:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 6::SMALLINT, 70::SMALLINT, 22::SMALLINT, 21::SMALLINT, 22::SMALLINT);
CALL registerDuel(2::SMALLINT, 6::SMALLINT, 70::SMALLINT, 50::SMALLINT, 56::SMALLINT, 50::SMALLINT);
CALL registerManche(6::SMALLINT, '2022-04-30 12:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 6::SMALLINT, 70::SMALLINT, 22::SMALLINT, 50::SMALLINT, 22::SMALLINT);

/*Tournoi #7*/
/*Création du juge*/
CALL createMembre('Myers', 'John', 'Kyiv');
CALL createJugeFromPersonne(71::SMALLINT, 3::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(71::SMALLINT, 7::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(71::SMALLINT, 7::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(56::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(25::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(7::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(16::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(60::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(1::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(62::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(52::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(10::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(36::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(17::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(27::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(54::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(64::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(13::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(61::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(42::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(12::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(32::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(59::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(24::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(4::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(30::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(21::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(37::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(63::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(40::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(33::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(46::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(6::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(44::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(26::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*Création des manches et duels*/
CALL registerManche(7::SMALLINT, '2022-02-08 08:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 56::SMALLINT, 25::SMALLINT, 56::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 7::SMALLINT, 16::SMALLINT, 7::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 60::SMALLINT, 1::SMALLINT, 60::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 62::SMALLINT, 52::SMALLINT, 62::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 10::SMALLINT, 36::SMALLINT, 10::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 17::SMALLINT, 27::SMALLINT, 17::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 54::SMALLINT, 64::SMALLINT, 54::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 13::SMALLINT, 61::SMALLINT, 13::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 42::SMALLINT, 12::SMALLINT, 42::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 32::SMALLINT, 59::SMALLINT, 32::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 24::SMALLINT, 4::SMALLINT, 24::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 30::SMALLINT, 21::SMALLINT, 30::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 37::SMALLINT, 63::SMALLINT, 37::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 40::SMALLINT, 33::SMALLINT, 40::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 46::SMALLINT, 6::SMALLINT, 46::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 44::SMALLINT, 26::SMALLINT, 44::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 56::SMALLINT, 7::SMALLINT, 56::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 60::SMALLINT, 62::SMALLINT, 60::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 10::SMALLINT, 17::SMALLINT, 10::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 54::SMALLINT, 13::SMALLINT, 54::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 42::SMALLINT, 32::SMALLINT, 42::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 24::SMALLINT, 30::SMALLINT, 24::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 37::SMALLINT, 40::SMALLINT, 37::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 46::SMALLINT, 44::SMALLINT, 46::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 56::SMALLINT, 60::SMALLINT, 56::SMALLINT);
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 10::SMALLINT, 54::SMALLINT, 10::SMALLINT);
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 42::SMALLINT, 24::SMALLINT, 42::SMALLINT);
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 37::SMALLINT, 46::SMALLINT, 37::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:30', INTERVAL '10m');
CALL registerDuel(4::SMALLINT, 7::SMALLINT, 71::SMALLINT, 56::SMALLINT, 10::SMALLINT, 56::SMALLINT);
CALL registerDuel(4::SMALLINT, 7::SMALLINT, 71::SMALLINT, 42::SMALLINT, 37::SMALLINT, 42::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:40', INTERVAL '10m');
CALL registerDuel(5::SMALLINT, 7::SMALLINT, 71::SMALLINT, 56::SMALLINT, 42::SMALLINT, 56::SMALLINT);

/*Tournoi #8*/
/*Création du juge*/
CALL createMembre('Griffin', 'Marlin', 'Kyiv');
CALL createJugeFromPersonne(72::SMALLINT, 3::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(72::SMALLINT, 8::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(72::SMALLINT, 8::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(39::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(19::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(15::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(62::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(7::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(20::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(47::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(60::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(1::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(8::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(2::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(33::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(23::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(13::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(10::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(55::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*Création des manches et duels*/
CALL registerManche(8::SMALLINT, '2022-04-01 10:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 39::SMALLINT, 19::SMALLINT, 39::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 15::SMALLINT, 62::SMALLINT, 15::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 7::SMALLINT, 20::SMALLINT, 7::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 47::SMALLINT, 60::SMALLINT, 47::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 1::SMALLINT, 8::SMALLINT, 1::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 2::SMALLINT, 33::SMALLINT, 2::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 23::SMALLINT, 13::SMALLINT, 23::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 10::SMALLINT, 55::SMALLINT, 10::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 39::SMALLINT, 15::SMALLINT, 39::SMALLINT);
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 7::SMALLINT, 47::SMALLINT, 7::SMALLINT);
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 1::SMALLINT, 2::SMALLINT, 1::SMALLINT);
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 23::SMALLINT, 10::SMALLINT, 23::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 8::SMALLINT, 72::SMALLINT, 39::SMALLINT, 7::SMALLINT, 39::SMALLINT);
CALL registerDuel(3::SMALLINT, 8::SMALLINT, 72::SMALLINT, 1::SMALLINT, 23::SMALLINT, 1::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:30', INTERVAL '10m');
CALL registerDuel(4::SMALLINT, 8::SMALLINT, 72::SMALLINT, 39::SMALLINT, 1::SMALLINT, 39::SMALLINT);

/*Tournoi #9*/
/*Création du juge*/
CALL createMembre('Lanphear', 'Wendy', 'Lausanne');
CALL createJugeFromPersonne(73::SMALLINT, 2::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(73::SMALLINT, 9::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(73::SMALLINT, 9::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(10::SMALLINT, 9::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(26::SMALLINT, 9::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(51::SMALLINT, 9::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(14::SMALLINT, 9::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(55::SMALLINT, 9::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(50::SMALLINT, 9::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(6::SMALLINT, 9::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(24::SMALLINT, 9::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);

/*Création des manches et duels*/
CALL registerManche(9::SMALLINT, '2022-02-28 06:30', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 10::SMALLINT, 26::SMALLINT, 10::SMALLINT);
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 51::SMALLINT, 14::SMALLINT, 51::SMALLINT);
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 55::SMALLINT, 50::SMALLINT, 55::SMALLINT);
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 6::SMALLINT, 24::SMALLINT, 6::SMALLINT);
CALL registerManche(9::SMALLINT, '2022-02-28 06:40', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 9::SMALLINT, 73::SMALLINT, 10::SMALLINT, 51::SMALLINT, 10::SMALLINT);
CALL registerDuel(2::SMALLINT, 9::SMALLINT, 73::SMALLINT, 55::SMALLINT, 6::SMALLINT, 55::SMALLINT);
CALL registerManche(9::SMALLINT, '2022-02-28 06:50', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 9::SMALLINT, 73::SMALLINT, 10::SMALLINT, 55::SMALLINT, 10::SMALLINT);

/*Tournoi #10*/
/*Création du juge*/
CALL createMembre('Carver', 'Beth', 'Kyiv');
CALL createJugeFromPersonne(74::SMALLINT, 3::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(74::SMALLINT, 10::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(74::SMALLINT, 10::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(41::SMALLINT, 10::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(63::SMALLINT, 10::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(52::SMALLINT, 10::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(29::SMALLINT, 10::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);
CALL createParticipantFromPersonne(58::SMALLINT, 10::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
4 Contact Other Plane
1 Ghoulcallers Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra'::TEXT);
CALL createParticipantFromPersonne(18::SMALLINT, 10::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(31::SMALLINT, 10::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger'::TEXT);
CALL createParticipantFromPersonne(51::SMALLINT, 10::SMALLINT, 'Faso'::TEXT, '
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuuls Fury // Kazuuls Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence'::TEXT);

/*Création des manches et duels*/
CALL registerManche(10::SMALLINT, '2022-07-03 10:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 41::SMALLINT, 63::SMALLINT, 41::SMALLINT);
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 52::SMALLINT, 29::SMALLINT, 52::SMALLINT);
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 58::SMALLINT, 18::SMALLINT, 58::SMALLINT);
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 31::SMALLINT, 51::SMALLINT, 31::SMALLINT);
CALL registerManche(10::SMALLINT, '2022-07-03 10:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 10::SMALLINT, 74::SMALLINT, 41::SMALLINT, 52::SMALLINT, 41::SMALLINT);
CALL registerDuel(2::SMALLINT, 10::SMALLINT, 74::SMALLINT, 58::SMALLINT, 31::SMALLINT, 58::SMALLINT);
CALL registerManche(10::SMALLINT, '2022-07-03 10:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 10::SMALLINT, 74::SMALLINT, 41::SMALLINT, 58::SMALLINT, 41::SMALLINT);

