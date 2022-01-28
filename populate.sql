/*Création des joueurs*/
CALL createMembre('Guillory', 'Tammy', 'Lausanne');
CALL createMembre('Livingston', 'Leah', 'Kyiv');
CALL createMembre('Kimple', 'Emanuel', 'Yverdon-les-Bains');
CALL createMembre('Murray', 'Blanca', 'Yverdon-les-Bains');
CALL createMembre('Edwards', 'Manuel', 'Yverdon-les-Bains');
CALL createMembre('Daughtery', 'Edith', 'Sarcelles');
CALL createMembre('Hughes', 'Consuelo', 'Yverdon-les-Bains');
CALL createMembre('Sloan', 'Doris', 'Bienne');
CALL createMembre('Fuson', 'Robert', 'Fribourg');
CALL createMembre('King', 'Kenneth', 'Yverdon-les-Bains');
CALL createMembre('Branch', 'Erica', 'Yverdon-les-Bains');
CALL createMembre('Ayers', 'Kimberly', 'Fribourg');
CALL createMembre('Hopkins', 'Ruben', 'Sion');
CALL createMembre('Stansbury', 'Amber', 'Paris');
CALL createMembre('Walker', 'Devin', 'Yverdon-les-Bains');
CALL createMembre('Williams', 'Shawn', 'Sarcelles');
CALL createMembre('Allender', 'Joshua', 'Bienne');
CALL createMembre('Nicholson', 'Janet', 'Sarcelles');
CALL createMembre('Renken', 'Kim', 'Yverdon-les-Bains');
CALL createMembre('Cole', 'Jennifer', 'Lausanne');
CALL createMembre('Jensen', 'Olive', 'Sarcelles');
CALL createMembre('Jones', 'Salvatore', 'Sarcelles');
CALL createMembre('Knight', 'David', 'Fribourg');
CALL createMembre('Jones', 'Jim', 'Sion');
CALL createMembre('Durant', 'Walter', 'Paris');
CALL createMembre('Diekmann', 'Mark', 'Yverdon-les-Bains');
CALL createMembre('Morin', 'Ollie', 'Paris');
CALL createMembre('Barbieri', 'Randy', 'Yverdon-les-Bains');
CALL createMembre('Simpson', 'Larry', 'Yverdon-les-Bains');
CALL createMembre('Watts', 'Dorothy', 'Kyiv');
CALL createMembre('Odell', 'Erin', 'Sarcelles');
CALL createMembre('Allen', 'Leonard', 'Kyiv');
CALL createMembre('Mathis', 'Elwood', 'Yverdon-les-Bains');
CALL createMembre('Freese', 'Teresa', 'Yverdon-les-Bains');
CALL createMembre('Mingus', 'Mary', 'Yverdon-les-Bains');
CALL createMembre('Mccoy', 'Bo', 'Sion');
CALL createMembre('Yap', 'Calvin', 'Yverdon-les-Bains');
CALL createMembre('Allen', 'Michael', 'Lausanne');
CALL createMembre('Campbell', 'Deloris', 'Paris');
CALL createMembre('Johnson', 'Fred', 'Sion');
CALL createMembre('Nicley', 'Raymond', 'Sion');
CALL createMembre('Shea', 'James', 'Kyiv');
CALL createMembre('Nelson', 'Peter', 'Bienne');
CALL createMembre('Garner', 'Willie', 'Sion');
CALL createMembre('Price', 'Virginia', 'Sion');
CALL createMembre('Menzel', 'Patricia', 'Bienne');
CALL createMembre('Vasquez', 'Renato', 'Yverdon-les-Bains');
CALL createMembre('Steele', 'Bobbi', 'Fribourg');
CALL createMembre('Niese', 'Frank', 'Kyiv');
CALL createMembre('Biederman', 'Morgan', 'Sarcelles');
CALL createMembre('Robertson', 'Bryan', 'Bienne');
CALL createMembre('Brucculeri', 'Carl', 'Kyiv');
CALL createMembre('Trevino', 'Dustin', 'Sion');
CALL createMembre('Roddy', 'Corey', 'Kyiv');
CALL createMembre('Lattimore', 'Melodie', 'Sarcelles');
CALL createMembre('Forde', 'Marci', 'Sarcelles');
CALL createMembre('Beaushaw', 'Arthur', 'Yverdon-les-Bains');
CALL createMembre('Robertson', 'Luis', 'Fribourg');
CALL createMembre('Cobb', 'Irving', 'Paris');
CALL createMembre('Bienenstock', 'Vivian', 'Sarcelles');
CALL createMembre('Diaz', 'Francis', 'Bienne');
CALL createMembre('Hurst', 'Latonia', 'Yverdon-les-Bains');
CALL createMembre('Thomas', 'Sally', 'Yverdon-les-Bains');
CALL createMembre('Sullivan', 'Doug', 'Paris');

/*Peuplage des tournois */

/**Tournoi #1**/

