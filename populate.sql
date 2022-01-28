/*Création des joueurs*/
CALL createPersonne('Mayo', 'Cari', 'Sion');
CALL createPersonne('Jennins', 'Harriet', 'Kyiv');
CALL createPersonne('Pickup', 'William', 'Lausanne');
CALL createPersonne('Espinoza', 'Randolph', 'Kyiv');
CALL createPersonne('Dowling', 'Brian', 'Fribourg');
CALL createPersonne('French', 'Cherise', 'Paris');
CALL createPersonne('Bryant', 'Donald', 'Sarcelles');
CALL createPersonne('Milburn', 'Eleanor', 'Lausanne');
CALL createPersonne('Theel', 'James', 'Kyiv');
CALL createPersonne('Marasco', 'Frances', 'Yverdon-les-Bains');
CALL createPersonne('Bohannon', 'Ilana', 'Fribourg');
CALL createPersonne('Abrahams', 'Melvin', 'Fribourg');
CALL createPersonne('Brown', 'Dwayne', 'Paris');
CALL createPersonne('Marez', 'Will', 'Fribourg');
CALL createPersonne('Bell', 'Richard', 'Yverdon-les-Bains');
CALL createPersonne('Bishop', 'Gerard', 'Yverdon-les-Bains');
CALL createPersonne('Murphy', 'Ricardo', 'Sion');
CALL createPersonne('Fischer', 'Nadine', 'Yverdon-les-Bains');
CALL createPersonne('Layne', 'Steven', 'Sion');
CALL createPersonne('Daniel', 'Jean', 'Kyiv');
CALL createPersonne('Simmons', 'Allen', 'Sarcelles');
CALL createPersonne('Crawford', 'Tyrone', 'Lausanne');
CALL createPersonne('Coto', 'Helen', 'Paris');
CALL createPersonne('Turner', 'Edward', 'Bienne');
CALL createPersonne('Barger', 'Billie', 'Yverdon-les-Bains');
CALL createPersonne('Jones', 'Mary', 'Fribourg');
CALL createPersonne('Roeder', 'Nathan', 'Kyiv');
CALL createPersonne('Fulcher', 'Paul', 'Fribourg');
CALL createPersonne('Caldwell', 'Catherine', 'Lausanne');
CALL createPersonne('Aguilar', 'Martha', 'Sion');
CALL createPersonne('Geib', 'Rose', 'Yverdon-les-Bains');
CALL createPersonne('Hill', 'Lynette', 'Sion');
CALL createPersonne('Griffin', 'Fredrick', 'Kyiv');
CALL createPersonne('Ufford', 'Bruce', 'Kyiv');
CALL createPersonne('Macleod', 'Benjamin', 'Fribourg');
CALL createPersonne('Jones', 'Angela', 'Bienne');
CALL createPersonne('Pilkinton', 'Gerald', 'Yverdon-les-Bains');
CALL createPersonne('Bogan', 'Martin', 'Yverdon-les-Bains');
CALL createPersonne('Spada', 'Thalia', 'Lausanne');
CALL createPersonne('Mann', 'Robert', 'Paris');
CALL createPersonne('Weddle', 'Mandy', 'Yverdon-les-Bains');
CALL createPersonne('Foreman', 'James', 'Paris');
CALL createPersonne('Cross', 'Beverly', 'Bienne');
CALL createPersonne('Stjean', 'Morris', 'Kyiv');
CALL createPersonne('Williams', 'Evangelina', 'Lausanne');
CALL createPersonne('Hegge', 'William', 'Paris');
CALL createPersonne('Lee', 'Jillian', 'Yverdon-les-Bains');
CALL createPersonne('Benack', 'Linda', 'Yverdon-les-Bains');
CALL createPersonne('Taylor', 'Donald', 'Yverdon-les-Bains');
CALL createPersonne('Enriquez', 'Allen', 'Yverdon-les-Bains');
CALL createPersonne('Haley', 'Denise', 'Paris');
CALL createPersonne('Bartholomew', 'Solange', 'Sarcelles');
CALL createPersonne('Kanter', 'Theresa', 'Yverdon-les-Bains');
CALL createPersonne('Eager', 'Mildred', 'Yverdon-les-Bains');
CALL createPersonne('Castillo', 'Louise', 'Yverdon-les-Bains');
CALL createPersonne('Kutscher', 'Eric', 'Fribourg');
CALL createPersonne('Hopkins', 'Lee', 'Sion');
CALL createPersonne('Schellermann', 'Joan', 'Yverdon-les-Bains');
CALL createPersonne('Kuhn', 'Kathleen', 'Paris');
CALL createPersonne('Lipinski', 'Larry', 'Sarcelles');
CALL createPersonne('Lee', 'Erin', 'Fribourg');
CALL createPersonne('Goodman', 'Leona', 'Paris');
CALL createPersonne('Tousom', 'Patricia', 'Fribourg');
CALL createPersonne('Porter', 'Milo', 'Lausanne');

