/*CrÚation des joueurs*/
CALL createMembre('Stanfield', 'Salvador', 'Lausanne');
CALL createMembre('Corbisiero', 'Jessie', 'Sion');
CALL createMembre('Poynter', 'Elizabeth', 'Bienne');
CALL createMembre('Ricketts', 'Wayne', 'Lausanne');
CALL createMembre('Jones', 'Daniel', 'Yverdon-les-Bains');
CALL createMembre('Frew', 'Jill', 'Paris');
CALL createMembre('Moore', 'Thomas', 'Yverdon-les-Bains');
CALL createMembre('Ramirez', 'Julie', 'Lausanne');
CALL createMembre('Guillen', 'Steven', 'Yverdon-les-Bains');
CALL createMembre('Mueller', 'Helen', 'Yverdon-les-Bains');
CALL createMembre('Williams', 'Donald', 'Paris');
CALL createMembre('Taylor', 'Rhonda', 'Bienne');
CALL createMembre('Sims', 'Diana', 'Paris');
CALL createMembre('Edwards', 'Judith', 'Bienne');
CALL createMembre('Turner', 'Clara', 'Sion');
CALL createMembre('Phillips', 'John', 'Bienne');
CALL createMembre('Wilson', 'Kenneth', 'Lausanne');
CALL createMembre('Seeley', 'Steven', 'Sarcelles');
CALL createMembre('Douglas', 'Carol', 'Yverdon-les-Bains');
CALL createMembre('Bradley', 'George', 'Sarcelles');
CALL createMembre('Cummings', 'Susan', 'Yverdon-les-Bains');
CALL createMembre('Ellington', 'Bonnie', 'Yverdon-les-Bains');
CALL createMembre('Muniz', 'Olivia', 'Yverdon-les-Bains');
CALL createMembre('Reedy', 'Georgetta', 'Kyiv');
CALL createMembre('Jasso', 'Sara', 'Sarcelles');
CALL createMembre('Morris', 'John', 'Sarcelles');
CALL createMembre('Kokko', 'Lora', 'Kyiv');
CALL createMembre('Carlucci', 'Tricia', 'Kyiv');
CALL createMembre('Bibb', 'Maxine', 'Sion');
CALL createMembre('Mcmeen', 'Mary', 'Yverdon-les-Bains');
CALL createMembre('Brown', 'Walter', 'Kyiv');
CALL createMembre('Thompson', 'Janice', 'Fribourg');
CALL createMembre('Berry', 'William', 'Lausanne');
CALL createMembre('Land', 'Martha', 'Kyiv');
CALL createMembre('Stephens', 'Jennifer', 'Sion');
CALL createMembre('Mcneill', 'Thomas', 'Lausanne');
CALL createMembre('Lowder', 'Benito', 'Sion');
CALL createMembre('Grenier', 'Ronald', 'Sion');
CALL createMembre('Flaim', 'Ashley', 'Bienne');
CALL createMembre('Weil', 'Hazel', 'Paris');
CALL createMembre('Gonser', 'Priscilla', 'Lausanne');
CALL createMembre('Beyer', 'Eric', 'Yverdon-les-Bains');
CALL createMembre('Dobransky', 'Thomas', 'Paris');
CALL createMembre('Allen', 'Andrew', 'Paris');
CALL createMembre('Page', 'Martha', 'Fribourg');
CALL createMembre('Harvey', 'David', 'Fribourg');
CALL createMembre('Inglis', 'Catherine', 'Yverdon-les-Bains');
CALL createMembre('Otto', 'Ramiro', 'Bienne');
CALL createMembre('Rountree', 'Kimberley', 'Lausanne');
CALL createMembre('Herlocker', 'Carolee', 'Yverdon-les-Bains');
CALL createMembre('Villalobos', 'Richard', 'Yverdon-les-Bains');
CALL createMembre('Wyatt', 'Helen', 'Paris');
CALL createMembre('Barr', 'Adrianna', 'Kyiv');
CALL createMembre('Anderson', 'John', 'Sarcelles');
CALL createMembre('Garrison', 'Charles', 'Yverdon-les-Bains');
CALL createMembre('Baum', 'Betty', 'Sarcelles');
CALL createMembre('Delgado', 'Willie', 'Fribourg');
CALL createMembre('Berkowitz', 'Jennifer', 'Sion');
CALL createMembre('Laws', 'Deborah', 'Sion');
CALL createMembre('Pulaski', 'Arthur', 'Lausanne');
CALL createMembre('King', 'Erica', 'Yverdon-les-Bains');
CALL createMembre('Megginson', 'Lewis', 'Paris');
CALL createMembre('Weikel', 'Melvin', 'Yverdon-les-Bains');
CALL createMembre('Outlaw', 'Lena', 'Yverdon-les-Bains');

/*Peuplage des tournois */

/**Tournoi #1**/