/*Création d'un juge débutant'*/
CALL createMembre('Miller', 'Eric', 'Sion');
CALL createJugeFromPersonne(65::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(65::SMALLINT, 1::SMALLINT);

/*Création des juges dont un organisateur*/
CALL createMembre('Soukup', 'Keith', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(66::SMALLINT, 459::SMALLINT);
CALL assignJudgeToTournoi(66::SMALLINT, 1::SMALLINT);
CALL assignJudgeAsOrganisateur(66::SMALLINT, 1::SMALLINT);

CALL createMembre('Schrader', 'Carol', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(67::SMALLINT, 275::SMALLINT);
CALL assignJudgeToTournoi(67::SMALLINT, 1::SMALLINT);
CALL createMembre('North', 'James', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(68::SMALLINT, 227::SMALLINT);
CALL assignJudgeToTournoi(68::SMALLINT, 1::SMALLINT);
CALL createMembre('Logsdon', 'Nathaniel', 'Fribourg');
CALL createJugeFromPersonne(69::SMALLINT, 222::SMALLINT);
CALL assignJudgeToTournoi(69::SMALLINT, 1::SMALLINT);

/*Assignation des decks*/
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
CALL createParticipantFromPersonne(13::SMALLINT, 1::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(30::SMALLINT, 1::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(8::SMALLINT, 1::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(47::SMALLINT, 1::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(61::SMALLINT, 1::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(59::SMALLINT, 1::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(39::SMALLINT, 1::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 66::SMALLINT, 18::SMALLINT, 13::SMALLINT, 18::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 69::SMALLINT, 30::SMALLINT, 8::SMALLINT, 30::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 67::SMALLINT, 47::SMALLINT, 61::SMALLINT, 47::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 68::SMALLINT, 59::SMALLINT, 39::SMALLINT, 59::SMALLINT);
CALL registerManche(1::SMALLINT, '2022-09-11 06:12', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 1::SMALLINT, 66::SMALLINT, 18::SMALLINT, 30::SMALLINT, 18::SMALLINT);
CALL registerDuel(2::SMALLINT, 1::SMALLINT, 69::SMALLINT, 47::SMALLINT, 59::SMALLINT, 47::SMALLINT);
CALL registerManche(1::SMALLINT, '2022-09-11 06:24', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 1::SMALLINT, 69::SMALLINT, 18::SMALLINT, 47::SMALLINT, 18::SMALLINT);

/**Tournoi #2**/

/*Création d'un juge débutant'*/
CALL createMembre('Davis', 'Jennifer', 'Bienne');
CALL createJugeFromPersonne(70::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(70::SMALLINT, 2::SMALLINT);

/*Création des juges dont un organisateur*/
CALL createMembre('Bettencourt', 'Lorena', 'Lausanne');
CALL createJugeFromPersonne(71::SMALLINT, 255::SMALLINT);
CALL assignJudgeToTournoi(71::SMALLINT, 2::SMALLINT);
CALL assignJudgeAsOrganisateur(71::SMALLINT, 2::SMALLINT);

CALL createMembre('Owens', 'Helen', 'Bienne');
CALL createJugeFromPersonne(72::SMALLINT, 411::SMALLINT);
CALL assignJudgeToTournoi(72::SMALLINT, 2::SMALLINT);
CALL createMembre('Hunsinger', 'Eric', 'Sarcelles');
CALL createJugeFromPersonne(73::SMALLINT, 399::SMALLINT);
CALL assignJudgeToTournoi(73::SMALLINT, 2::SMALLINT);
CALL createMembre('Dixon', 'John', 'Sion');
CALL createJugeFromPersonne(74::SMALLINT, 324::SMALLINT);
CALL assignJudgeToTournoi(74::SMALLINT, 2::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(59::SMALLINT, 2::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(51::SMALLINT, 2::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(27::SMALLINT, 2::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(22::SMALLINT, 2::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(57::SMALLINT, 2::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(41::SMALLINT, 2::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(19::SMALLINT, 2::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(14::SMALLINT, 2::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL registerManche(2::SMALLINT, '2022-01-20 12:00', INTERVAL '10m');
CALL registerDuel(4::SMALLINT, 2::SMALLINT, 72::SMALLINT, 59::SMALLINT, 51::SMALLINT, 59::SMALLINT);
CALL registerDuel(4::SMALLINT, 2::SMALLINT, 73::SMALLINT, 27::SMALLINT, 22::SMALLINT, 27::SMALLINT);
CALL registerDuel(4::SMALLINT, 2::SMALLINT, 73::SMALLINT, 57::SMALLINT, 41::SMALLINT, 57::SMALLINT);
CALL registerDuel(4::SMALLINT, 2::SMALLINT, 72::SMALLINT, 19::SMALLINT, 14::SMALLINT, 19::SMALLINT);
CALL registerManche(2::SMALLINT, '2022-01-20 12:12', INTERVAL '10m');
CALL registerDuel(5::SMALLINT, 2::SMALLINT, 74::SMALLINT, 59::SMALLINT, 27::SMALLINT, 59::SMALLINT);
CALL registerDuel(5::SMALLINT, 2::SMALLINT, 72::SMALLINT, 57::SMALLINT, 19::SMALLINT, 57::SMALLINT);
CALL registerManche(2::SMALLINT, '2022-01-20 12:24', INTERVAL '10m');
CALL registerDuel(6::SMALLINT, 2::SMALLINT, 72::SMALLINT, 59::SMALLINT, 57::SMALLINT, 59::SMALLINT);

/**Tournoi #3**/

/*Création d'un juge débutant'*/
CALL createMembre('Tuley', 'Deborah', 'Kyiv');
CALL createJugeFromPersonne(75::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(75::SMALLINT, 3::SMALLINT);

/*Création des juges dont un organisateur*/
CALL createMembre('Martinez', 'Joseph', 'Paris');
CALL createJugeFromPersonne(76::SMALLINT, 430::SMALLINT);
CALL assignJudgeToTournoi(76::SMALLINT, 3::SMALLINT);
CALL assignJudgeAsOrganisateur(76::SMALLINT, 3::SMALLINT);

CALL createMembre('Lo', 'Virginia', 'Kyiv');
CALL createJugeFromPersonne(77::SMALLINT, 269::SMALLINT);
CALL assignJudgeToTournoi(77::SMALLINT, 3::SMALLINT);
CALL createMembre('Kolling', 'Rose', 'Lausanne');
CALL createJugeFromPersonne(78::SMALLINT, 299::SMALLINT);
CALL assignJudgeToTournoi(78::SMALLINT, 3::SMALLINT);
CALL createMembre('Carter', 'Angel', 'Fribourg');
CALL createJugeFromPersonne(79::SMALLINT, 264::SMALLINT);
CALL assignJudgeToTournoi(79::SMALLINT, 3::SMALLINT);
CALL createMembre('Huynh', 'Jerome', 'Sarcelles');
CALL createJugeFromPersonne(80::SMALLINT, 241::SMALLINT);
CALL assignJudgeToTournoi(80::SMALLINT, 3::SMALLINT);
CALL createMembre('Williams', 'Brian', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(81::SMALLINT, 346::SMALLINT);
CALL assignJudgeToTournoi(81::SMALLINT, 3::SMALLINT);
CALL createMembre('Freeman', 'Henry', 'Sion');
CALL createJugeFromPersonne(82::SMALLINT, 333::SMALLINT);
CALL assignJudgeToTournoi(82::SMALLINT, 3::SMALLINT);
CALL createMembre('Mason', 'Dwight', 'Lausanne');
CALL createJugeFromPersonne(83::SMALLINT, 309::SMALLINT);
CALL assignJudgeToTournoi(83::SMALLINT, 3::SMALLINT);

/*Assignation des decks*/
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
CALL createParticipantFromPersonne(29::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(48::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(28::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(15::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(45::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(44::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(35::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(47::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(19::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(21::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
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

/*Création des manches et duels*/
CALL registerManche(3::SMALLINT, '2022-06-01 10:00', INTERVAL '10m');
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 78::SMALLINT, 3::SMALLINT, 29::SMALLINT, 3::SMALLINT);
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 78::SMALLINT, 58::SMALLINT, 48::SMALLINT, 58::SMALLINT);
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 83::SMALLINT, 12::SMALLINT, 28::SMALLINT, 12::SMALLINT);
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 83::SMALLINT, 15::SMALLINT, 45::SMALLINT, 15::SMALLINT);
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 83::SMALLINT, 44::SMALLINT, 16::SMALLINT, 44::SMALLINT);
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 77::SMALLINT, 35::SMALLINT, 47::SMALLINT, 35::SMALLINT);
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 81::SMALLINT, 19::SMALLINT, 21::SMALLINT, 19::SMALLINT);
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 81::SMALLINT, 39::SMALLINT, 18::SMALLINT, 39::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:12', INTERVAL '10m');
CALL registerDuel(8::SMALLINT, 3::SMALLINT, 82::SMALLINT, 3::SMALLINT, 58::SMALLINT, 3::SMALLINT);
CALL registerDuel(8::SMALLINT, 3::SMALLINT, 83::SMALLINT, 12::SMALLINT, 15::SMALLINT, 12::SMALLINT);
CALL registerDuel(8::SMALLINT, 3::SMALLINT, 76::SMALLINT, 44::SMALLINT, 35::SMALLINT, 44::SMALLINT);
CALL registerDuel(8::SMALLINT, 3::SMALLINT, 76::SMALLINT, 19::SMALLINT, 39::SMALLINT, 19::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:24', INTERVAL '10m');
CALL registerDuel(9::SMALLINT, 3::SMALLINT, 78::SMALLINT, 3::SMALLINT, 12::SMALLINT, 3::SMALLINT);
CALL registerDuel(9::SMALLINT, 3::SMALLINT, 83::SMALLINT, 44::SMALLINT, 19::SMALLINT, 44::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:36', INTERVAL '10m');
CALL registerDuel(10::SMALLINT, 3::SMALLINT, 83::SMALLINT, 3::SMALLINT, 44::SMALLINT, 3::SMALLINT);

/**Tournoi #4**/

/*Création d'un juge débutant'*/
CALL createMembre('Peyser', 'John', 'Kyiv');
CALL createJugeFromPersonne(84::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(84::SMALLINT, 4::SMALLINT);

/*Création des juges dont un organisateur*/
CALL createMembre('Burke', 'Blanca', 'Lausanne');
CALL createJugeFromPersonne(85::SMALLINT, 203::SMALLINT);
CALL assignJudgeToTournoi(85::SMALLINT, 4::SMALLINT);
CALL assignJudgeAsOrganisateur(85::SMALLINT, 4::SMALLINT);

CALL createMembre('Porter', 'Jennifer', 'Paris');
CALL createJugeFromPersonne(86::SMALLINT, 396::SMALLINT);
CALL assignJudgeToTournoi(86::SMALLINT, 4::SMALLINT);
CALL createMembre('Anderson', 'Carey', 'Lausanne');
CALL createJugeFromPersonne(87::SMALLINT, 492::SMALLINT);
CALL assignJudgeToTournoi(87::SMALLINT, 4::SMALLINT);
CALL createMembre('Sanders', 'Leo', 'Paris');
CALL createJugeFromPersonne(88::SMALLINT, 204::SMALLINT);
CALL assignJudgeToTournoi(88::SMALLINT, 4::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(61::SMALLINT, 4::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(59::SMALLINT, 4::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(10::SMALLINT, 4::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(52::SMALLINT, 4::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(39::SMALLINT, 4::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(63::SMALLINT, 4::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(25::SMALLINT, 4::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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

/*Création des manches et duels*/
CALL registerManche(4::SMALLINT, '2021-12-06 10:00', INTERVAL '10m');
CALL registerDuel(11::SMALLINT, 4::SMALLINT, 85::SMALLINT, 61::SMALLINT, 59::SMALLINT, 61::SMALLINT);
CALL registerDuel(11::SMALLINT, 4::SMALLINT, 85::SMALLINT, 10::SMALLINT, 52::SMALLINT, 10::SMALLINT);
CALL registerDuel(11::SMALLINT, 4::SMALLINT, 87::SMALLINT, 39::SMALLINT, 63::SMALLINT, 39::SMALLINT);
CALL registerDuel(11::SMALLINT, 4::SMALLINT, 88::SMALLINT, 25::SMALLINT, 54::SMALLINT, 25::SMALLINT);
CALL registerManche(4::SMALLINT, '2021-12-06 10:12', INTERVAL '10m');
CALL registerDuel(12::SMALLINT, 4::SMALLINT, 87::SMALLINT, 61::SMALLINT, 10::SMALLINT, 61::SMALLINT);
CALL registerDuel(12::SMALLINT, 4::SMALLINT, 87::SMALLINT, 39::SMALLINT, 25::SMALLINT, 39::SMALLINT);
CALL registerManche(4::SMALLINT, '2021-12-06 10:24', INTERVAL '10m');
CALL registerDuel(13::SMALLINT, 4::SMALLINT, 85::SMALLINT, 61::SMALLINT, 39::SMALLINT, 61::SMALLINT);

/**Tournoi #5**/

/*Création d'un juge débutant'*/
CALL createMembre('Gauldin', 'Gary', 'Sarcelles');
CALL createJugeFromPersonne(89::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(89::SMALLINT, 5::SMALLINT);

/*Création des juges dont un organisateur*/
CALL createMembre('Adam', 'Jerry', 'Bienne');
CALL createJugeFromPersonne(90::SMALLINT, 288::SMALLINT);
CALL assignJudgeToTournoi(90::SMALLINT, 5::SMALLINT);
CALL assignJudgeAsOrganisateur(90::SMALLINT, 5::SMALLINT);

CALL createMembre('Hargett', 'Harold', 'Lausanne');
CALL createJugeFromPersonne(91::SMALLINT, 281::SMALLINT);
CALL assignJudgeToTournoi(91::SMALLINT, 5::SMALLINT);
CALL createMembre('Hudson', 'Shirley', 'Fribourg');
CALL createJugeFromPersonne(92::SMALLINT, 396::SMALLINT);
CALL assignJudgeToTournoi(92::SMALLINT, 5::SMALLINT);
CALL createMembre('Cardella', 'Willis', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(93::SMALLINT, 353::SMALLINT);
CALL assignJudgeToTournoi(93::SMALLINT, 5::SMALLINT);
CALL createMembre('Melcher', 'Esther', 'Lausanne');
CALL createJugeFromPersonne(94::SMALLINT, 418::SMALLINT);
CALL assignJudgeToTournoi(94::SMALLINT, 5::SMALLINT);
CALL createMembre('Braxton', 'Karen', 'Kyiv');
CALL createJugeFromPersonne(95::SMALLINT, 228::SMALLINT);
CALL assignJudgeToTournoi(95::SMALLINT, 5::SMALLINT);
CALL createMembre('Clemens', 'Jacqueline', 'Sion');
CALL createJugeFromPersonne(96::SMALLINT, 405::SMALLINT);
CALL assignJudgeToTournoi(96::SMALLINT, 5::SMALLINT);
CALL createMembre('Ketchie', 'Jackie', 'Fribourg');
CALL createJugeFromPersonne(97::SMALLINT, 441::SMALLINT);
CALL assignJudgeToTournoi(97::SMALLINT, 5::SMALLINT);
CALL createMembre('Driggers', 'Doyle', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(98::SMALLINT, 405::SMALLINT);
CALL assignJudgeToTournoi(98::SMALLINT, 5::SMALLINT);
CALL createMembre('Mckeeman', 'Sylvia', 'Bienne');
CALL createJugeFromPersonne(99::SMALLINT, 262::SMALLINT);
CALL assignJudgeToTournoi(99::SMALLINT, 5::SMALLINT);
CALL createMembre('Lussier', 'James', 'Lausanne');
CALL createJugeFromPersonne(100::SMALLINT, 350::SMALLINT);
CALL assignJudgeToTournoi(100::SMALLINT, 5::SMALLINT);
CALL createMembre('Newsome', 'Alfred', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(101::SMALLINT, 264::SMALLINT);
CALL assignJudgeToTournoi(101::SMALLINT, 5::SMALLINT);
CALL createMembre('Lemle', 'Miles', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(102::SMALLINT, 414::SMALLINT);
CALL assignJudgeToTournoi(102::SMALLINT, 5::SMALLINT);
CALL createMembre('Boney', 'Eileen', 'Sion');
CALL createJugeFromPersonne(103::SMALLINT, 336::SMALLINT);
CALL assignJudgeToTournoi(103::SMALLINT, 5::SMALLINT);
CALL createMembre('James', 'Shannon', 'Paris');
CALL createJugeFromPersonne(104::SMALLINT, 391::SMALLINT);
CALL assignJudgeToTournoi(104::SMALLINT, 5::SMALLINT);
CALL createMembre('Letchworth', 'Barbara', 'Lausanne');
CALL createJugeFromPersonne(105::SMALLINT, 273::SMALLINT);
CALL assignJudgeToTournoi(105::SMALLINT, 5::SMALLINT);

/*Assignation des decks*/
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
CALL createParticipantFromPersonne(17::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(19::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(14::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(50::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(34::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(53::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(61::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(39::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(42::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(8::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(16::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(12::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(40::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(59::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(13::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(62::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(20::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(27::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(36::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(41::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(48::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(33::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(28::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(11::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(46::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 104::SMALLINT, 25::SMALLINT, 21::SMALLINT, 25::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 100::SMALLINT, 17::SMALLINT, 19::SMALLINT, 17::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 100::SMALLINT, 14::SMALLINT, 24::SMALLINT, 14::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 94::SMALLINT, 50::SMALLINT, 34::SMALLINT, 50::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 101::SMALLINT, 53::SMALLINT, 61::SMALLINT, 53::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 98::SMALLINT, 39::SMALLINT, 6::SMALLINT, 39::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 92::SMALLINT, 42::SMALLINT, 8::SMALLINT, 42::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 104::SMALLINT, 16::SMALLINT, 12::SMALLINT, 16::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 104::SMALLINT, 40::SMALLINT, 59::SMALLINT, 40::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 93::SMALLINT, 13::SMALLINT, 62::SMALLINT, 13::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 102::SMALLINT, 20::SMALLINT, 27::SMALLINT, 20::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 102::SMALLINT, 36::SMALLINT, 41::SMALLINT, 36::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 97::SMALLINT, 63::SMALLINT, 48::SMALLINT, 63::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 94::SMALLINT, 33::SMALLINT, 29::SMALLINT, 33::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 99::SMALLINT, 28::SMALLINT, 38::SMALLINT, 28::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 95::SMALLINT, 11::SMALLINT, 46::SMALLINT, 11::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:12', INTERVAL '10m');
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 95::SMALLINT, 25::SMALLINT, 17::SMALLINT, 25::SMALLINT);
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 100::SMALLINT, 14::SMALLINT, 50::SMALLINT, 14::SMALLINT);
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 94::SMALLINT, 53::SMALLINT, 39::SMALLINT, 53::SMALLINT);
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 105::SMALLINT, 42::SMALLINT, 16::SMALLINT, 42::SMALLINT);
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 104::SMALLINT, 40::SMALLINT, 13::SMALLINT, 40::SMALLINT);
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 96::SMALLINT, 20::SMALLINT, 36::SMALLINT, 20::SMALLINT);
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 91::SMALLINT, 63::SMALLINT, 33::SMALLINT, 63::SMALLINT);
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 95::SMALLINT, 28::SMALLINT, 11::SMALLINT, 28::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:24', INTERVAL '10m');
CALL registerDuel(16::SMALLINT, 5::SMALLINT, 103::SMALLINT, 25::SMALLINT, 14::SMALLINT, 25::SMALLINT);
CALL registerDuel(16::SMALLINT, 5::SMALLINT, 101::SMALLINT, 53::SMALLINT, 42::SMALLINT, 53::SMALLINT);
CALL registerDuel(16::SMALLINT, 5::SMALLINT, 97::SMALLINT, 40::SMALLINT, 20::SMALLINT, 40::SMALLINT);
CALL registerDuel(16::SMALLINT, 5::SMALLINT, 93::SMALLINT, 63::SMALLINT, 28::SMALLINT, 63::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:36', INTERVAL '10m');
CALL registerDuel(17::SMALLINT, 5::SMALLINT, 91::SMALLINT, 25::SMALLINT, 53::SMALLINT, 25::SMALLINT);
CALL registerDuel(17::SMALLINT, 5::SMALLINT, 93::SMALLINT, 40::SMALLINT, 63::SMALLINT, 40::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:48', INTERVAL '10m');
CALL registerDuel(18::SMALLINT, 5::SMALLINT, 101::SMALLINT, 25::SMALLINT, 40::SMALLINT, 25::SMALLINT);

/**Tournoi #6**/

/*Création d'un juge débutant'*/
CALL createMembre('Runyan', 'Kelvin', 'Paris');
CALL createJugeFromPersonne(106::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(106::SMALLINT, 6::SMALLINT);

/*Création des juges dont un organisateur*/
CALL createMembre('Roth', 'Troy', 'Bienne');
CALL createJugeFromPersonne(107::SMALLINT, 455::SMALLINT);
CALL assignJudgeToTournoi(107::SMALLINT, 6::SMALLINT);
CALL assignJudgeAsOrganisateur(107::SMALLINT, 6::SMALLINT);

CALL createMembre('Martinez', 'William', 'Lausanne');
CALL createJugeFromPersonne(108::SMALLINT, 445::SMALLINT);
CALL assignJudgeToTournoi(108::SMALLINT, 6::SMALLINT);
CALL createMembre('Mendoza', 'Casey', 'Fribourg');
CALL createJugeFromPersonne(109::SMALLINT, 433::SMALLINT);
CALL assignJudgeToTournoi(109::SMALLINT, 6::SMALLINT);
CALL createMembre('Leech', 'Peter', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(110::SMALLINT, 343::SMALLINT);
CALL assignJudgeToTournoi(110::SMALLINT, 6::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(33::SMALLINT, 6::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(26::SMALLINT, 6::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(27::SMALLINT, 6::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(4::SMALLINT, 6::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(6::SMALLINT, 6::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(7::SMALLINT, 6::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(22::SMALLINT, 6::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*Création des manches et duels*/
CALL registerManche(6::SMALLINT, '2022-04-30 12:00', INTERVAL '10m');
CALL registerDuel(19::SMALLINT, 6::SMALLINT, 108::SMALLINT, 33::SMALLINT, 26::SMALLINT, 33::SMALLINT);
CALL registerDuel(19::SMALLINT, 6::SMALLINT, 110::SMALLINT, 27::SMALLINT, 50::SMALLINT, 27::SMALLINT);
CALL registerDuel(19::SMALLINT, 6::SMALLINT, 109::SMALLINT, 4::SMALLINT, 6::SMALLINT, 4::SMALLINT);
CALL registerDuel(19::SMALLINT, 6::SMALLINT, 107::SMALLINT, 7::SMALLINT, 22::SMALLINT, 7::SMALLINT);
CALL registerManche(6::SMALLINT, '2022-04-30 12:12', INTERVAL '10m');
CALL registerDuel(20::SMALLINT, 6::SMALLINT, 108::SMALLINT, 33::SMALLINT, 27::SMALLINT, 33::SMALLINT);
CALL registerDuel(20::SMALLINT, 6::SMALLINT, 107::SMALLINT, 4::SMALLINT, 7::SMALLINT, 4::SMALLINT);
CALL registerManche(6::SMALLINT, '2022-04-30 12:24', INTERVAL '10m');
CALL registerDuel(21::SMALLINT, 6::SMALLINT, 108::SMALLINT, 33::SMALLINT, 4::SMALLINT, 33::SMALLINT);

/**Tournoi #7**/

/*Création d'un juge débutant'*/
CALL createMembre('Jones', 'Tiffany', 'Kyiv');
CALL createJugeFromPersonne(111::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(111::SMALLINT, 7::SMALLINT);

/*Création des juges dont un organisateur*/
CALL createMembre('Cook', 'Roy', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(112::SMALLINT, 271::SMALLINT);
CALL assignJudgeToTournoi(112::SMALLINT, 7::SMALLINT);
CALL assignJudgeAsOrganisateur(112::SMALLINT, 7::SMALLINT);

CALL createMembre('Roberge', 'Julie', 'Sion');
CALL createJugeFromPersonne(113::SMALLINT, 268::SMALLINT);
CALL assignJudgeToTournoi(113::SMALLINT, 7::SMALLINT);
CALL createMembre('Dove', 'James', 'Paris');
CALL createJugeFromPersonne(114::SMALLINT, 294::SMALLINT);
CALL assignJudgeToTournoi(114::SMALLINT, 7::SMALLINT);
CALL createMembre('Schaufelberge', 'Daniel', 'Bienne');
CALL createJugeFromPersonne(115::SMALLINT, 308::SMALLINT);
CALL assignJudgeToTournoi(115::SMALLINT, 7::SMALLINT);
CALL createMembre('Matlock', 'Kimberly', 'Bienne');
CALL createJugeFromPersonne(116::SMALLINT, 385::SMALLINT);
CALL assignJudgeToTournoi(116::SMALLINT, 7::SMALLINT);
CALL createMembre('Rodriguez', 'Giovanni', 'Lausanne');
CALL createJugeFromPersonne(117::SMALLINT, 373::SMALLINT);
CALL assignJudgeToTournoi(117::SMALLINT, 7::SMALLINT);
CALL createMembre('Davis', 'Theresa', 'Lausanne');
CALL createJugeFromPersonne(118::SMALLINT, 471::SMALLINT);
CALL assignJudgeToTournoi(118::SMALLINT, 7::SMALLINT);
CALL createMembre('Soliman', 'Tyler', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(119::SMALLINT, 405::SMALLINT);
CALL assignJudgeToTournoi(119::SMALLINT, 7::SMALLINT);
CALL createMembre('Arevalo', 'Winifred', 'Kyiv');
CALL createJugeFromPersonne(120::SMALLINT, 409::SMALLINT);
CALL assignJudgeToTournoi(120::SMALLINT, 7::SMALLINT);
CALL createMembre('Denise', 'Dale', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(121::SMALLINT, 398::SMALLINT);
CALL assignJudgeToTournoi(121::SMALLINT, 7::SMALLINT);
CALL createMembre('Bell', 'Annie', 'Paris');
CALL createJugeFromPersonne(122::SMALLINT, 214::SMALLINT);
CALL assignJudgeToTournoi(122::SMALLINT, 7::SMALLINT);
CALL createMembre('Miller', 'Robert', 'Sarcelles');
CALL createJugeFromPersonne(123::SMALLINT, 208::SMALLINT);
CALL assignJudgeToTournoi(123::SMALLINT, 7::SMALLINT);
CALL createMembre('Wright', 'Randy', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(124::SMALLINT, 388::SMALLINT);
CALL assignJudgeToTournoi(124::SMALLINT, 7::SMALLINT);
CALL createMembre('Miltenberger', 'Mary', 'Sion');
CALL createJugeFromPersonne(125::SMALLINT, 366::SMALLINT);
CALL assignJudgeToTournoi(125::SMALLINT, 7::SMALLINT);
CALL createMembre('Edwards', 'Andres', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(126::SMALLINT, 324::SMALLINT);
CALL assignJudgeToTournoi(126::SMALLINT, 7::SMALLINT);
CALL createMembre('Nelson', 'Norma', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(127::SMALLINT, 236::SMALLINT);
CALL assignJudgeToTournoi(127::SMALLINT, 7::SMALLINT);

/*Assignation des decks*/
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
CALL createParticipantFromPersonne(60::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(57::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(32::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(19::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(52::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(61::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(5::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(44::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(3::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
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
CALL createParticipantFromPersonne(29::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(16::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(55::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(41::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(33::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(11::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(35::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(54::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(23::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(51::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(21::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(14::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(34::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(39::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(6::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*Création des manches et duels*/
CALL registerManche(7::SMALLINT, '2022-02-08 08:00', INTERVAL '10m');
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 116::SMALLINT, 63::SMALLINT, 60::SMALLINT, 63::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 126::SMALLINT, 46::SMALLINT, 57::SMALLINT, 46::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 115::SMALLINT, 32::SMALLINT, 19::SMALLINT, 32::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 126::SMALLINT, 28::SMALLINT, 52::SMALLINT, 28::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 123::SMALLINT, 61::SMALLINT, 5::SMALLINT, 61::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 123::SMALLINT, 40::SMALLINT, 44::SMALLINT, 40::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 121::SMALLINT, 3::SMALLINT, 20::SMALLINT, 3::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 121::SMALLINT, 9::SMALLINT, 29::SMALLINT, 9::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 116::SMALLINT, 18::SMALLINT, 16::SMALLINT, 18::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 115::SMALLINT, 55::SMALLINT, 41::SMALLINT, 55::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 117::SMALLINT, 33::SMALLINT, 11::SMALLINT, 33::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 115::SMALLINT, 35::SMALLINT, 54::SMALLINT, 35::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 127::SMALLINT, 37::SMALLINT, 23::SMALLINT, 37::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 125::SMALLINT, 51::SMALLINT, 21::SMALLINT, 51::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 114::SMALLINT, 14::SMALLINT, 34::SMALLINT, 14::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 115::SMALLINT, 39::SMALLINT, 6::SMALLINT, 39::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:12', INTERVAL '10m');
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 124::SMALLINT, 63::SMALLINT, 46::SMALLINT, 63::SMALLINT);
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 120::SMALLINT, 32::SMALLINT, 28::SMALLINT, 32::SMALLINT);
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 112::SMALLINT, 61::SMALLINT, 40::SMALLINT, 61::SMALLINT);
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 117::SMALLINT, 3::SMALLINT, 9::SMALLINT, 3::SMALLINT);
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 112::SMALLINT, 18::SMALLINT, 55::SMALLINT, 18::SMALLINT);
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 125::SMALLINT, 33::SMALLINT, 35::SMALLINT, 33::SMALLINT);
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 124::SMALLINT, 37::SMALLINT, 51::SMALLINT, 37::SMALLINT);
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 118::SMALLINT, 14::SMALLINT, 39::SMALLINT, 14::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:24', INTERVAL '10m');
CALL registerDuel(24::SMALLINT, 7::SMALLINT, 119::SMALLINT, 63::SMALLINT, 32::SMALLINT, 63::SMALLINT);
CALL registerDuel(24::SMALLINT, 7::SMALLINT, 113::SMALLINT, 61::SMALLINT, 3::SMALLINT, 61::SMALLINT);
CALL registerDuel(24::SMALLINT, 7::SMALLINT, 116::SMALLINT, 18::SMALLINT, 33::SMALLINT, 18::SMALLINT);
CALL registerDuel(24::SMALLINT, 7::SMALLINT, 114::SMALLINT, 37::SMALLINT, 14::SMALLINT, 37::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:36', INTERVAL '10m');
CALL registerDuel(25::SMALLINT, 7::SMALLINT, 126::SMALLINT, 63::SMALLINT, 61::SMALLINT, 63::SMALLINT);
CALL registerDuel(25::SMALLINT, 7::SMALLINT, 119::SMALLINT, 18::SMALLINT, 37::SMALLINT, 18::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:48', INTERVAL '10m');
CALL registerDuel(26::SMALLINT, 7::SMALLINT, 120::SMALLINT, 63::SMALLINT, 18::SMALLINT, 63::SMALLINT);

/**Tournoi #8**/

/*Création d'un juge débutant'*/
CALL createMembre('Chadwell', 'Patricia', 'Fribourg');
CALL createJugeFromPersonne(128::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(128::SMALLINT, 8::SMALLINT);

/*Création des juges dont un organisateur*/
CALL createMembre('Agee', 'Joann', 'Fribourg');
CALL createJugeFromPersonne(129::SMALLINT, 412::SMALLINT);
CALL assignJudgeToTournoi(129::SMALLINT, 8::SMALLINT);
CALL assignJudgeAsOrganisateur(129::SMALLINT, 8::SMALLINT);

CALL createMembre('Gomez', 'Cynthia', 'Paris');
CALL createJugeFromPersonne(130::SMALLINT, 299::SMALLINT);
CALL assignJudgeToTournoi(130::SMALLINT, 8::SMALLINT);
CALL createMembre('Cross', 'Debbie', 'Paris');
CALL createJugeFromPersonne(131::SMALLINT, 277::SMALLINT);
CALL assignJudgeToTournoi(131::SMALLINT, 8::SMALLINT);
CALL createMembre('Fimbres', 'Meg', 'Kyiv');
CALL createJugeFromPersonne(132::SMALLINT, 355::SMALLINT);
CALL assignJudgeToTournoi(132::SMALLINT, 8::SMALLINT);
CALL createMembre('Watson', 'Dale', 'Bienne');
CALL createJugeFromPersonne(133::SMALLINT, 435::SMALLINT);
CALL assignJudgeToTournoi(133::SMALLINT, 8::SMALLINT);
CALL createMembre('Smith', 'Joaquin', 'Sion');
CALL createJugeFromPersonne(134::SMALLINT, 498::SMALLINT);
CALL assignJudgeToTournoi(134::SMALLINT, 8::SMALLINT);
CALL createMembre('Pena', 'Brian', 'Paris');
CALL createJugeFromPersonne(135::SMALLINT, 381::SMALLINT);
CALL assignJudgeToTournoi(135::SMALLINT, 8::SMALLINT);
CALL createMembre('Blevins', 'Leslie', 'Sion');
CALL createJugeFromPersonne(136::SMALLINT, 286::SMALLINT);
CALL assignJudgeToTournoi(136::SMALLINT, 8::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(43::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(48::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(61::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(53::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(59::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(14::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(44::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(28::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(37::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(10::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(40::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(15::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(54::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(36::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(17::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(2::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL registerManche(8::SMALLINT, '2022-04-01 10:00', INTERVAL '10m');
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 131::SMALLINT, 43::SMALLINT, 48::SMALLINT, 43::SMALLINT);
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 133::SMALLINT, 61::SMALLINT, 53::SMALLINT, 61::SMALLINT);
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 132::SMALLINT, 59::SMALLINT, 14::SMALLINT, 59::SMALLINT);
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 129::SMALLINT, 44::SMALLINT, 28::SMALLINT, 44::SMALLINT);
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 136::SMALLINT, 37::SMALLINT, 10::SMALLINT, 37::SMALLINT);
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 129::SMALLINT, 40::SMALLINT, 15::SMALLINT, 40::SMALLINT);
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 133::SMALLINT, 54::SMALLINT, 36::SMALLINT, 54::SMALLINT);
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 131::SMALLINT, 17::SMALLINT, 2::SMALLINT, 17::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:12', INTERVAL '10m');
CALL registerDuel(28::SMALLINT, 8::SMALLINT, 134::SMALLINT, 43::SMALLINT, 61::SMALLINT, 43::SMALLINT);
CALL registerDuel(28::SMALLINT, 8::SMALLINT, 134::SMALLINT, 59::SMALLINT, 44::SMALLINT, 59::SMALLINT);
CALL registerDuel(28::SMALLINT, 8::SMALLINT, 134::SMALLINT, 37::SMALLINT, 40::SMALLINT, 37::SMALLINT);
CALL registerDuel(28::SMALLINT, 8::SMALLINT, 135::SMALLINT, 54::SMALLINT, 17::SMALLINT, 54::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:24', INTERVAL '10m');
CALL registerDuel(29::SMALLINT, 8::SMALLINT, 134::SMALLINT, 43::SMALLINT, 59::SMALLINT, 43::SMALLINT);
CALL registerDuel(29::SMALLINT, 8::SMALLINT, 131::SMALLINT, 37::SMALLINT, 54::SMALLINT, 37::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:36', INTERVAL '10m');
CALL registerDuel(30::SMALLINT, 8::SMALLINT, 135::SMALLINT, 43::SMALLINT, 37::SMALLINT, 43::SMALLINT);

/**Tournoi #9**/

/*Création d'un juge débutant'*/
CALL createMembre('Higgs', 'Anthony', 'Paris');
CALL createJugeFromPersonne(137::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(137::SMALLINT, 9::SMALLINT);

/*Création des juges dont un organisateur*/
CALL createMembre('Schultz', 'Lizette', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(138::SMALLINT, 336::SMALLINT);
CALL assignJudgeToTournoi(138::SMALLINT, 9::SMALLINT);
CALL assignJudgeAsOrganisateur(138::SMALLINT, 9::SMALLINT);

CALL createMembre('Brinkman', 'Reta', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(139::SMALLINT, 249::SMALLINT);
CALL assignJudgeToTournoi(139::SMALLINT, 9::SMALLINT);
CALL createMembre('Izzo', 'Denise', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(140::SMALLINT, 258::SMALLINT);
CALL assignJudgeToTournoi(140::SMALLINT, 9::SMALLINT);
CALL createMembre('Ramirez', 'Alice', 'Sion');
CALL createJugeFromPersonne(141::SMALLINT, 349::SMALLINT);
CALL assignJudgeToTournoi(141::SMALLINT, 9::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(35::SMALLINT, 9::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(2::SMALLINT, 9::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(33::SMALLINT, 9::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(37::SMALLINT, 9::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(43::SMALLINT, 9::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(30::SMALLINT, 9::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(57::SMALLINT, 9::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(20::SMALLINT, 9::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*Création des manches et duels*/
CALL registerManche(9::SMALLINT, '2022-02-28 06:30', INTERVAL '10m');
CALL registerDuel(31::SMALLINT, 9::SMALLINT, 141::SMALLINT, 35::SMALLINT, 2::SMALLINT, 35::SMALLINT);
CALL registerDuel(31::SMALLINT, 9::SMALLINT, 138::SMALLINT, 33::SMALLINT, 37::SMALLINT, 33::SMALLINT);
CALL registerDuel(31::SMALLINT, 9::SMALLINT, 138::SMALLINT, 43::SMALLINT, 30::SMALLINT, 43::SMALLINT);
CALL registerDuel(31::SMALLINT, 9::SMALLINT, 140::SMALLINT, 57::SMALLINT, 20::SMALLINT, 57::SMALLINT);
CALL registerManche(9::SMALLINT, '2022-02-28 06:42', INTERVAL '10m');
CALL registerDuel(32::SMALLINT, 9::SMALLINT, 139::SMALLINT, 35::SMALLINT, 33::SMALLINT, 35::SMALLINT);
CALL registerDuel(32::SMALLINT, 9::SMALLINT, 140::SMALLINT, 43::SMALLINT, 57::SMALLINT, 43::SMALLINT);
CALL registerManche(9::SMALLINT, '2022-02-28 06:54', INTERVAL '10m');
CALL registerDuel(33::SMALLINT, 9::SMALLINT, 141::SMALLINT, 35::SMALLINT, 43::SMALLINT, 35::SMALLINT);

/**Tournoi #10**/

/*Création d'un juge débutant'*/
CALL createMembre('Carney', 'Bianca', 'Kyiv');
CALL createJugeFromPersonne(142::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(142::SMALLINT, 10::SMALLINT);

/*Création des juges dont un organisateur*/
CALL createMembre('Gosselin', 'Inez', 'Fribourg');
CALL createJugeFromPersonne(143::SMALLINT, 214::SMALLINT);
CALL assignJudgeToTournoi(143::SMALLINT, 10::SMALLINT);
CALL assignJudgeAsOrganisateur(143::SMALLINT, 10::SMALLINT);

CALL createMembre('Charlesworth', 'Delores', 'Bienne');
CALL createJugeFromPersonne(144::SMALLINT, 342::SMALLINT);
CALL assignJudgeToTournoi(144::SMALLINT, 10::SMALLINT);
CALL createMembre('Hess', 'Ruth', 'Bienne');
CALL createJugeFromPersonne(145::SMALLINT, 298::SMALLINT);
CALL assignJudgeToTournoi(145::SMALLINT, 10::SMALLINT);
CALL createMembre('Weathers', 'Mattie', 'Sion');
CALL createJugeFromPersonne(146::SMALLINT, 385::SMALLINT);
CALL assignJudgeToTournoi(146::SMALLINT, 10::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(48::SMALLINT, 10::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(62::SMALLINT, 10::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(1::SMALLINT, 10::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(28::SMALLINT, 10::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(54::SMALLINT, 10::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(25::SMALLINT, 10::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(6::SMALLINT, 10::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(9::SMALLINT, 10::SMALLINT, 'Faso'::TEXT, '
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
CALL registerDuel(34::SMALLINT, 10::SMALLINT, 146::SMALLINT, 48::SMALLINT, 62::SMALLINT, 48::SMALLINT);
CALL registerDuel(34::SMALLINT, 10::SMALLINT, 145::SMALLINT, 1::SMALLINT, 28::SMALLINT, 1::SMALLINT);
CALL registerDuel(34::SMALLINT, 10::SMALLINT, 143::SMALLINT, 54::SMALLINT, 25::SMALLINT, 54::SMALLINT);
CALL registerDuel(34::SMALLINT, 10::SMALLINT, 145::SMALLINT, 6::SMALLINT, 9::SMALLINT, 6::SMALLINT);
CALL registerManche(10::SMALLINT, '2022-07-03 10:12', INTERVAL '10m');
CALL registerDuel(35::SMALLINT, 10::SMALLINT, 146::SMALLINT, 48::SMALLINT, 1::SMALLINT, 48::SMALLINT);
CALL registerDuel(35::SMALLINT, 10::SMALLINT, 145::SMALLINT, 54::SMALLINT, 6::SMALLINT, 54::SMALLINT);
CALL registerManche(10::SMALLINT, '2022-07-03 10:24', INTERVAL '10m');
CALL registerDuel(36::SMALLINT, 10::SMALLINT, 143::SMALLINT, 48::SMALLINT, 54::SMALLINT, 48::SMALLINT);