/*Peuplage des tournois */

/*Tournoi #1*/
/*Création du juge*/
CALL createPersonne('Martinez', 'Helen', 'Lausanne');
CALL createJugeFromPersonne(65::SMALLINT, 3::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(65::SMALLINT, 1::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(62::SMALLINT, 1::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(55::SMALLINT, 1::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(21::SMALLINT, 1::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(3::SMALLINT, 1::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(12::SMALLINT, 1::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(23::SMALLINT, 1::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(6::SMALLINT, 1::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(25::SMALLINT, 1::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*Création des manches et duels*/
CALL registerManche(1::SMALLINT, '2022-09-11 06:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 62::SMALLINT, 55::SMALLINT, 62::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 21::SMALLINT, 3::SMALLINT, 21::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 12::SMALLINT, 23::SMALLINT, 12::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 6::SMALLINT, 25::SMALLINT, 6::SMALLINT);
CALL registerManche(1::SMALLINT, '2022-09-11 06:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 1::SMALLINT, 65::SMALLINT, 62::SMALLINT, 21::SMALLINT, 62::SMALLINT);
CALL registerDuel(2::SMALLINT, 1::SMALLINT, 65::SMALLINT, 12::SMALLINT, 6::SMALLINT, 12::SMALLINT);
CALL registerManche(1::SMALLINT, '2022-09-11 06:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 1::SMALLINT, 65::SMALLINT, 62::SMALLINT, 12::SMALLINT, 62::SMALLINT);

/*Tournoi #2*/
/*Création du juge*/
CALL createPersonne('Taft', 'Everett', 'Sarcelles');
CALL createJugeFromPersonne(66::SMALLINT, 3::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(66::SMALLINT, 2::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(47::SMALLINT, 2::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(15::SMALLINT, 2::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(11::SMALLINT, 2::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(63::SMALLINT, 2::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(58::SMALLINT, 2::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(60::SMALLINT, 2::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
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
CALL createParticipantFromPersonne(10::SMALLINT, 2::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*Création des manches et duels*/
CALL registerManche(2::SMALLINT, '2022-01-20 12:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 47::SMALLINT, 15::SMALLINT, 47::SMALLINT);
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 11::SMALLINT, 63::SMALLINT, 11::SMALLINT);
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 58::SMALLINT, 60::SMALLINT, 58::SMALLINT);
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 7::SMALLINT, 10::SMALLINT, 7::SMALLINT);
CALL registerManche(2::SMALLINT, '2022-01-20 12:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 2::SMALLINT, 66::SMALLINT, 47::SMALLINT, 11::SMALLINT, 47::SMALLINT);
CALL registerDuel(2::SMALLINT, 2::SMALLINT, 66::SMALLINT, 58::SMALLINT, 7::SMALLINT, 58::SMALLINT);
CALL registerManche(2::SMALLINT, '2022-01-20 12:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 2::SMALLINT, 66::SMALLINT, 47::SMALLINT, 58::SMALLINT, 47::SMALLINT);

/*Tournoi #3*/
/*Création du juge*/
CALL createPersonne('Souza', 'Helen', 'Sarcelles');
CALL createJugeFromPersonne(67::SMALLINT, 2::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(67::SMALLINT, 3::SMALLINT);

/*Assignation des decks*/
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
CALL createParticipantFromPersonne(45::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(7::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(39::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(19::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(60::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(54::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(18::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(17::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(43::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(64::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(47::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(51::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(3::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL registerManche(3::SMALLINT, '2022-06-01 10:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 23::SMALLINT, 45::SMALLINT, 23::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 16::SMALLINT, 7::SMALLINT, 16::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 42::SMALLINT, 39::SMALLINT, 42::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 19::SMALLINT, 60::SMALLINT, 19::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 54::SMALLINT, 18::SMALLINT, 54::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 17::SMALLINT, 43::SMALLINT, 17::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 64::SMALLINT, 47::SMALLINT, 64::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 51::SMALLINT, 3::SMALLINT, 51::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 23::SMALLINT, 16::SMALLINT, 23::SMALLINT);
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 42::SMALLINT, 19::SMALLINT, 42::SMALLINT);
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 54::SMALLINT, 17::SMALLINT, 54::SMALLINT);
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 64::SMALLINT, 51::SMALLINT, 64::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 3::SMALLINT, 67::SMALLINT, 23::SMALLINT, 42::SMALLINT, 23::SMALLINT);
CALL registerDuel(3::SMALLINT, 3::SMALLINT, 67::SMALLINT, 54::SMALLINT, 64::SMALLINT, 54::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:30', '10 minutes');
CALL registerDuel(4::SMALLINT, 3::SMALLINT, 67::SMALLINT, 23::SMALLINT, 54::SMALLINT, 23::SMALLINT);

/*Tournoi #4*/
/*Création du juge*/
CALL createPersonne('Plott', 'Angela', 'Lausanne');
CALL createJugeFromPersonne(68::SMALLINT, 3::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(68::SMALLINT, 4::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(40::SMALLINT, 4::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(19::SMALLINT, 4::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(22::SMALLINT, 4::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(30::SMALLINT, 4::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(64::SMALLINT, 4::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(54::SMALLINT, 4::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(44::SMALLINT, 4::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(21::SMALLINT, 4::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*Création des manches et duels*/
CALL registerManche(4::SMALLINT, '2021-12-06 10:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 40::SMALLINT, 19::SMALLINT, 40::SMALLINT);
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 22::SMALLINT, 30::SMALLINT, 22::SMALLINT);
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 64::SMALLINT, 54::SMALLINT, 64::SMALLINT);
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 44::SMALLINT, 21::SMALLINT, 44::SMALLINT);
CALL registerManche(4::SMALLINT, '2021-12-06 10:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 4::SMALLINT, 68::SMALLINT, 40::SMALLINT, 22::SMALLINT, 40::SMALLINT);
CALL registerDuel(2::SMALLINT, 4::SMALLINT, 68::SMALLINT, 64::SMALLINT, 44::SMALLINT, 64::SMALLINT);
CALL registerManche(4::SMALLINT, '2021-12-06 10:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 4::SMALLINT, 68::SMALLINT, 40::SMALLINT, 64::SMALLINT, 40::SMALLINT);

/*Tournoi #5*/
/*Création du juge*/
CALL createPersonne('Robbins', 'Steven', 'Paris');
CALL createJugeFromPersonne(69::SMALLINT, 1::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(69::SMALLINT, 5::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(44::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(49::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(55::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(1::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(5::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(57::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(39::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(63::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(43::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(25::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(21::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(27::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(59::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(58::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(3::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(22::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(41::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(13::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(30::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(2::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(20::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(38::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(28::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(6::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(11::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(14::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL registerManche(5::SMALLINT, '2022-03-30 12:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 44::SMALLINT, 49::SMALLINT, 44::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 55::SMALLINT, 1::SMALLINT, 55::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 5::SMALLINT, 57::SMALLINT, 5::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 39::SMALLINT, 9::SMALLINT, 39::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 63::SMALLINT, 60::SMALLINT, 63::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 43::SMALLINT, 25::SMALLINT, 43::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 21::SMALLINT, 27::SMALLINT, 21::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 59::SMALLINT, 58::SMALLINT, 59::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 53::SMALLINT, 3::SMALLINT, 53::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 32::SMALLINT, 22::SMALLINT, 32::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 41::SMALLINT, 54::SMALLINT, 41::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 13::SMALLINT, 30::SMALLINT, 13::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 2::SMALLINT, 20::SMALLINT, 2::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 38::SMALLINT, 28::SMALLINT, 38::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 6::SMALLINT, 17::SMALLINT, 6::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 11::SMALLINT, 14::SMALLINT, 11::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 44::SMALLINT, 55::SMALLINT, 44::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 5::SMALLINT, 39::SMALLINT, 5::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 63::SMALLINT, 43::SMALLINT, 63::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 21::SMALLINT, 59::SMALLINT, 21::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 53::SMALLINT, 32::SMALLINT, 53::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 41::SMALLINT, 13::SMALLINT, 41::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 2::SMALLINT, 38::SMALLINT, 2::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 6::SMALLINT, 11::SMALLINT, 6::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 44::SMALLINT, 5::SMALLINT, 44::SMALLINT);
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 63::SMALLINT, 21::SMALLINT, 63::SMALLINT);
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 53::SMALLINT, 41::SMALLINT, 53::SMALLINT);
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 2::SMALLINT, 6::SMALLINT, 2::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:30', '10 minutes');
CALL registerDuel(4::SMALLINT, 5::SMALLINT, 69::SMALLINT, 44::SMALLINT, 63::SMALLINT, 44::SMALLINT);
CALL registerDuel(4::SMALLINT, 5::SMALLINT, 69::SMALLINT, 53::SMALLINT, 2::SMALLINT, 53::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:40', '10 minutes');
CALL registerDuel(5::SMALLINT, 5::SMALLINT, 69::SMALLINT, 44::SMALLINT, 53::SMALLINT, 44::SMALLINT);

/*Tournoi #6*/
/*Création du juge*/
CALL createPersonne('Llamas', 'Janet', 'Paris');
CALL createJugeFromPersonne(70::SMALLINT, 3::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(70::SMALLINT, 6::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(17::SMALLINT, 6::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(24::SMALLINT, 6::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(49::SMALLINT, 6::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(10::SMALLINT, 6::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(20::SMALLINT, 6::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(27::SMALLINT, 6::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(57::SMALLINT, 6::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(32::SMALLINT, 6::SMALLINT, 'Faso'::TEXT, '
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
CALL registerManche(6::SMALLINT, '2022-04-30 12:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 17::SMALLINT, 24::SMALLINT, 17::SMALLINT);
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 49::SMALLINT, 10::SMALLINT, 49::SMALLINT);
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 20::SMALLINT, 27::SMALLINT, 20::SMALLINT);
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 57::SMALLINT, 32::SMALLINT, 57::SMALLINT);
CALL registerManche(6::SMALLINT, '2022-04-30 12:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 6::SMALLINT, 70::SMALLINT, 17::SMALLINT, 49::SMALLINT, 17::SMALLINT);
CALL registerDuel(2::SMALLINT, 6::SMALLINT, 70::SMALLINT, 20::SMALLINT, 57::SMALLINT, 20::SMALLINT);
CALL registerManche(6::SMALLINT, '2022-04-30 12:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 6::SMALLINT, 70::SMALLINT, 17::SMALLINT, 20::SMALLINT, 17::SMALLINT);

/*Tournoi #7*/
/*Création du juge*/
CALL createPersonne('Ottrix', 'Stephanie', 'Paris');
CALL createJugeFromPersonne(71::SMALLINT, 3::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(71::SMALLINT, 7::SMALLINT);

/*Assignation des decks*/
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
CALL createParticipantFromPersonne(63::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(64::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(28::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(53::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(58::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(46::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(9::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(11::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(48::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(7::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(13::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(27::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(56::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(20::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(49::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(6::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(59::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(42::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(14::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(24::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
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
CALL createParticipantFromPersonne(44::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(31::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(22::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(41::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(61::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(47::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(1::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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

/*Création des manches et duels*/
CALL registerManche(7::SMALLINT, '2022-02-08 08:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 12::SMALLINT, 63::SMALLINT, 12::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 25::SMALLINT, 10::SMALLINT, 25::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 64::SMALLINT, 28::SMALLINT, 64::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 53::SMALLINT, 58::SMALLINT, 53::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 46::SMALLINT, 9::SMALLINT, 46::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 11::SMALLINT, 48::SMALLINT, 11::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 7::SMALLINT, 13::SMALLINT, 7::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 27::SMALLINT, 56::SMALLINT, 27::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 20::SMALLINT, 49::SMALLINT, 20::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 6::SMALLINT, 59::SMALLINT, 6::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 42::SMALLINT, 14::SMALLINT, 42::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 24::SMALLINT, 60::SMALLINT, 24::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 44::SMALLINT, 31::SMALLINT, 44::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 22::SMALLINT, 41::SMALLINT, 22::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 61::SMALLINT, 47::SMALLINT, 61::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 1::SMALLINT, 40::SMALLINT, 1::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 12::SMALLINT, 25::SMALLINT, 12::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 64::SMALLINT, 53::SMALLINT, 64::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 46::SMALLINT, 11::SMALLINT, 46::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 7::SMALLINT, 27::SMALLINT, 7::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 20::SMALLINT, 6::SMALLINT, 20::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 42::SMALLINT, 24::SMALLINT, 42::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 44::SMALLINT, 22::SMALLINT, 44::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 61::SMALLINT, 1::SMALLINT, 61::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 12::SMALLINT, 64::SMALLINT, 12::SMALLINT);
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 46::SMALLINT, 7::SMALLINT, 46::SMALLINT);
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 20::SMALLINT, 42::SMALLINT, 20::SMALLINT);
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 44::SMALLINT, 61::SMALLINT, 44::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:30', '10 minutes');
CALL registerDuel(4::SMALLINT, 7::SMALLINT, 71::SMALLINT, 12::SMALLINT, 46::SMALLINT, 12::SMALLINT);
CALL registerDuel(4::SMALLINT, 7::SMALLINT, 71::SMALLINT, 20::SMALLINT, 44::SMALLINT, 20::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:40', '10 minutes');
CALL registerDuel(5::SMALLINT, 7::SMALLINT, 71::SMALLINT, 12::SMALLINT, 20::SMALLINT, 12::SMALLINT);

/*Tournoi #8*/
/*Création du juge*/
CALL createPersonne('Nastasi', 'Forrest', 'Bienne');
CALL createJugeFromPersonne(72::SMALLINT, 1::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(72::SMALLINT, 8::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(51::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(14::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(59::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(63::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(47::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(22::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(43::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(28::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(23::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(60::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(45::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(61::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(21::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(16::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(32::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL registerManche(8::SMALLINT, '2022-04-01 10:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 51::SMALLINT, 14::SMALLINT, 51::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 59::SMALLINT, 41::SMALLINT, 59::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 63::SMALLINT, 47::SMALLINT, 63::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 22::SMALLINT, 43::SMALLINT, 22::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 28::SMALLINT, 23::SMALLINT, 28::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 60::SMALLINT, 45::SMALLINT, 60::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 61::SMALLINT, 21::SMALLINT, 61::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 16::SMALLINT, 32::SMALLINT, 16::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 51::SMALLINT, 59::SMALLINT, 51::SMALLINT);
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 63::SMALLINT, 22::SMALLINT, 63::SMALLINT);
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 28::SMALLINT, 60::SMALLINT, 28::SMALLINT);
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 61::SMALLINT, 16::SMALLINT, 61::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 8::SMALLINT, 72::SMALLINT, 51::SMALLINT, 63::SMALLINT, 51::SMALLINT);
CALL registerDuel(3::SMALLINT, 8::SMALLINT, 72::SMALLINT, 28::SMALLINT, 61::SMALLINT, 28::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:30', '10 minutes');
CALL registerDuel(4::SMALLINT, 8::SMALLINT, 72::SMALLINT, 51::SMALLINT, 28::SMALLINT, 51::SMALLINT);

/*Tournoi #9*/
/*Création du juge*/
CALL createPersonne('Wilkins', 'Amanda', 'Fribourg');
CALL createJugeFromPersonne(73::SMALLINT, 2::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(73::SMALLINT, 9::SMALLINT);

/*Assignation des decks*/
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
CALL createParticipantFromPersonne(64::SMALLINT, 9::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(19::SMALLINT, 9::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(41::SMALLINT, 9::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(21::SMALLINT, 9::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(9::SMALLINT, 9::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(60::SMALLINT, 9::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(62::SMALLINT, 9::SMALLINT, 'Faso'::TEXT, '
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
CALL registerManche(9::SMALLINT, '2022-02-28 06:30', '10 minutes');
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 50::SMALLINT, 64::SMALLINT, 50::SMALLINT);
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 19::SMALLINT, 41::SMALLINT, 19::SMALLINT);
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 21::SMALLINT, 9::SMALLINT, 21::SMALLINT);
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 60::SMALLINT, 62::SMALLINT, 60::SMALLINT);
CALL registerManche(9::SMALLINT, '2022-02-28 06:40', '10 minutes');
CALL registerDuel(2::SMALLINT, 9::SMALLINT, 73::SMALLINT, 50::SMALLINT, 19::SMALLINT, 50::SMALLINT);
CALL registerDuel(2::SMALLINT, 9::SMALLINT, 73::SMALLINT, 21::SMALLINT, 60::SMALLINT, 21::SMALLINT);
CALL registerManche(9::SMALLINT, '2022-02-28 06:50', '10 minutes');
CALL registerDuel(3::SMALLINT, 9::SMALLINT, 73::SMALLINT, 50::SMALLINT, 21::SMALLINT, 50::SMALLINT);

/*Tournoi #10*/
/*Création du juge*/
CALL createPersonne('Harris', 'Betsy', 'Sarcelles');
CALL createJugeFromPersonne(74::SMALLINT, 1::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(74::SMALLINT, 10::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(14::SMALLINT, 10::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(37::SMALLINT, 10::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(22::SMALLINT, 10::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(9::SMALLINT, 10::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(1::SMALLINT, 10::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(55::SMALLINT, 10::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(61::SMALLINT, 10::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(8::SMALLINT, 10::SMALLINT, 'Faso'::TEXT, '
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
CALL registerManche(10::SMALLINT, '2022-07-03 10:00', '10 minutes');
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 14::SMALLINT, 37::SMALLINT, 14::SMALLINT);
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 22::SMALLINT, 9::SMALLINT, 22::SMALLINT);
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 1::SMALLINT, 55::SMALLINT, 1::SMALLINT);
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 61::SMALLINT, 8::SMALLINT, 61::SMALLINT);
CALL registerManche(10::SMALLINT, '2022-07-03 10:10', '10 minutes');
CALL registerDuel(2::SMALLINT, 10::SMALLINT, 74::SMALLINT, 14::SMALLINT, 22::SMALLINT, 14::SMALLINT);
CALL registerDuel(2::SMALLINT, 10::SMALLINT, 74::SMALLINT, 1::SMALLINT, 61::SMALLINT, 1::SMALLINT);
CALL registerManche(10::SMALLINT, '2022-07-03 10:20', '10 minutes');
CALL registerDuel(3::SMALLINT, 10::SMALLINT, 74::SMALLINT, 14::SMALLINT, 1::SMALLINT, 14::SMALLINT);

