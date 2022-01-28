/*Création des joueurs*/
CALL createPersonne('Morehouse', 'Dorothy', 'Yverdon-les-Bains');
CALL createPersonne('Jacocks', 'Jacquelyn', 'Fribourg');
CALL createPersonne('Havel', 'Orville', 'Bienne');
CALL createPersonne('Hacker', 'Carol', 'Sion');
CALL createPersonne('Ennis', 'Whitney', 'Lausanne');
CALL createPersonne('Douglas', 'Mattie', 'Bienne');
CALL createPersonne('Stupar', 'Diana', 'Kyiv');
CALL createPersonne('Copeland', 'Bridget', 'Lausanne');
CALL createPersonne('Currin', 'William', 'Paris');
CALL createPersonne('Miller', 'Daniel', 'Yverdon-les-Bains');
CALL createPersonne('Longo', 'Nancy', 'Lausanne');
CALL createPersonne('Asif', 'Jacqueline', 'Bienne');
CALL createPersonne('Anderson', 'Diane', 'Lausanne');
CALL createPersonne('Remillard', 'Stanley', 'Yverdon-les-Bains');
CALL createPersonne('Stewart', 'Elbert', 'Sarcelles');
CALL createPersonne('Andersen', 'Deborah', 'Bienne');
CALL createPersonne('Conly', 'Brigida', 'Yverdon-les-Bains');
CALL createPersonne('Meier', 'Robert', 'Yverdon-les-Bains');
CALL createPersonne('Finnerty', 'Allan', 'Lausanne');
CALL createPersonne('Ross', 'Catherine', 'Bienne');
CALL createPersonne('Lesko', 'James', 'Paris');
CALL createPersonne('Jones', 'Sue', 'Fribourg');
CALL createPersonne('Simonton', 'Wade', 'Yverdon-les-Bains');
CALL createPersonne('Moore', 'Noel', 'Paris');
CALL createPersonne('Frisbie', 'Alysia', 'Fribourg');
CALL createPersonne('Womack', 'Mary', 'Sion');
CALL createPersonne('Rush', 'Roni', 'Kyiv');
CALL createPersonne('Haywood', 'Linda', 'Yverdon-les-Bains');
CALL createPersonne('Ortiz', 'Twyla', 'Bienne');
CALL createPersonne('Pray', 'Henry', 'Bienne');
CALL createPersonne('Peterson', 'Jasmine', 'Fribourg');
CALL createPersonne('Girgenti', 'Jeffrey', 'Kyiv');
CALL createPersonne('Friedman', 'Michael', 'Sarcelles');
CALL createPersonne('Khim', 'Virginia', 'Lausanne');
CALL createPersonne('Farmer', 'Kelsey', 'Bienne');
CALL createPersonne('Wall', 'Richard', 'Yverdon-les-Bains');
CALL createPersonne('Byrd', 'Eugene', 'Yverdon-les-Bains');
CALL createPersonne('Weichbrodt', 'James', 'Fribourg');
CALL createPersonne('Scales', 'Bernadine', 'Paris');
CALL createPersonne('White', 'Ronald', 'Bienne');
CALL createPersonne('Alexander', 'Raymond', 'Kyiv');
CALL createPersonne('Hwang', 'Kathleen', 'Sion');
CALL createPersonne('Brown', 'Karin', 'Kyiv');
CALL createPersonne('Coakley', 'Julius', 'Sion');
CALL createPersonne('Mackay', 'Herbert', 'Yverdon-les-Bains');
CALL createPersonne('Brownlee', 'Pamela', 'Bienne');
CALL createPersonne('Crutcher', 'Andrew', 'Sion');
CALL createPersonne('Freeman', 'Michael', 'Yverdon-les-Bains');
CALL createPersonne('Chang', 'Mia', 'Yverdon-les-Bains');
CALL createPersonne('Glover', 'Edna', 'Lausanne');
CALL createPersonne('Hargis', 'Milissa', 'Fribourg');
CALL createPersonne('Burns', 'Elmer', 'Yverdon-les-Bains');
CALL createPersonne('Brown', 'Jesse', 'Fribourg');
CALL createPersonne('Garza', 'Donald', 'Lausanne');
CALL createPersonne('Gabriel', 'Joseph', 'Yverdon-les-Bains');
CALL createPersonne('Henry', 'Christina', 'Paris');
CALL createPersonne('Samuels', 'Sherlyn', 'Yverdon-les-Bains');
CALL createPersonne('King', 'Gerald', 'Lausanne');
CALL createPersonne('Cooper', 'Matthew', 'Sion');
CALL createPersonne('Enstad', 'Karen', 'Yverdon-les-Bains');
CALL createPersonne('Maynard', 'Henry', 'Yverdon-les-Bains');
CALL createPersonne('Marquez', 'Dawn', 'Bienne');
CALL createPersonne('Cook', 'Tracy', 'Lausanne');
CALL createPersonne('Pena', 'Della', 'Kyiv');