/*CrÚation d'un juge dÚbutant'*/
CALL createMembre('Tucker', 'James', 'Kyiv');
CALL createJugeFromPersonne(65::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(65::SMALLINT, 1::SMALLINT);

/*CrÚation des juges dont un organisateur*/
CALL createMembre('Sande', 'Alysha', 'Fribourg');
CALL createJugeFromPersonne(66::SMALLINT, 369::SMALLINT);
CALL assignJudgeToTournoi(66::SMALLINT, 1::SMALLINT);
CALL assignJudgeAsOrganisateur(66::SMALLINT, 1::SMALLINT);

CALL createMembre('Messina', 'Lisa', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(67::SMALLINT, 253::SMALLINT);
CALL assignJudgeToTournoi(67::SMALLINT, 1::SMALLINT);
CALL createMembre('Gethers', 'Paul', 'Fribourg');
CALL createJugeFromPersonne(68::SMALLINT, 453::SMALLINT);
CALL assignJudgeToTournoi(68::SMALLINT, 1::SMALLINT);
CALL createMembre('Stevenson', 'Dianne', 'Fribourg');
CALL createJugeFromPersonne(69::SMALLINT, 257::SMALLINT);
CALL assignJudgeToTournoi(69::SMALLINT, 1::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(45::SMALLINT, 1::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(59::SMALLINT, 1::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(62::SMALLINT, 1::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(12::SMALLINT, 1::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(4::SMALLINT, 1::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(5::SMALLINT, 1::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(34::SMALLINT, 1::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(41::SMALLINT, 1::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*CrÚation des manches et duels*/
CALL registerManche(1::SMALLINT, '2022-09-11 06:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 67::SMALLINT, 45::SMALLINT, 59::SMALLINT, 45::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 68::SMALLINT, 62::SMALLINT, 12::SMALLINT, 62::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 69::SMALLINT, 4::SMALLINT, 5::SMALLINT, 4::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 68::SMALLINT, 34::SMALLINT, 41::SMALLINT, 34::SMALLINT);
CALL registerManche(1::SMALLINT, '2022-09-11 06:12', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 1::SMALLINT, 67::SMALLINT, 45::SMALLINT, 62::SMALLINT, 45::SMALLINT);
CALL registerDuel(2::SMALLINT, 1::SMALLINT, 66::SMALLINT, 4::SMALLINT, 34::SMALLINT, 4::SMALLINT);
CALL registerManche(1::SMALLINT, '2022-09-11 06:24', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 1::SMALLINT, 66::SMALLINT, 45::SMALLINT, 4::SMALLINT, 45::SMALLINT);

/**Tournoi #2**/

/*CrÚation d'un juge dÚbutant'*/
CALL createMembre('Guido', 'Felipe', 'Bienne');
CALL createJugeFromPersonne(70::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(70::SMALLINT, 2::SMALLINT);

/*CrÚation des juges dont un organisateur*/
CALL createMembre('Moeller', 'Jeffrey', 'Lausanne');
CALL createJugeFromPersonne(71::SMALLINT, 266::SMALLINT);
CALL assignJudgeToTournoi(71::SMALLINT, 2::SMALLINT);
CALL assignJudgeAsOrganisateur(71::SMALLINT, 2::SMALLINT);

CALL createMembre('Schear', 'Lillian', 'Sion');
CALL createJugeFromPersonne(72::SMALLINT, 382::SMALLINT);
CALL assignJudgeToTournoi(72::SMALLINT, 2::SMALLINT);
CALL createMembre('Lord', 'Stephanie', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(73::SMALLINT, 281::SMALLINT);
CALL assignJudgeToTournoi(73::SMALLINT, 2::SMALLINT);
CALL createMembre('Estes', 'Rachel', 'Kyiv');
CALL createJugeFromPersonne(74::SMALLINT, 297::SMALLINT);
CALL assignJudgeToTournoi(74::SMALLINT, 2::SMALLINT);

/*Assignation des decks*/
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
CALL createParticipantFromPersonne(42::SMALLINT, 2::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(24::SMALLINT, 2::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(18::SMALLINT, 2::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(56::SMALLINT, 2::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(40::SMALLINT, 2::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(48::SMALLINT, 2::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(2::SMALLINT, 2::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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

/*CrÚation des manches et duels*/
CALL registerManche(2::SMALLINT, '2022-01-20 12:00', INTERVAL '10m');
CALL registerDuel(4::SMALLINT, 2::SMALLINT, 73::SMALLINT, 11::SMALLINT, 42::SMALLINT, 11::SMALLINT);
CALL registerDuel(4::SMALLINT, 2::SMALLINT, 74::SMALLINT, 24::SMALLINT, 18::SMALLINT, 24::SMALLINT);
CALL registerDuel(4::SMALLINT, 2::SMALLINT, 71::SMALLINT, 56::SMALLINT, 40::SMALLINT, 56::SMALLINT);
CALL registerDuel(4::SMALLINT, 2::SMALLINT, 71::SMALLINT, 48::SMALLINT, 2::SMALLINT, 48::SMALLINT);
CALL registerManche(2::SMALLINT, '2022-01-20 12:12', INTERVAL '10m');
CALL registerDuel(5::SMALLINT, 2::SMALLINT, 74::SMALLINT, 11::SMALLINT, 24::SMALLINT, 11::SMALLINT);
CALL registerDuel(5::SMALLINT, 2::SMALLINT, 73::SMALLINT, 56::SMALLINT, 48::SMALLINT, 56::SMALLINT);
CALL registerManche(2::SMALLINT, '2022-01-20 12:24', INTERVAL '10m');
CALL registerDuel(6::SMALLINT, 2::SMALLINT, 72::SMALLINT, 11::SMALLINT, 56::SMALLINT, 11::SMALLINT);

/**Tournoi #3**/

/*CrÚation d'un juge dÚbutant'*/
CALL createMembre('Montalto', 'Albert', 'Lausanne');
CALL createJugeFromPersonne(75::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(75::SMALLINT, 3::SMALLINT);

/*CrÚation des juges dont un organisateur*/
CALL createMembre('Cantu', 'Angela', 'Kyiv');
CALL createJugeFromPersonne(76::SMALLINT, 248::SMALLINT);
CALL assignJudgeToTournoi(76::SMALLINT, 3::SMALLINT);
CALL assignJudgeAsOrganisateur(76::SMALLINT, 3::SMALLINT);

CALL createMembre('Dyson', 'Anna', 'Lausanne');
CALL createJugeFromPersonne(77::SMALLINT, 293::SMALLINT);
CALL assignJudgeToTournoi(77::SMALLINT, 3::SMALLINT);
CALL createMembre('Stillman', 'Charlotte', 'Kyiv');
CALL createJugeFromPersonne(78::SMALLINT, 252::SMALLINT);
CALL assignJudgeToTournoi(78::SMALLINT, 3::SMALLINT);
CALL createMembre('Prewett', 'Randall', 'Sarcelles');
CALL createJugeFromPersonne(79::SMALLINT, 439::SMALLINT);
CALL assignJudgeToTournoi(79::SMALLINT, 3::SMALLINT);
CALL createMembre('Johnson', 'Edward', 'Kyiv');
CALL createJugeFromPersonne(80::SMALLINT, 393::SMALLINT);
CALL assignJudgeToTournoi(80::SMALLINT, 3::SMALLINT);
CALL createMembre('Pulver', 'Eva', 'Lausanne');
CALL createJugeFromPersonne(81::SMALLINT, 455::SMALLINT);
CALL assignJudgeToTournoi(81::SMALLINT, 3::SMALLINT);
CALL createMembre('Lochen', 'Elva', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(82::SMALLINT, 455::SMALLINT);
CALL assignJudgeToTournoi(82::SMALLINT, 3::SMALLINT);
CALL createMembre('Neumeyer', 'Julie', 'Kyiv');
CALL createJugeFromPersonne(83::SMALLINT, 395::SMALLINT);
CALL assignJudgeToTournoi(83::SMALLINT, 3::SMALLINT);

/*Assignation des decks*/
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
CALL createParticipantFromPersonne(13::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(40::SMALLINT, 3::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(51::SMALLINT, 3::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(20::SMALLINT, 3::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(30::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(46::SMALLINT, 3::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(28::SMALLINT, 3::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(3::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(17::SMALLINT, 3::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(53::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(2::SMALLINT, 3::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(4::SMALLINT, 3::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(11::SMALLINT, 3::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(26::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(59::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
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

/*CrÚation des manches et duels*/
CALL registerManche(3::SMALLINT, '2022-06-01 10:00', INTERVAL '10m');
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 79::SMALLINT, 16::SMALLINT, 13::SMALLINT, 16::SMALLINT);
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 77::SMALLINT, 40::SMALLINT, 51::SMALLINT, 40::SMALLINT);
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 76::SMALLINT, 20::SMALLINT, 30::SMALLINT, 20::SMALLINT);
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 78::SMALLINT, 46::SMALLINT, 28::SMALLINT, 46::SMALLINT);
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 83::SMALLINT, 3::SMALLINT, 17::SMALLINT, 3::SMALLINT);
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 77::SMALLINT, 53::SMALLINT, 2::SMALLINT, 53::SMALLINT);
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 77::SMALLINT, 4::SMALLINT, 11::SMALLINT, 4::SMALLINT);
CALL registerDuel(7::SMALLINT, 3::SMALLINT, 81::SMALLINT, 26::SMALLINT, 59::SMALLINT, 26::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:12', INTERVAL '10m');
CALL registerDuel(8::SMALLINT, 3::SMALLINT, 79::SMALLINT, 16::SMALLINT, 40::SMALLINT, 16::SMALLINT);
CALL registerDuel(8::SMALLINT, 3::SMALLINT, 78::SMALLINT, 20::SMALLINT, 46::SMALLINT, 20::SMALLINT);
CALL registerDuel(8::SMALLINT, 3::SMALLINT, 76::SMALLINT, 3::SMALLINT, 53::SMALLINT, 3::SMALLINT);
CALL registerDuel(8::SMALLINT, 3::SMALLINT, 77::SMALLINT, 4::SMALLINT, 26::SMALLINT, 4::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:24', INTERVAL '10m');
CALL registerDuel(9::SMALLINT, 3::SMALLINT, 83::SMALLINT, 16::SMALLINT, 20::SMALLINT, 16::SMALLINT);
CALL registerDuel(9::SMALLINT, 3::SMALLINT, 81::SMALLINT, 3::SMALLINT, 4::SMALLINT, 3::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:36', INTERVAL '10m');
CALL registerDuel(10::SMALLINT, 3::SMALLINT, 83::SMALLINT, 16::SMALLINT, 3::SMALLINT, 16::SMALLINT);

/**Tournoi #4**/

/*CrÚation d'un juge dÚbutant'*/
CALL createMembre('Hazelton', 'Mark', 'Sarcelles');
CALL createJugeFromPersonne(84::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(84::SMALLINT, 4::SMALLINT);

/*CrÚation des juges dont un organisateur*/
CALL createMembre('Woodruff', 'Wayne', 'Paris');
CALL createJugeFromPersonne(85::SMALLINT, 443::SMALLINT);
CALL assignJudgeToTournoi(85::SMALLINT, 4::SMALLINT);
CALL assignJudgeAsOrganisateur(85::SMALLINT, 4::SMALLINT);

CALL createMembre('Carver', 'Daniel', 'Lausanne');
CALL createJugeFromPersonne(86::SMALLINT, 406::SMALLINT);
CALL assignJudgeToTournoi(86::SMALLINT, 4::SMALLINT);
CALL createMembre('Holland', 'Annie', 'Bienne');
CALL createJugeFromPersonne(87::SMALLINT, 377::SMALLINT);
CALL assignJudgeToTournoi(87::SMALLINT, 4::SMALLINT);
CALL createMembre('Summers', 'Alison', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(88::SMALLINT, 244::SMALLINT);
CALL assignJudgeToTournoi(88::SMALLINT, 4::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(53::SMALLINT, 4::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(24::SMALLINT, 4::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(56::SMALLINT, 4::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(61::SMALLINT, 4::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(37::SMALLINT, 4::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(38::SMALLINT, 4::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(27::SMALLINT, 4::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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

/*CrÚation des manches et duels*/
CALL registerManche(4::SMALLINT, '2021-12-06 10:00', INTERVAL '10m');
CALL registerDuel(11::SMALLINT, 4::SMALLINT, 88::SMALLINT, 53::SMALLINT, 24::SMALLINT, 53::SMALLINT);
CALL registerDuel(11::SMALLINT, 4::SMALLINT, 85::SMALLINT, 19::SMALLINT, 56::SMALLINT, 19::SMALLINT);
CALL registerDuel(11::SMALLINT, 4::SMALLINT, 85::SMALLINT, 61::SMALLINT, 37::SMALLINT, 61::SMALLINT);
CALL registerDuel(11::SMALLINT, 4::SMALLINT, 86::SMALLINT, 38::SMALLINT, 27::SMALLINT, 38::SMALLINT);
CALL registerManche(4::SMALLINT, '2021-12-06 10:12', INTERVAL '10m');
CALL registerDuel(12::SMALLINT, 4::SMALLINT, 86::SMALLINT, 53::SMALLINT, 19::SMALLINT, 53::SMALLINT);
CALL registerDuel(12::SMALLINT, 4::SMALLINT, 86::SMALLINT, 61::SMALLINT, 38::SMALLINT, 61::SMALLINT);
CALL registerManche(4::SMALLINT, '2021-12-06 10:24', INTERVAL '10m');
CALL registerDuel(13::SMALLINT, 4::SMALLINT, 85::SMALLINT, 53::SMALLINT, 61::SMALLINT, 53::SMALLINT);

/**Tournoi #5**/

/*CrÚation d'un juge dÚbutant'*/
CALL createMembre('Dumas', 'Stacy', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(89::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(89::SMALLINT, 5::SMALLINT);

/*CrÚation des juges dont un organisateur*/
CALL createMembre('Meczywor', 'Brendan', 'Bienne');
CALL createJugeFromPersonne(90::SMALLINT, 500::SMALLINT);
CALL assignJudgeToTournoi(90::SMALLINT, 5::SMALLINT);
CALL assignJudgeAsOrganisateur(90::SMALLINT, 5::SMALLINT);

CALL createMembre('Schroeder', 'Angela', 'Paris');
CALL createJugeFromPersonne(91::SMALLINT, 326::SMALLINT);
CALL assignJudgeToTournoi(91::SMALLINT, 5::SMALLINT);
CALL createMembre('Paine', 'Annette', 'Lausanne');
CALL createJugeFromPersonne(92::SMALLINT, 441::SMALLINT);
CALL assignJudgeToTournoi(92::SMALLINT, 5::SMALLINT);
CALL createMembre('Barnes', 'Ike', 'Bienne');
CALL createJugeFromPersonne(93::SMALLINT, 440::SMALLINT);
CALL assignJudgeToTournoi(93::SMALLINT, 5::SMALLINT);
CALL createMembre('Cordero', 'Donna', 'Bienne');
CALL createJugeFromPersonne(94::SMALLINT, 346::SMALLINT);
CALL assignJudgeToTournoi(94::SMALLINT, 5::SMALLINT);
CALL createMembre('Ballard', 'Charlotte', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(95::SMALLINT, 365::SMALLINT);
CALL assignJudgeToTournoi(95::SMALLINT, 5::SMALLINT);
CALL createMembre('Miles', 'Patsy', 'Bienne');
CALL createJugeFromPersonne(96::SMALLINT, 321::SMALLINT);
CALL assignJudgeToTournoi(96::SMALLINT, 5::SMALLINT);
CALL createMembre('Griffin', 'Helen', 'Lausanne');
CALL createJugeFromPersonne(97::SMALLINT, 292::SMALLINT);
CALL assignJudgeToTournoi(97::SMALLINT, 5::SMALLINT);
CALL createMembre('Morrison', 'Frank', 'Sion');
CALL createJugeFromPersonne(98::SMALLINT, 322::SMALLINT);
CALL assignJudgeToTournoi(98::SMALLINT, 5::SMALLINT);
CALL createMembre('Mody', 'Michael', 'Fribourg');
CALL createJugeFromPersonne(99::SMALLINT, 460::SMALLINT);
CALL assignJudgeToTournoi(99::SMALLINT, 5::SMALLINT);
CALL createMembre('Lee', 'Teresa', 'Sarcelles');
CALL createJugeFromPersonne(100::SMALLINT, 379::SMALLINT);
CALL assignJudgeToTournoi(100::SMALLINT, 5::SMALLINT);
CALL createMembre('Nelsen', 'Oscar', 'Sion');
CALL createJugeFromPersonne(101::SMALLINT, 308::SMALLINT);
CALL assignJudgeToTournoi(101::SMALLINT, 5::SMALLINT);
CALL createMembre('Gay', 'Jonathan', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(102::SMALLINT, 450::SMALLINT);
CALL assignJudgeToTournoi(102::SMALLINT, 5::SMALLINT);
CALL createMembre('Judd', 'Debbie', 'Lausanne');
CALL createJugeFromPersonne(103::SMALLINT, 325::SMALLINT);
CALL assignJudgeToTournoi(103::SMALLINT, 5::SMALLINT);
CALL createMembre('Natoli', 'Ronald', 'Sion');
CALL createJugeFromPersonne(104::SMALLINT, 236::SMALLINT);
CALL assignJudgeToTournoi(104::SMALLINT, 5::SMALLINT);
CALL createMembre('Person', 'Travis', 'Sarcelles');
CALL createJugeFromPersonne(105::SMALLINT, 480::SMALLINT);
CALL assignJudgeToTournoi(105::SMALLINT, 5::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(54::SMALLINT, 5::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(22::SMALLINT, 5::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(51::SMALLINT, 5::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(29::SMALLINT, 5::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(4::SMALLINT, 5::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(25::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(59::SMALLINT, 5::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(19::SMALLINT, 5::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(16::SMALLINT, 5::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(24::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(46::SMALLINT, 5::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(7::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(43::SMALLINT, 5::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(39::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(8::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(13::SMALLINT, 5::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(21::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(37::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(3::SMALLINT, 5::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(6::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(31::SMALLINT, 5::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(38::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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

/*CrÚation des manches et duels*/
CALL registerManche(5::SMALLINT, '2022-03-30 12:00', INTERVAL '10m');
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 103::SMALLINT, 54::SMALLINT, 22::SMALLINT, 54::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 97::SMALLINT, 5::SMALLINT, 51::SMALLINT, 5::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 94::SMALLINT, 29::SMALLINT, 4::SMALLINT, 29::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 105::SMALLINT, 25::SMALLINT, 59::SMALLINT, 25::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 93::SMALLINT, 19::SMALLINT, 16::SMALLINT, 19::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 102::SMALLINT, 24::SMALLINT, 46::SMALLINT, 24::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 94::SMALLINT, 7::SMALLINT, 57::SMALLINT, 7::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 92::SMALLINT, 27::SMALLINT, 34::SMALLINT, 27::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 99::SMALLINT, 43::SMALLINT, 64::SMALLINT, 43::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 93::SMALLINT, 39::SMALLINT, 48::SMALLINT, 39::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 91::SMALLINT, 28::SMALLINT, 8::SMALLINT, 28::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 104::SMALLINT, 13::SMALLINT, 49::SMALLINT, 13::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 105::SMALLINT, 21::SMALLINT, 37::SMALLINT, 21::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 99::SMALLINT, 30::SMALLINT, 3::SMALLINT, 30::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 98::SMALLINT, 58::SMALLINT, 6::SMALLINT, 58::SMALLINT);
CALL registerDuel(14::SMALLINT, 5::SMALLINT, 99::SMALLINT, 31::SMALLINT, 38::SMALLINT, 31::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:12', INTERVAL '10m');
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 104::SMALLINT, 54::SMALLINT, 5::SMALLINT, 54::SMALLINT);
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 104::SMALLINT, 29::SMALLINT, 25::SMALLINT, 29::SMALLINT);
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 92::SMALLINT, 19::SMALLINT, 24::SMALLINT, 19::SMALLINT);
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 94::SMALLINT, 7::SMALLINT, 27::SMALLINT, 7::SMALLINT);
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 98::SMALLINT, 43::SMALLINT, 39::SMALLINT, 43::SMALLINT);
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 96::SMALLINT, 28::SMALLINT, 13::SMALLINT, 28::SMALLINT);
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 97::SMALLINT, 21::SMALLINT, 30::SMALLINT, 21::SMALLINT);
CALL registerDuel(15::SMALLINT, 5::SMALLINT, 104::SMALLINT, 58::SMALLINT, 31::SMALLINT, 58::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:24', INTERVAL '10m');
CALL registerDuel(16::SMALLINT, 5::SMALLINT, 90::SMALLINT, 54::SMALLINT, 29::SMALLINT, 54::SMALLINT);
CALL registerDuel(16::SMALLINT, 5::SMALLINT, 99::SMALLINT, 19::SMALLINT, 7::SMALLINT, 19::SMALLINT);
CALL registerDuel(16::SMALLINT, 5::SMALLINT, 92::SMALLINT, 43::SMALLINT, 28::SMALLINT, 43::SMALLINT);
CALL registerDuel(16::SMALLINT, 5::SMALLINT, 98::SMALLINT, 21::SMALLINT, 58::SMALLINT, 21::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:36', INTERVAL '10m');
CALL registerDuel(17::SMALLINT, 5::SMALLINT, 94::SMALLINT, 54::SMALLINT, 19::SMALLINT, 54::SMALLINT);
CALL registerDuel(17::SMALLINT, 5::SMALLINT, 98::SMALLINT, 43::SMALLINT, 21::SMALLINT, 43::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:48', INTERVAL '10m');
CALL registerDuel(18::SMALLINT, 5::SMALLINT, 90::SMALLINT, 54::SMALLINT, 43::SMALLINT, 54::SMALLINT);

/**Tournoi #6**/

/*CrÚation d'un juge dÚbutant'*/
CALL createMembre('Parks', 'Edith', 'Bienne');
CALL createJugeFromPersonne(106::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(106::SMALLINT, 6::SMALLINT);

/*CrÚation des juges dont un organisateur*/
CALL createMembre('Bartlett', 'Alfred', 'Lausanne');
CALL createJugeFromPersonne(107::SMALLINT, 463::SMALLINT);
CALL assignJudgeToTournoi(107::SMALLINT, 6::SMALLINT);
CALL assignJudgeAsOrganisateur(107::SMALLINT, 6::SMALLINT);

CALL createMembre('Veilleux', 'Doris', 'Fribourg');
CALL createJugeFromPersonne(108::SMALLINT, 492::SMALLINT);
CALL assignJudgeToTournoi(108::SMALLINT, 6::SMALLINT);
CALL createMembre('Molineaux', 'Coleen', 'Kyiv');
CALL createJugeFromPersonne(109::SMALLINT, 273::SMALLINT);
CALL assignJudgeToTournoi(109::SMALLINT, 6::SMALLINT);
CALL createMembre('Buford', 'Jane', 'Lausanne');
CALL createJugeFromPersonne(110::SMALLINT, 494::SMALLINT);
CALL assignJudgeToTournoi(110::SMALLINT, 6::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(55::SMALLINT, 6::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(7::SMALLINT, 6::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(47::SMALLINT, 6::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(14::SMALLINT, 6::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(13::SMALLINT, 6::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(22::SMALLINT, 6::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(52::SMALLINT, 6::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(9::SMALLINT, 6::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*CrÚation des manches et duels*/
CALL registerManche(6::SMALLINT, '2022-04-30 12:00', INTERVAL '10m');
CALL registerDuel(19::SMALLINT, 6::SMALLINT, 107::SMALLINT, 55::SMALLINT, 7::SMALLINT, 55::SMALLINT);
CALL registerDuel(19::SMALLINT, 6::SMALLINT, 110::SMALLINT, 47::SMALLINT, 14::SMALLINT, 47::SMALLINT);
CALL registerDuel(19::SMALLINT, 6::SMALLINT, 109::SMALLINT, 13::SMALLINT, 22::SMALLINT, 13::SMALLINT);
CALL registerDuel(19::SMALLINT, 6::SMALLINT, 109::SMALLINT, 52::SMALLINT, 9::SMALLINT, 52::SMALLINT);
CALL registerManche(6::SMALLINT, '2022-04-30 12:12', INTERVAL '10m');
CALL registerDuel(20::SMALLINT, 6::SMALLINT, 109::SMALLINT, 55::SMALLINT, 47::SMALLINT, 55::SMALLINT);
CALL registerDuel(20::SMALLINT, 6::SMALLINT, 107::SMALLINT, 13::SMALLINT, 52::SMALLINT, 13::SMALLINT);
CALL registerManche(6::SMALLINT, '2022-04-30 12:24', INTERVAL '10m');
CALL registerDuel(21::SMALLINT, 6::SMALLINT, 107::SMALLINT, 55::SMALLINT, 13::SMALLINT, 55::SMALLINT);

/**Tournoi #7**/

/*CrÚation d'un juge dÚbutant'*/
CALL createMembre('Royer', 'Charles', 'Sarcelles');
CALL createJugeFromPersonne(111::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(111::SMALLINT, 7::SMALLINT);

/*CrÚation des juges dont un organisateur*/
CALL createMembre('Palley', 'Peggie', 'Sion');
CALL createJugeFromPersonne(112::SMALLINT, 421::SMALLINT);
CALL assignJudgeToTournoi(112::SMALLINT, 7::SMALLINT);
CALL assignJudgeAsOrganisateur(112::SMALLINT, 7::SMALLINT);

CALL createMembre('Francis', 'Daniel', 'Lausanne');
CALL createJugeFromPersonne(113::SMALLINT, 329::SMALLINT);
CALL assignJudgeToTournoi(113::SMALLINT, 7::SMALLINT);
CALL createMembre('Frankum', 'Jose', 'Sion');
CALL createJugeFromPersonne(114::SMALLINT, 497::SMALLINT);
CALL assignJudgeToTournoi(114::SMALLINT, 7::SMALLINT);
CALL createMembre('Arreola', 'Kerstin', 'Kyiv');
CALL createJugeFromPersonne(115::SMALLINT, 293::SMALLINT);
CALL assignJudgeToTournoi(115::SMALLINT, 7::SMALLINT);
CALL createMembre('Tye', 'Cheryl', 'Sion');
CALL createJugeFromPersonne(116::SMALLINT, 300::SMALLINT);
CALL assignJudgeToTournoi(116::SMALLINT, 7::SMALLINT);
CALL createMembre('Fackrell', 'Verla', 'Sarcelles');
CALL createJugeFromPersonne(117::SMALLINT, 402::SMALLINT);
CALL assignJudgeToTournoi(117::SMALLINT, 7::SMALLINT);
CALL createMembre('Hill', 'Charles', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(118::SMALLINT, 267::SMALLINT);
CALL assignJudgeToTournoi(118::SMALLINT, 7::SMALLINT);
CALL createMembre('Shaw', 'Charles', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(119::SMALLINT, 455::SMALLINT);
CALL assignJudgeToTournoi(119::SMALLINT, 7::SMALLINT);
CALL createMembre('Curles', 'Connie', 'Fribourg');
CALL createJugeFromPersonne(120::SMALLINT, 232::SMALLINT);
CALL assignJudgeToTournoi(120::SMALLINT, 7::SMALLINT);
CALL createMembre('Burnstein', 'Eric', 'Paris');
CALL createJugeFromPersonne(121::SMALLINT, 212::SMALLINT);
CALL assignJudgeToTournoi(121::SMALLINT, 7::SMALLINT);
CALL createMembre('Watson', 'Patricia', 'Fribourg');
CALL createJugeFromPersonne(122::SMALLINT, 298::SMALLINT);
CALL assignJudgeToTournoi(122::SMALLINT, 7::SMALLINT);
CALL createMembre('Bathe', 'John', 'Sarcelles');
CALL createJugeFromPersonne(123::SMALLINT, 225::SMALLINT);
CALL assignJudgeToTournoi(123::SMALLINT, 7::SMALLINT);
CALL createMembre('Reed', 'Robert', 'Sarcelles');
CALL createJugeFromPersonne(124::SMALLINT, 473::SMALLINT);
CALL assignJudgeToTournoi(124::SMALLINT, 7::SMALLINT);
CALL createMembre('Wells', 'Melinda', 'Kyiv');
CALL createJugeFromPersonne(125::SMALLINT, 412::SMALLINT);
CALL assignJudgeToTournoi(125::SMALLINT, 7::SMALLINT);
CALL createMembre('Santoro', 'Avery', 'Fribourg');
CALL createJugeFromPersonne(126::SMALLINT, 297::SMALLINT);
CALL assignJudgeToTournoi(126::SMALLINT, 7::SMALLINT);
CALL createMembre('Gray', 'Robert', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(127::SMALLINT, 220::SMALLINT);
CALL assignJudgeToTournoi(127::SMALLINT, 7::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(16::SMALLINT, 7::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(58::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(54::SMALLINT, 7::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(11::SMALLINT, 7::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(45::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(62::SMALLINT, 7::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(4::SMALLINT, 7::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(57::SMALLINT, 7::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(1::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(51::SMALLINT, 7::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(37::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(12::SMALLINT, 7::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(20::SMALLINT, 7::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(29::SMALLINT, 7::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(46::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(59::SMALLINT, 7::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(61::SMALLINT, 7::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(28::SMALLINT, 7::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(26::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(18::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(55::SMALLINT, 7::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(21::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(60::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(47::SMALLINT, 7::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(42::SMALLINT, 7::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(9::SMALLINT, 7::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(52::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(25::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(38::SMALLINT, 7::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(22::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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

/*CrÚation des manches et duels*/
CALL registerManche(7::SMALLINT, '2022-02-08 08:00', INTERVAL '10m');
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 119::SMALLINT, 16::SMALLINT, 58::SMALLINT, 16::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 113::SMALLINT, 54::SMALLINT, 11::SMALLINT, 54::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 125::SMALLINT, 45::SMALLINT, 62::SMALLINT, 45::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 115::SMALLINT, 4::SMALLINT, 57::SMALLINT, 4::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 112::SMALLINT, 1::SMALLINT, 14::SMALLINT, 1::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 125::SMALLINT, 51::SMALLINT, 37::SMALLINT, 51::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 113::SMALLINT, 12::SMALLINT, 20::SMALLINT, 12::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 127::SMALLINT, 29::SMALLINT, 46::SMALLINT, 29::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 126::SMALLINT, 59::SMALLINT, 61::SMALLINT, 59::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 119::SMALLINT, 28::SMALLINT, 26::SMALLINT, 28::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 124::SMALLINT, 18::SMALLINT, 44::SMALLINT, 18::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 120::SMALLINT, 55::SMALLINT, 21::SMALLINT, 55::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 112::SMALLINT, 60::SMALLINT, 47::SMALLINT, 60::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 116::SMALLINT, 42::SMALLINT, 9::SMALLINT, 42::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 112::SMALLINT, 52::SMALLINT, 25::SMALLINT, 52::SMALLINT);
CALL registerDuel(22::SMALLINT, 7::SMALLINT, 120::SMALLINT, 38::SMALLINT, 22::SMALLINT, 38::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:12', INTERVAL '10m');
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 120::SMALLINT, 16::SMALLINT, 54::SMALLINT, 16::SMALLINT);
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 121::SMALLINT, 45::SMALLINT, 4::SMALLINT, 45::SMALLINT);
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 122::SMALLINT, 1::SMALLINT, 51::SMALLINT, 1::SMALLINT);
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 112::SMALLINT, 12::SMALLINT, 29::SMALLINT, 12::SMALLINT);
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 116::SMALLINT, 59::SMALLINT, 28::SMALLINT, 59::SMALLINT);
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 113::SMALLINT, 18::SMALLINT, 55::SMALLINT, 18::SMALLINT);
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 115::SMALLINT, 60::SMALLINT, 42::SMALLINT, 60::SMALLINT);
CALL registerDuel(23::SMALLINT, 7::SMALLINT, 125::SMALLINT, 52::SMALLINT, 38::SMALLINT, 52::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:24', INTERVAL '10m');
CALL registerDuel(24::SMALLINT, 7::SMALLINT, 121::SMALLINT, 16::SMALLINT, 45::SMALLINT, 16::SMALLINT);
CALL registerDuel(24::SMALLINT, 7::SMALLINT, 118::SMALLINT, 1::SMALLINT, 12::SMALLINT, 1::SMALLINT);
CALL registerDuel(24::SMALLINT, 7::SMALLINT, 124::SMALLINT, 59::SMALLINT, 18::SMALLINT, 59::SMALLINT);
CALL registerDuel(24::SMALLINT, 7::SMALLINT, 126::SMALLINT, 60::SMALLINT, 52::SMALLINT, 60::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:36', INTERVAL '10m');
CALL registerDuel(25::SMALLINT, 7::SMALLINT, 118::SMALLINT, 16::SMALLINT, 1::SMALLINT, 16::SMALLINT);
CALL registerDuel(25::SMALLINT, 7::SMALLINT, 113::SMALLINT, 59::SMALLINT, 60::SMALLINT, 59::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:48', INTERVAL '10m');
CALL registerDuel(26::SMALLINT, 7::SMALLINT, 123::SMALLINT, 16::SMALLINT, 59::SMALLINT, 16::SMALLINT);

/**Tournoi #8**/

/*CrÚation d'un juge dÚbutant'*/
CALL createMembre('Luttrell', 'William', 'Sarcelles');
CALL createJugeFromPersonne(128::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(128::SMALLINT, 8::SMALLINT);

/*CrÚation des juges dont un organisateur*/
CALL createMembre('Bucher', 'Edna', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(129::SMALLINT, 478::SMALLINT);
CALL assignJudgeToTournoi(129::SMALLINT, 8::SMALLINT);
CALL assignJudgeAsOrganisateur(129::SMALLINT, 8::SMALLINT);

CALL createMembre('Coore', 'Terry', 'Paris');
CALL createJugeFromPersonne(130::SMALLINT, 223::SMALLINT);
CALL assignJudgeToTournoi(130::SMALLINT, 8::SMALLINT);
CALL createMembre('Mcalister', 'Edythe', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(131::SMALLINT, 341::SMALLINT);
CALL assignJudgeToTournoi(131::SMALLINT, 8::SMALLINT);
CALL createMembre('Burch', 'Gary', 'Paris');
CALL createJugeFromPersonne(132::SMALLINT, 479::SMALLINT);
CALL assignJudgeToTournoi(132::SMALLINT, 8::SMALLINT);
CALL createMembre('Lisowski', 'Allan', 'Bienne');
CALL createJugeFromPersonne(133::SMALLINT, 496::SMALLINT);
CALL assignJudgeToTournoi(133::SMALLINT, 8::SMALLINT);
CALL createMembre('Klein', 'Daryl', 'Bienne');
CALL createJugeFromPersonne(134::SMALLINT, 293::SMALLINT);
CALL assignJudgeToTournoi(134::SMALLINT, 8::SMALLINT);
CALL createMembre('Chadwick', 'Adam', 'Fribourg');
CALL createJugeFromPersonne(135::SMALLINT, 232::SMALLINT);
CALL assignJudgeToTournoi(135::SMALLINT, 8::SMALLINT);
CALL createMembre('Aldridge', 'Ricky', 'Bienne');
CALL createJugeFromPersonne(136::SMALLINT, 347::SMALLINT);
CALL assignJudgeToTournoi(136::SMALLINT, 8::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(28::SMALLINT, 8::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(63::SMALLINT, 8::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(3::SMALLINT, 8::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(46::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(61::SMALLINT, 8::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(53::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(41::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(21::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(12::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(56::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(35::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(16::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(18::SMALLINT, 8::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(23::SMALLINT, 8::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(58::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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

/*CrÚation des manches et duels*/
CALL registerManche(8::SMALLINT, '2022-04-01 10:00', INTERVAL '10m');
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 134::SMALLINT, 28::SMALLINT, 63::SMALLINT, 28::SMALLINT);
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 135::SMALLINT, 3::SMALLINT, 46::SMALLINT, 3::SMALLINT);
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 129::SMALLINT, 61::SMALLINT, 53::SMALLINT, 61::SMALLINT);
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 131::SMALLINT, 41::SMALLINT, 21::SMALLINT, 41::SMALLINT);
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 134::SMALLINT, 12::SMALLINT, 56::SMALLINT, 12::SMALLINT);
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 131::SMALLINT, 35::SMALLINT, 16::SMALLINT, 35::SMALLINT);
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 130::SMALLINT, 18::SMALLINT, 62::SMALLINT, 18::SMALLINT);
CALL registerDuel(27::SMALLINT, 8::SMALLINT, 134::SMALLINT, 23::SMALLINT, 58::SMALLINT, 23::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:12', INTERVAL '10m');
CALL registerDuel(28::SMALLINT, 8::SMALLINT, 131::SMALLINT, 28::SMALLINT, 3::SMALLINT, 28::SMALLINT);
CALL registerDuel(28::SMALLINT, 8::SMALLINT, 131::SMALLINT, 61::SMALLINT, 41::SMALLINT, 61::SMALLINT);
CALL registerDuel(28::SMALLINT, 8::SMALLINT, 131::SMALLINT, 12::SMALLINT, 35::SMALLINT, 12::SMALLINT);
CALL registerDuel(28::SMALLINT, 8::SMALLINT, 132::SMALLINT, 18::SMALLINT, 23::SMALLINT, 18::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:24', INTERVAL '10m');
CALL registerDuel(29::SMALLINT, 8::SMALLINT, 129::SMALLINT, 28::SMALLINT, 61::SMALLINT, 28::SMALLINT);
CALL registerDuel(29::SMALLINT, 8::SMALLINT, 129::SMALLINT, 12::SMALLINT, 18::SMALLINT, 12::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:36', INTERVAL '10m');
CALL registerDuel(30::SMALLINT, 8::SMALLINT, 135::SMALLINT, 28::SMALLINT, 12::SMALLINT, 28::SMALLINT);

/**Tournoi #9**/

/*CrÚation d'un juge dÚbutant'*/
CALL createMembre('Corwin', 'Chiquita', 'Fribourg');
CALL createJugeFromPersonne(137::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(137::SMALLINT, 9::SMALLINT);

/*CrÚation des juges dont un organisateur*/
CALL createMembre('Farmer', 'Lori', 'Kyiv');
CALL createJugeFromPersonne(138::SMALLINT, 303::SMALLINT);
CALL assignJudgeToTournoi(138::SMALLINT, 9::SMALLINT);
CALL assignJudgeAsOrganisateur(138::SMALLINT, 9::SMALLINT);

CALL createMembre('Alexander', 'Johnny', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(139::SMALLINT, 417::SMALLINT);
CALL assignJudgeToTournoi(139::SMALLINT, 9::SMALLINT);
CALL createMembre('Thompson', 'Lester', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(140::SMALLINT, 432::SMALLINT);
CALL assignJudgeToTournoi(140::SMALLINT, 9::SMALLINT);
CALL createMembre('Hammond', 'Frederick', 'Sarcelles');
CALL createJugeFromPersonne(141::SMALLINT, 206::SMALLINT);
CALL assignJudgeToTournoi(141::SMALLINT, 9::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(26::SMALLINT, 9::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(58::SMALLINT, 9::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(55::SMALLINT, 9::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(63::SMALLINT, 9::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(64::SMALLINT, 9::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(33::SMALLINT, 9::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(22::SMALLINT, 9::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(61::SMALLINT, 9::SMALLINT, 'Faso'::TEXT, '
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

/*CrÚation des manches et duels*/
CALL registerManche(9::SMALLINT, '2022-02-28 06:30', INTERVAL '10m');
CALL registerDuel(31::SMALLINT, 9::SMALLINT, 141::SMALLINT, 26::SMALLINT, 58::SMALLINT, 26::SMALLINT);
CALL registerDuel(31::SMALLINT, 9::SMALLINT, 140::SMALLINT, 55::SMALLINT, 63::SMALLINT, 55::SMALLINT);
CALL registerDuel(31::SMALLINT, 9::SMALLINT, 140::SMALLINT, 64::SMALLINT, 33::SMALLINT, 64::SMALLINT);
CALL registerDuel(31::SMALLINT, 9::SMALLINT, 138::SMALLINT, 22::SMALLINT, 61::SMALLINT, 22::SMALLINT);
CALL registerManche(9::SMALLINT, '2022-02-28 06:42', INTERVAL '10m');
CALL registerDuel(32::SMALLINT, 9::SMALLINT, 139::SMALLINT, 26::SMALLINT, 55::SMALLINT, 26::SMALLINT);
CALL registerDuel(32::SMALLINT, 9::SMALLINT, 141::SMALLINT, 64::SMALLINT, 22::SMALLINT, 64::SMALLINT);
CALL registerManche(9::SMALLINT, '2022-02-28 06:54', INTERVAL '10m');
CALL registerDuel(33::SMALLINT, 9::SMALLINT, 139::SMALLINT, 26::SMALLINT, 64::SMALLINT, 26::SMALLINT);

/**Tournoi #10**/

/*CrÚation d'un juge dÚbutant'*/
CALL createMembre('Kher', 'Lyle', 'Lausanne');
CALL createJugeFromPersonne(142::SMALLINT, 0::SMALLINT);
CALL assignJudgeToTournoi(142::SMALLINT, 10::SMALLINT);

/*CrÚation des juges dont un organisateur*/
CALL createMembre('Kirby', 'Essie', 'Bienne');
CALL createJugeFromPersonne(143::SMALLINT, 200::SMALLINT);
CALL assignJudgeToTournoi(143::SMALLINT, 10::SMALLINT);
CALL assignJudgeAsOrganisateur(143::SMALLINT, 10::SMALLINT);

CALL createMembre('Sharples', 'Rodney', 'Bienne');
CALL createJugeFromPersonne(144::SMALLINT, 498::SMALLINT);
CALL assignJudgeToTournoi(144::SMALLINT, 10::SMALLINT);
CALL createMembre('Rogers', 'Karen', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(145::SMALLINT, 216::SMALLINT);
CALL assignJudgeToTournoi(145::SMALLINT, 10::SMALLINT);
CALL createMembre('Lee', 'Linda', 'Lausanne');
CALL createJugeFromPersonne(146::SMALLINT, 267::SMALLINT);
CALL assignJudgeToTournoi(146::SMALLINT, 10::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(48::SMALLINT, 10::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(28::SMALLINT, 10::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(52::SMALLINT, 10::SMALLINT, 'PÚtunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(35::SMALLINT, 10::SMALLINT, 'PÞre Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(56::SMALLINT, 10::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(15::SMALLINT, 10::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(34::SMALLINT, 10::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(47::SMALLINT, 10::SMALLINT, 'Faso'::TEXT, '
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

/*CrÚation des manches et duels*/
CALL registerManche(10::SMALLINT, '2022-07-03 10:00', INTERVAL '10m');
CALL registerDuel(34::SMALLINT, 10::SMALLINT, 144::SMALLINT, 48::SMALLINT, 28::SMALLINT, 48::SMALLINT);
CALL registerDuel(34::SMALLINT, 10::SMALLINT, 146::SMALLINT, 52::SMALLINT, 35::SMALLINT, 52::SMALLINT);
CALL registerDuel(34::SMALLINT, 10::SMALLINT, 143::SMALLINT, 56::SMALLINT, 15::SMALLINT, 56::SMALLINT);
CALL registerDuel(34::SMALLINT, 10::SMALLINT, 144::SMALLINT, 34::SMALLINT, 47::SMALLINT, 34::SMALLINT);
CALL registerManche(10::SMALLINT, '2022-07-03 10:12', INTERVAL '10m');
CALL registerDuel(35::SMALLINT, 10::SMALLINT, 144::SMALLINT, 48::SMALLINT, 52::SMALLINT, 48::SMALLINT);
CALL registerDuel(35::SMALLINT, 10::SMALLINT, 143::SMALLINT, 56::SMALLINT, 34::SMALLINT, 56::SMALLINT);
CALL registerManche(10::SMALLINT, '2022-07-03 10:24', INTERVAL '10m');
CALL registerDuel(36::SMALLINT, 10::SMALLINT, 145::SMALLINT, 48::SMALLINT, 56::SMALLINT, 48::SMALLINT);

/*Ajout du membre de service*/
CALL createMembre('Le Vert', 'Albert', 'Lausanne');