/*Peuplage des tournois */

/*Tournoi #1*/
/*Création du juge*/
CALL createPersonne('Larose', 'Elton', 'Bienne');
CALL createJugeFromPersonne(65::SMALLINT, 3::INT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(32::SMALLINT, 1::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(56::SMALLINT, 1::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(38::SMALLINT, 1::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(24::SMALLINT, 1::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(53::SMALLINT, 1::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(4::SMALLINT, 1::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(28::SMALLINT, 1::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(59::SMALLINT, 1::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL registerManche(1::SMALLINT, '2022-09-11 06:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 32::SMALLINT, 56::SMALLINT, 32::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 38::SMALLINT, 24::SMALLINT, 38::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 53::SMALLINT, 4::SMALLINT, 53::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 28::SMALLINT, 59::SMALLINT, 28::SMALLINT);
CALL registerManche(1::SMALLINT, '2022-09-11 06:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 1::SMALLINT, 65::SMALLINT, 32::SMALLINT, 38::SMALLINT, 32::SMALLINT);
CALL registerDuel(2::SMALLINT, 1::SMALLINT, 65::SMALLINT, 53::SMALLINT, 28::SMALLINT, 53::SMALLINT);
CALL registerManche(1::SMALLINT, '2022-09-11 06:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 1::SMALLINT, 65::SMALLINT, 32::SMALLINT, 53::SMALLINT, 32::SMALLINT);

/*Tournoi #2*/
/*Création du juge*/
CALL createPersonne('Stevenson', 'Pedro', 'Kyiv');
CALL createJugeFromPersonne(66::SMALLINT, 2::INT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(39::SMALLINT, 2::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(46::SMALLINT, 2::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(61::SMALLINT, 2::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(30::SMALLINT, 2::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(16::SMALLINT, 2::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(47::SMALLINT, 2::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(59::SMALLINT, 2::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(7::SMALLINT, 2::SMALLINT, 'Faso'::TEXT, '
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
CALL registerManche(2::SMALLINT, '2022-01-20 12:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 39::SMALLINT, 46::SMALLINT, 39::SMALLINT);
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 61::SMALLINT, 30::SMALLINT, 61::SMALLINT);
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 16::SMALLINT, 47::SMALLINT, 16::SMALLINT);
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 59::SMALLINT, 7::SMALLINT, 59::SMALLINT);
CALL registerManche(2::SMALLINT, '2022-01-20 12:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 2::SMALLINT, 66::SMALLINT, 39::SMALLINT, 61::SMALLINT, 39::SMALLINT);
CALL registerDuel(2::SMALLINT, 2::SMALLINT, 66::SMALLINT, 16::SMALLINT, 59::SMALLINT, 16::SMALLINT);
CALL registerManche(2::SMALLINT, '2022-01-20 12:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 2::SMALLINT, 66::SMALLINT, 39::SMALLINT, 16::SMALLINT, 39::SMALLINT);

/*Tournoi #3*/
/*Création du juge*/
CALL createPersonne('Hopkins', 'Thomas', 'Kyiv');
CALL createJugeFromPersonne(67::SMALLINT, 2::INT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(29::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(58::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(19::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(16::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(59::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(35::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(23::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(37::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(27::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(57::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(42::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(15::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(52::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(61::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(20::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*Création des manches et duels*/
CALL registerManche(3::SMALLINT, '2022-06-01 10:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 29::SMALLINT, 2::SMALLINT, 29::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 58::SMALLINT, 19::SMALLINT, 58::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 16::SMALLINT, 59::SMALLINT, 16::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 35::SMALLINT, 23::SMALLINT, 35::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 37::SMALLINT, 27::SMALLINT, 37::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 57::SMALLINT, 42::SMALLINT, 57::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 15::SMALLINT, 52::SMALLINT, 15::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 61::SMALLINT, 20::SMALLINT, 61::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 29::SMALLINT, 58::SMALLINT, 29::SMALLINT);
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 16::SMALLINT, 35::SMALLINT, 16::SMALLINT);
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 37::SMALLINT, 57::SMALLINT, 37::SMALLINT);
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 15::SMALLINT, 61::SMALLINT, 15::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 3::SMALLINT, 67::SMALLINT, 29::SMALLINT, 16::SMALLINT, 29::SMALLINT);
CALL registerDuel(3::SMALLINT, 3::SMALLINT, 67::SMALLINT, 37::SMALLINT, 15::SMALLINT, 37::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:30', '10 minutes');
CALL registerDuel(4::SMALLINT, 3::SMALLINT, 67::SMALLINT, 29::SMALLINT, 37::SMALLINT, 29::SMALLINT);

/*Tournoi #4*/
/*Création du juge*/
CALL createPersonne('Witt', 'Linda', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(68::SMALLINT, 2::INT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(58::SMALLINT, 4::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(55::SMALLINT, 4::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(47::SMALLINT, 4::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(50::SMALLINT, 4::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(49::SMALLINT, 4::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(26::SMALLINT, 4::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(14::SMALLINT, 4::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(28::SMALLINT, 4::SMALLINT, 'Faso'::TEXT, '
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
CALL registerManche(4::SMALLINT, '2021-12-06 10:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 58::SMALLINT, 55::SMALLINT, 58::SMALLINT);
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 47::SMALLINT, 50::SMALLINT, 47::SMALLINT);
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 49::SMALLINT, 26::SMALLINT, 49::SMALLINT);
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 14::SMALLINT, 28::SMALLINT, 14::SMALLINT);
CALL registerManche(4::SMALLINT, '2021-12-06 10:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 4::SMALLINT, 68::SMALLINT, 58::SMALLINT, 47::SMALLINT, 58::SMALLINT);
CALL registerDuel(2::SMALLINT, 4::SMALLINT, 68::SMALLINT, 49::SMALLINT, 14::SMALLINT, 49::SMALLINT);
CALL registerManche(4::SMALLINT, '2021-12-06 10:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 4::SMALLINT, 68::SMALLINT, 58::SMALLINT, 49::SMALLINT, 58::SMALLINT);

/*Tournoi #5*/
/*Création du juge*/
CALL createPersonne('Zweifel', 'Cortney', 'Lausanne');
CALL createJugeFromPersonne(69::SMALLINT, 2::INT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(24::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(37::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(29::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(15::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(2::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(61::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(36::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(53::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(23::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(57::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(43::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(64::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(56::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(10::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(51::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(31::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(34::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(35::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(22::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(46::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(5::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(25::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(32::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(3::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(17::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(49::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(19::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(16::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL registerManche(5::SMALLINT, '2022-03-30 12:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 24::SMALLINT, 54::SMALLINT, 24::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 37::SMALLINT, 29::SMALLINT, 37::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 15::SMALLINT, 2::SMALLINT, 15::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 61::SMALLINT, 36::SMALLINT, 61::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 53::SMALLINT, 23::SMALLINT, 53::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 57::SMALLINT, 43::SMALLINT, 57::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 9::SMALLINT, 64::SMALLINT, 9::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 56::SMALLINT, 10::SMALLINT, 56::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 51::SMALLINT, 31::SMALLINT, 51::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 40::SMALLINT, 34::SMALLINT, 40::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 35::SMALLINT, 22::SMALLINT, 35::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 46::SMALLINT, 5::SMALLINT, 46::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 25::SMALLINT, 60::SMALLINT, 25::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 32::SMALLINT, 3::SMALLINT, 32::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 17::SMALLINT, 49::SMALLINT, 17::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 19::SMALLINT, 16::SMALLINT, 19::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 24::SMALLINT, 37::SMALLINT, 24::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 15::SMALLINT, 61::SMALLINT, 15::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 53::SMALLINT, 57::SMALLINT, 53::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 9::SMALLINT, 56::SMALLINT, 9::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 51::SMALLINT, 40::SMALLINT, 51::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 35::SMALLINT, 46::SMALLINT, 35::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 25::SMALLINT, 32::SMALLINT, 25::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 17::SMALLINT, 19::SMALLINT, 17::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 24::SMALLINT, 15::SMALLINT, 24::SMALLINT);
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 53::SMALLINT, 9::SMALLINT, 53::SMALLINT);
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 51::SMALLINT, 35::SMALLINT, 51::SMALLINT);
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 25::SMALLINT, 17::SMALLINT, 25::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:30', '10 minutes');
CALL registerDuel(4::SMALLINT, 5::SMALLINT, 69::SMALLINT, 24::SMALLINT, 53::SMALLINT, 24::SMALLINT);
CALL registerDuel(4::SMALLINT, 5::SMALLINT, 69::SMALLINT, 51::SMALLINT, 25::SMALLINT, 51::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:40', '10 minutes');
CALL registerDuel(5::SMALLINT, 5::SMALLINT, 69::SMALLINT, 24::SMALLINT, 51::SMALLINT, 24::SMALLINT);

/*Tournoi #6*/
/*Création du juge*/
CALL createPersonne('Hertenstein', 'Lorene', 'Fribourg');
CALL createJugeFromPersonne(70::SMALLINT, 3::INT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(26::SMALLINT, 6::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(22::SMALLINT, 6::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(6::SMALLINT, 6::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(20::SMALLINT, 6::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(31::SMALLINT, 6::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(34::SMALLINT, 6::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(32::SMALLINT, 6::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(47::SMALLINT, 6::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL registerManche(6::SMALLINT, '2022-04-30 12:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 26::SMALLINT, 22::SMALLINT, 26::SMALLINT);
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 6::SMALLINT, 20::SMALLINT, 6::SMALLINT);
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 31::SMALLINT, 34::SMALLINT, 31::SMALLINT);
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 32::SMALLINT, 47::SMALLINT, 32::SMALLINT);
CALL registerManche(6::SMALLINT, '2022-04-30 12:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 6::SMALLINT, 70::SMALLINT, 26::SMALLINT, 6::SMALLINT, 26::SMALLINT);
CALL registerDuel(2::SMALLINT, 6::SMALLINT, 70::SMALLINT, 31::SMALLINT, 32::SMALLINT, 31::SMALLINT);
CALL registerManche(6::SMALLINT, '2022-04-30 12:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 6::SMALLINT, 70::SMALLINT, 26::SMALLINT, 31::SMALLINT, 26::SMALLINT);

/*Tournoi #7*/
/*Création du juge*/
CALL createPersonne('Laurent', 'Robert', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(71::SMALLINT, 3::INT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(49::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(53::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(6::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(9::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(63::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(58::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(14::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(46::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(7::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(18::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(45::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(59::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(20::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(3::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(40::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(13::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(60::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(8::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(50::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(38::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(28::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(12::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(15::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(48::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(2::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(41::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(22::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*Création des manches et duels*/
CALL registerManche(7::SMALLINT, '2022-02-08 08:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 49::SMALLINT, 54::SMALLINT, 49::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 53::SMALLINT, 10::SMALLINT, 53::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 6::SMALLINT, 9::SMALLINT, 6::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 63::SMALLINT, 58::SMALLINT, 63::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 14::SMALLINT, 46::SMALLINT, 14::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 7::SMALLINT, 36::SMALLINT, 7::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 18::SMALLINT, 45::SMALLINT, 18::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 59::SMALLINT, 20::SMALLINT, 59::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 3::SMALLINT, 40::SMALLINT, 3::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 13::SMALLINT, 60::SMALLINT, 13::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 8::SMALLINT, 50::SMALLINT, 8::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 38::SMALLINT, 28::SMALLINT, 38::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 21::SMALLINT, 12::SMALLINT, 21::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 25::SMALLINT, 15::SMALLINT, 25::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 48::SMALLINT, 2::SMALLINT, 48::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 41::SMALLINT, 22::SMALLINT, 41::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 49::SMALLINT, 53::SMALLINT, 49::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 6::SMALLINT, 63::SMALLINT, 6::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 14::SMALLINT, 7::SMALLINT, 14::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 18::SMALLINT, 59::SMALLINT, 18::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 3::SMALLINT, 13::SMALLINT, 3::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 8::SMALLINT, 38::SMALLINT, 8::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 21::SMALLINT, 25::SMALLINT, 21::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 48::SMALLINT, 41::SMALLINT, 48::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 49::SMALLINT, 6::SMALLINT, 49::SMALLINT);
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 14::SMALLINT, 18::SMALLINT, 14::SMALLINT);
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 3::SMALLINT, 8::SMALLINT, 3::SMALLINT);
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 21::SMALLINT, 48::SMALLINT, 21::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:30', '10 minutes');
CALL registerDuel(4::SMALLINT, 7::SMALLINT, 71::SMALLINT, 49::SMALLINT, 14::SMALLINT, 49::SMALLINT);
CALL registerDuel(4::SMALLINT, 7::SMALLINT, 71::SMALLINT, 3::SMALLINT, 21::SMALLINT, 3::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:40', '10 minutes');
CALL registerDuel(5::SMALLINT, 7::SMALLINT, 71::SMALLINT, 49::SMALLINT, 3::SMALLINT, 49::SMALLINT);

/*Tournoi #8*/
/*Création du juge*/
CALL createPersonne('Riesner', 'Eric', 'Fribourg');
CALL createJugeFromPersonne(72::SMALLINT, 3::INT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(14::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(27::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(62::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(59::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(32::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(24::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(25::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(41::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(54::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(9::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(64::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(49::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(12::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(29::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(37::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(38::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL registerManche(8::SMALLINT, '2022-04-01 10:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 14::SMALLINT, 27::SMALLINT, 14::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 62::SMALLINT, 59::SMALLINT, 62::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 32::SMALLINT, 24::SMALLINT, 32::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 25::SMALLINT, 41::SMALLINT, 25::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 54::SMALLINT, 9::SMALLINT, 54::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 64::SMALLINT, 49::SMALLINT, 64::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 12::SMALLINT, 29::SMALLINT, 12::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 37::SMALLINT, 38::SMALLINT, 37::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 14::SMALLINT, 62::SMALLINT, 14::SMALLINT);
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 32::SMALLINT, 25::SMALLINT, 32::SMALLINT);
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 54::SMALLINT, 64::SMALLINT, 54::SMALLINT);
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 12::SMALLINT, 37::SMALLINT, 12::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 8::SMALLINT, 72::SMALLINT, 14::SMALLINT, 32::SMALLINT, 14::SMALLINT);
CALL registerDuel(3::SMALLINT, 8::SMALLINT, 72::SMALLINT, 54::SMALLINT, 12::SMALLINT, 54::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:30', '10 minutes');
CALL registerDuel(4::SMALLINT, 8::SMALLINT, 72::SMALLINT, 14::SMALLINT, 54::SMALLINT, 14::SMALLINT);

/*Tournoi #9*/
/*Création du juge*/
CALL createPersonne('Martinez', 'Mabel', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(73::SMALLINT, 1::INT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(36::SMALLINT, 9::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(43::SMALLINT, 9::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(62::SMALLINT, 9::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(21::SMALLINT, 9::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(37::SMALLINT, 9::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(18::SMALLINT, 9::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(54::SMALLINT, 9::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(45::SMALLINT, 9::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL registerManche(9::SMALLINT, '2022-02-28 06:30', '10 minutes');
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 36::SMALLINT, 43::SMALLINT, 36::SMALLINT);
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 62::SMALLINT, 21::SMALLINT, 62::SMALLINT);
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 37::SMALLINT, 18::SMALLINT, 37::SMALLINT);
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 54::SMALLINT, 45::SMALLINT, 54::SMALLINT);
CALL registerManche(9::SMALLINT, '2022-02-28 06:40', '10 minutes');
CALL registerDuel(2::SMALLINT, 9::SMALLINT, 73::SMALLINT, 36::SMALLINT, 62::SMALLINT, 36::SMALLINT);
CALL registerDuel(2::SMALLINT, 9::SMALLINT, 73::SMALLINT, 37::SMALLINT, 54::SMALLINT, 37::SMALLINT);
CALL registerManche(9::SMALLINT, '2022-02-28 06:50', '10 minutes');
CALL registerDuel(3::SMALLINT, 9::SMALLINT, 73::SMALLINT, 36::SMALLINT, 37::SMALLINT, 36::SMALLINT);

/*Tournoi #10*/
/*Création du juge*/
CALL createPersonne('Park', 'Suzanne', 'Lausanne');
CALL createJugeFromPersonne(74::SMALLINT, 2::INT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(36::SMALLINT, 10::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(1::SMALLINT, 10::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(42::SMALLINT, 10::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(24::SMALLINT, 10::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(19::SMALLINT, 10::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(8::SMALLINT, 10::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(23::SMALLINT, 10::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(43::SMALLINT, 10::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*Création des manches et duels*/
CALL registerManche(10::SMALLINT, '2022-07-03 10:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 36::SMALLINT, 1::SMALLINT, 36::SMALLINT);
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 42::SMALLINT, 24::SMALLINT, 42::SMALLINT);
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 19::SMALLINT, 8::SMALLINT, 19::SMALLINT);
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 23::SMALLINT, 43::SMALLINT, 23::SMALLINT);
CALL registerManche(10::SMALLINT, '2022-07-03 10:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 10::SMALLINT, 74::SMALLINT, 36::SMALLINT, 42::SMALLINT, 36::SMALLINT);
CALL registerDuel(2::SMALLINT, 10::SMALLINT, 74::SMALLINT, 19::SMALLINT, 23::SMALLINT, 19::SMALLINT);
CALL registerManche(10::SMALLINT, '2022-07-03 10:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 10::SMALLINT, 74::SMALLINT, 36::SMALLINT, 19::SMALLINT, 36::SMALLINT);

