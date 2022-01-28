/*Création des joueurs*/
CALL createPersonne('Goatley', 'Janet', 'Yverdon-les-Bains');
CALL createPersonne('Martin', 'Kristen', 'Yverdon-les-Bains');
CALL createPersonne('Gentry', 'Lee', 'Fribourg');
CALL createPersonne('Hartley', 'Carolyn', 'Bienne');
CALL createPersonne('Smith', 'Lawrence', 'Kyiv');
CALL createPersonne('Clyne', 'Brandi', 'Sion');
CALL createPersonne('Paoli', 'Pearl', 'Sion');
CALL createPersonne('Peppers', 'Elton', 'Lausanne');
CALL createPersonne('Baker', 'Roberta', 'Kyiv');
CALL createPersonne('Swift', 'David', 'Lausanne');
CALL createPersonne('Hanson', 'Thomas', 'Yverdon-les-Bains');
CALL createPersonne('Eppinger', 'Louvenia', 'Lausanne');
CALL createPersonne('Boatwright', 'Sherry', 'Sion');
CALL createPersonne('Byrne', 'Theresa', 'Bienne');
CALL createPersonne('Pratt', 'Gary', 'Kyiv');
CALL createPersonne('Brough', 'Eric', 'Sion');
CALL createPersonne('Hein', 'Megan', 'Bienne');
CALL createPersonne('Sell', 'William', 'Sarcelles');
CALL createPersonne('Martin', 'Tessie', 'Yverdon-les-Bains');
CALL createPersonne('Nguyen', 'Paul', 'Lausanne');
CALL createPersonne('Unterreiner', 'Gregory', 'Bienne');
CALL createPersonne('Karaffa', 'Catherine', 'Kyiv');
CALL createPersonne('Brown', 'Jennifer', 'Kyiv');
CALL createPersonne('Milian', 'John', 'Yverdon-les-Bains');
CALL createPersonne('Bristle', 'Lula', 'Sarcelles');
CALL createPersonne('Orozco', 'David', 'Fribourg');
CALL createPersonne('Dininno', 'Norma', 'Sarcelles');
CALL createPersonne('Williford', 'Susan', 'Yverdon-les-Bains');
CALL createPersonne('Walker', 'Mike', 'Kyiv');
CALL createPersonne('Meza', 'Anthony', 'Yverdon-les-Bains');
CALL createPersonne('Derouen', 'Shari', 'Kyiv');
CALL createPersonne('King', 'Gene', 'Yverdon-les-Bains');
CALL createPersonne('Milton', 'Mary', 'Bienne');
CALL createPersonne('Johnson', 'Benito', 'Lausanne');
CALL createPersonne('Wilkin', 'Patricia', 'Yverdon-les-Bains');
CALL createPersonne('Cuevas', 'Charles', 'Fribourg');
CALL createPersonne('Berg', 'Randall', 'Paris');
CALL createPersonne('Surdam', 'Antone', 'Sarcelles');
CALL createPersonne('Jones', 'Ervin', 'Sarcelles');
CALL createPersonne('Reeves', 'Ruby', 'Fribourg');
CALL createPersonne('Johnston', 'Rafael', 'Sarcelles');
CALL createPersonne('Miller', 'Charles', 'Yverdon-les-Bains');
CALL createPersonne('Manera', 'Kevin', 'Paris');
CALL createPersonne('Ford', 'Amy', 'Fribourg');
CALL createPersonne('Duggan', 'John', 'Paris');
CALL createPersonne('Obrien', 'Jason', 'Sarcelles');
CALL createPersonne('Conrad', 'Evan', 'Fribourg');
CALL createPersonne('Weakland', 'Thaddeus', 'Yverdon-les-Bains');
CALL createPersonne('Tran', 'Elizabeth', 'Lausanne');
CALL createPersonne('Potter', 'Clarence', 'Yverdon-les-Bains');
CALL createPersonne('Pugh', 'Candace', 'Kyiv');
CALL createPersonne('Voigt', 'Christal', 'Yverdon-les-Bains');
CALL createPersonne('Dighton', 'Brian', 'Sion');
CALL createPersonne('Livesay', 'Teresa', 'Lausanne');
CALL createPersonne('Hersha', 'Phyllis', 'Sarcelles');
CALL createPersonne('Simmons', 'Amber', 'Yverdon-les-Bains');
CALL createPersonne('Reda', 'Raymond', 'Yverdon-les-Bains');
CALL createPersonne('Sharrer', 'Samantha', 'Kyiv');
CALL createPersonne('Espinoza', 'Katrina', 'Lausanne');
CALL createPersonne('Santiago', 'Colin', 'Yverdon-les-Bains');
CALL createPersonne('Boudreau', 'David', 'Yverdon-les-Bains');
CALL createPersonne('Dunn', 'Norman', 'Bienne');
CALL createPersonne('Price', 'Kimberly', 'Bienne');
CALL createPersonne('Galayda', 'Laura', 'Sarcelles');

/*Peuplage des tournois */

/*Tournoi #1*/
/*Création du juge*/
CALL createPersonne('Levine', 'Arthur', 'Paris');
CALL createJugeFromPersonne(65::SMALLINT, 2::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(65::SMALLINT, 1::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(65::SMALLINT, 1::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(2::SMALLINT, 1::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(45::SMALLINT, 1::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(34::SMALLINT, 1::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(8::SMALLINT, 1::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(9::SMALLINT, 1::SMALLINT, 'Faso'::TEXT, '
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
CALL registerManche(1::SMALLINT, '2022-09-11 06:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 2::SMALLINT, 45::SMALLINT, 2::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 12::SMALLINT, 34::SMALLINT, 12::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 27::SMALLINT, 8::SMALLINT, 27::SMALLINT);
CALL registerDuel(1::SMALLINT, 1::SMALLINT, 65::SMALLINT, 53::SMALLINT, 9::SMALLINT, 53::SMALLINT);
CALL registerManche(1::SMALLINT, '2022-09-11 06:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 1::SMALLINT, 65::SMALLINT, 2::SMALLINT, 12::SMALLINT, 2::SMALLINT);
CALL registerDuel(2::SMALLINT, 1::SMALLINT, 65::SMALLINT, 27::SMALLINT, 53::SMALLINT, 27::SMALLINT);
CALL registerManche(1::SMALLINT, '2022-09-11 06:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 1::SMALLINT, 65::SMALLINT, 2::SMALLINT, 27::SMALLINT, 2::SMALLINT);

/*Tournoi #2*/
/*Création du juge*/
CALL createPersonne('Clines', 'James', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(66::SMALLINT, 1::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(66::SMALLINT, 2::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(66::SMALLINT, 2::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(58::SMALLINT, 2::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(50::SMALLINT, 2::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(14::SMALLINT, 2::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(33::SMALLINT, 2::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(8::SMALLINT, 2::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(28::SMALLINT, 2::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(39::SMALLINT, 2::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*Création des manches et duels*/
CALL registerManche(2::SMALLINT, '2022-01-20 12:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 58::SMALLINT, 50::SMALLINT, 58::SMALLINT);
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 22::SMALLINT, 14::SMALLINT, 22::SMALLINT);
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 33::SMALLINT, 8::SMALLINT, 33::SMALLINT);
CALL registerDuel(1::SMALLINT, 2::SMALLINT, 66::SMALLINT, 28::SMALLINT, 39::SMALLINT, 28::SMALLINT);
CALL registerManche(2::SMALLINT, '2022-01-20 12:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 2::SMALLINT, 66::SMALLINT, 58::SMALLINT, 22::SMALLINT, 58::SMALLINT);
CALL registerDuel(2::SMALLINT, 2::SMALLINT, 66::SMALLINT, 33::SMALLINT, 28::SMALLINT, 33::SMALLINT);
CALL registerManche(2::SMALLINT, '2022-01-20 12:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 2::SMALLINT, 66::SMALLINT, 58::SMALLINT, 33::SMALLINT, 58::SMALLINT);

/*Tournoi #3*/
/*Création du juge*/
CALL createPersonne('Staten', 'Thomas', 'Sion');
CALL createJugeFromPersonne(67::SMALLINT, 3::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(67::SMALLINT, 3::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(67::SMALLINT, 3::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(42::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(23::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(50::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(10::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(21::SMALLINT, 3::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(55::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(31::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(22::SMALLINT, 3::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(13::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(32::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(6::SMALLINT, 3::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(61::SMALLINT, 3::SMALLINT, 'Faso'::TEXT, '
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
CALL registerManche(3::SMALLINT, '2022-06-01 10:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 42::SMALLINT, 23::SMALLINT, 42::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 50::SMALLINT, 39::SMALLINT, 50::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 29::SMALLINT, 10::SMALLINT, 29::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 21::SMALLINT, 55::SMALLINT, 21::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 31::SMALLINT, 22::SMALLINT, 31::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 13::SMALLINT, 15::SMALLINT, 13::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 34::SMALLINT, 32::SMALLINT, 34::SMALLINT);
CALL registerDuel(1::SMALLINT, 3::SMALLINT, 67::SMALLINT, 6::SMALLINT, 61::SMALLINT, 6::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 42::SMALLINT, 50::SMALLINT, 42::SMALLINT);
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 29::SMALLINT, 21::SMALLINT, 29::SMALLINT);
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 31::SMALLINT, 13::SMALLINT, 31::SMALLINT);
CALL registerDuel(2::SMALLINT, 3::SMALLINT, 67::SMALLINT, 34::SMALLINT, 6::SMALLINT, 34::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 3::SMALLINT, 67::SMALLINT, 42::SMALLINT, 29::SMALLINT, 42::SMALLINT);
CALL registerDuel(3::SMALLINT, 3::SMALLINT, 67::SMALLINT, 31::SMALLINT, 34::SMALLINT, 31::SMALLINT);
CALL registerManche(3::SMALLINT, '2022-06-01 10:30', INTERVAL '10m');
CALL registerDuel(4::SMALLINT, 3::SMALLINT, 67::SMALLINT, 42::SMALLINT, 31::SMALLINT, 42::SMALLINT);

/*Tournoi #4*/
/*Création du juge*/
CALL createPersonne('Murphy', 'Crystal', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(68::SMALLINT, 3::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(68::SMALLINT, 4::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(68::SMALLINT, 4::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(5::SMALLINT, 4::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(26::SMALLINT, 4::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(25::SMALLINT, 4::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(52::SMALLINT, 4::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(11::SMALLINT, 4::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(53::SMALLINT, 4::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(6::SMALLINT, 4::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(34::SMALLINT, 4::SMALLINT, 'Faso'::TEXT, '
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
CALL registerManche(4::SMALLINT, '2021-12-06 10:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 5::SMALLINT, 26::SMALLINT, 5::SMALLINT);
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 25::SMALLINT, 52::SMALLINT, 25::SMALLINT);
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 11::SMALLINT, 53::SMALLINT, 11::SMALLINT);
CALL registerDuel(1::SMALLINT, 4::SMALLINT, 68::SMALLINT, 6::SMALLINT, 34::SMALLINT, 6::SMALLINT);
CALL registerManche(4::SMALLINT, '2021-12-06 10:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 4::SMALLINT, 68::SMALLINT, 5::SMALLINT, 25::SMALLINT, 5::SMALLINT);
CALL registerDuel(2::SMALLINT, 4::SMALLINT, 68::SMALLINT, 11::SMALLINT, 6::SMALLINT, 11::SMALLINT);
CALL registerManche(4::SMALLINT, '2021-12-06 10:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 4::SMALLINT, 68::SMALLINT, 5::SMALLINT, 11::SMALLINT, 5::SMALLINT);

/*Tournoi #5*/
/*Création du juge*/
CALL createPersonne('Chiapetti', 'Matt', 'Lausanne');
CALL createJugeFromPersonne(69::SMALLINT, 3::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(69::SMALLINT, 5::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(69::SMALLINT, 5::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(17::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(14::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(27::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(40::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(58::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(47::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(39::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(38::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(4::SMALLINT, 5::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(51::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
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
CALL createParticipantFromPersonne(7::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(3::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(52::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(60::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(63::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(20::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(29::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(19::SMALLINT, 5::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(44::SMALLINT, 5::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(31::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(32::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(64::SMALLINT, 5::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*Création des manches et duels*/
CALL registerManche(5::SMALLINT, '2022-03-30 12:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 17::SMALLINT, 14::SMALLINT, 17::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 27::SMALLINT, 40::SMALLINT, 27::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 58::SMALLINT, 47::SMALLINT, 58::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 1::SMALLINT, 13::SMALLINT, 1::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 6::SMALLINT, 39::SMALLINT, 6::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 38::SMALLINT, 4::SMALLINT, 38::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 51::SMALLINT, 9::SMALLINT, 51::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 50::SMALLINT, 7::SMALLINT, 50::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 46::SMALLINT, 3::SMALLINT, 46::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 25::SMALLINT, 52::SMALLINT, 25::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 55::SMALLINT, 60::SMALLINT, 55::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 63::SMALLINT, 20::SMALLINT, 63::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 22::SMALLINT, 29::SMALLINT, 22::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 19::SMALLINT, 44::SMALLINT, 19::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 41::SMALLINT, 31::SMALLINT, 41::SMALLINT);
CALL registerDuel(1::SMALLINT, 5::SMALLINT, 69::SMALLINT, 32::SMALLINT, 64::SMALLINT, 32::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 17::SMALLINT, 27::SMALLINT, 17::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 58::SMALLINT, 1::SMALLINT, 58::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 6::SMALLINT, 38::SMALLINT, 6::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 51::SMALLINT, 50::SMALLINT, 51::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 46::SMALLINT, 25::SMALLINT, 46::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 55::SMALLINT, 63::SMALLINT, 55::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 22::SMALLINT, 19::SMALLINT, 22::SMALLINT);
CALL registerDuel(2::SMALLINT, 5::SMALLINT, 69::SMALLINT, 41::SMALLINT, 32::SMALLINT, 41::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 17::SMALLINT, 58::SMALLINT, 17::SMALLINT);
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 6::SMALLINT, 51::SMALLINT, 6::SMALLINT);
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 46::SMALLINT, 55::SMALLINT, 46::SMALLINT);
CALL registerDuel(3::SMALLINT, 5::SMALLINT, 69::SMALLINT, 22::SMALLINT, 41::SMALLINT, 22::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:30', INTERVAL '10m');
CALL registerDuel(4::SMALLINT, 5::SMALLINT, 69::SMALLINT, 17::SMALLINT, 6::SMALLINT, 17::SMALLINT);
CALL registerDuel(4::SMALLINT, 5::SMALLINT, 69::SMALLINT, 46::SMALLINT, 22::SMALLINT, 46::SMALLINT);
CALL registerManche(5::SMALLINT, '2022-03-30 12:40', INTERVAL '10m');
CALL registerDuel(5::SMALLINT, 5::SMALLINT, 69::SMALLINT, 17::SMALLINT, 46::SMALLINT, 17::SMALLINT);

/*Tournoi #6*/
/*Création du juge*/
CALL createPersonne('Dickens', 'Delmar', 'Sarcelles');
CALL createJugeFromPersonne(70::SMALLINT, 1::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(70::SMALLINT, 6::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(70::SMALLINT, 6::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(22::SMALLINT, 6::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(15::SMALLINT, 6::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(31::SMALLINT, 6::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(2::SMALLINT, 6::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(41::SMALLINT, 6::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(58::SMALLINT, 6::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(46::SMALLINT, 6::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*Création des manches et duels*/
CALL registerManche(6::SMALLINT, '2022-04-30 12:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 22::SMALLINT, 15::SMALLINT, 22::SMALLINT);
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 31::SMALLINT, 2::SMALLINT, 31::SMALLINT);
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 41::SMALLINT, 26::SMALLINT, 41::SMALLINT);
CALL registerDuel(1::SMALLINT, 6::SMALLINT, 70::SMALLINT, 58::SMALLINT, 46::SMALLINT, 58::SMALLINT);
CALL registerManche(6::SMALLINT, '2022-04-30 12:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 6::SMALLINT, 70::SMALLINT, 22::SMALLINT, 31::SMALLINT, 22::SMALLINT);
CALL registerDuel(2::SMALLINT, 6::SMALLINT, 70::SMALLINT, 41::SMALLINT, 58::SMALLINT, 41::SMALLINT);
CALL registerManche(6::SMALLINT, '2022-04-30 12:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 6::SMALLINT, 70::SMALLINT, 22::SMALLINT, 41::SMALLINT, 22::SMALLINT);

/*Tournoi #7*/
/*Création du juge*/
CALL createPersonne('Brown', 'Mirta', 'Yverdon-les-Bains');
CALL createJugeFromPersonne(71::SMALLINT, 2::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(71::SMALLINT, 7::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(71::SMALLINT, 7::SMALLINT);

/*Assignation des decks*/
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
CALL createParticipantFromPersonne(4::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(38::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(33::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(31::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(57::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(47::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(15::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(55::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(7::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(30::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(24::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(58::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(41::SMALLINT, 7::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(2::SMALLINT, 7::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(54::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
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
CALL createParticipantFromPersonne(17::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(29::SMALLINT, 7::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(26::SMALLINT, 7::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
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

/*Création des manches et duels*/
CALL registerManche(7::SMALLINT, '2022-02-08 08:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 25::SMALLINT, 4::SMALLINT, 25::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 38::SMALLINT, 33::SMALLINT, 38::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 31::SMALLINT, 57::SMALLINT, 31::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 13::SMALLINT, 9::SMALLINT, 13::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 47::SMALLINT, 15::SMALLINT, 47::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 55::SMALLINT, 7::SMALLINT, 55::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 30::SMALLINT, 44::SMALLINT, 30::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 24::SMALLINT, 32::SMALLINT, 24::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 40::SMALLINT, 46::SMALLINT, 40::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 58::SMALLINT, 41::SMALLINT, 58::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 19::SMALLINT, 2::SMALLINT, 19::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 1::SMALLINT, 54::SMALLINT, 1::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 37::SMALLINT, 17::SMALLINT, 37::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 64::SMALLINT, 29::SMALLINT, 64::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 22::SMALLINT, 61::SMALLINT, 22::SMALLINT);
CALL registerDuel(1::SMALLINT, 7::SMALLINT, 71::SMALLINT, 26::SMALLINT, 11::SMALLINT, 26::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 25::SMALLINT, 38::SMALLINT, 25::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 31::SMALLINT, 13::SMALLINT, 31::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 47::SMALLINT, 55::SMALLINT, 47::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 30::SMALLINT, 24::SMALLINT, 30::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 40::SMALLINT, 58::SMALLINT, 40::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 19::SMALLINT, 1::SMALLINT, 19::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 37::SMALLINT, 64::SMALLINT, 37::SMALLINT);
CALL registerDuel(2::SMALLINT, 7::SMALLINT, 71::SMALLINT, 22::SMALLINT, 26::SMALLINT, 22::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 25::SMALLINT, 31::SMALLINT, 25::SMALLINT);
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 47::SMALLINT, 30::SMALLINT, 47::SMALLINT);
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 40::SMALLINT, 19::SMALLINT, 40::SMALLINT);
CALL registerDuel(3::SMALLINT, 7::SMALLINT, 71::SMALLINT, 37::SMALLINT, 22::SMALLINT, 37::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:30', INTERVAL '10m');
CALL registerDuel(4::SMALLINT, 7::SMALLINT, 71::SMALLINT, 25::SMALLINT, 47::SMALLINT, 25::SMALLINT);
CALL registerDuel(4::SMALLINT, 7::SMALLINT, 71::SMALLINT, 40::SMALLINT, 37::SMALLINT, 40::SMALLINT);
CALL registerManche(7::SMALLINT, '2022-02-08 08:40', INTERVAL '10m');
CALL registerDuel(5::SMALLINT, 7::SMALLINT, 71::SMALLINT, 25::SMALLINT, 40::SMALLINT, 25::SMALLINT);

/*Tournoi #8*/
/*Création du juge*/
CALL createPersonne('Jimenez', 'Julio', 'Sarcelles');
CALL createJugeFromPersonne(72::SMALLINT, 3::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(72::SMALLINT, 8::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(72::SMALLINT, 8::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(40::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(52::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(15::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(16::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(36::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(21::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(5::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(50::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(61::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(24::SMALLINT, 8::SMALLINT, 'Faso'::TEXT, '
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
CALL createParticipantFromPersonne(18::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(42::SMALLINT, 8::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(38::SMALLINT, 8::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(13::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(11::SMALLINT, 8::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 40::SMALLINT, 52::SMALLINT, 40::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 15::SMALLINT, 16::SMALLINT, 15::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 53::SMALLINT, 36::SMALLINT, 53::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 21::SMALLINT, 5::SMALLINT, 21::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 50::SMALLINT, 61::SMALLINT, 50::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 24::SMALLINT, 18::SMALLINT, 24::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 42::SMALLINT, 38::SMALLINT, 42::SMALLINT);
CALL registerDuel(1::SMALLINT, 8::SMALLINT, 72::SMALLINT, 13::SMALLINT, 11::SMALLINT, 13::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 40::SMALLINT, 15::SMALLINT, 40::SMALLINT);
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 53::SMALLINT, 21::SMALLINT, 53::SMALLINT);
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 50::SMALLINT, 24::SMALLINT, 50::SMALLINT);
CALL registerDuel(2::SMALLINT, 8::SMALLINT, 72::SMALLINT, 42::SMALLINT, 13::SMALLINT, 42::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 8::SMALLINT, 72::SMALLINT, 40::SMALLINT, 53::SMALLINT, 40::SMALLINT);
CALL registerDuel(3::SMALLINT, 8::SMALLINT, 72::SMALLINT, 50::SMALLINT, 42::SMALLINT, 50::SMALLINT);
CALL registerManche(8::SMALLINT, '2022-04-01 10:30', INTERVAL '10m');
CALL registerDuel(4::SMALLINT, 8::SMALLINT, 72::SMALLINT, 40::SMALLINT, 50::SMALLINT, 40::SMALLINT);

/*Tournoi #9*/
/*Création du juge*/
CALL createPersonne('Trimpe', 'Sharon', 'Paris');
CALL createJugeFromPersonne(73::SMALLINT, 3::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(73::SMALLINT, 9::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(73::SMALLINT, 9::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(30::SMALLINT, 9::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(5::SMALLINT, 9::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(33::SMALLINT, 9::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(39::SMALLINT, 9::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(2::SMALLINT, 9::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
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
CALL createParticipantFromPersonne(54::SMALLINT, 9::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL registerManche(9::SMALLINT, '2022-02-28 06:30', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 30::SMALLINT, 5::SMALLINT, 30::SMALLINT);
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 33::SMALLINT, 39::SMALLINT, 33::SMALLINT);
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 2::SMALLINT, 45::SMALLINT, 2::SMALLINT);
CALL registerDuel(1::SMALLINT, 9::SMALLINT, 73::SMALLINT, 62::SMALLINT, 54::SMALLINT, 62::SMALLINT);
CALL registerManche(9::SMALLINT, '2022-02-28 06:40', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 9::SMALLINT, 73::SMALLINT, 30::SMALLINT, 33::SMALLINT, 30::SMALLINT);
CALL registerDuel(2::SMALLINT, 9::SMALLINT, 73::SMALLINT, 2::SMALLINT, 62::SMALLINT, 2::SMALLINT);
CALL registerManche(9::SMALLINT, '2022-02-28 06:50', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 9::SMALLINT, 73::SMALLINT, 30::SMALLINT, 2::SMALLINT, 30::SMALLINT);

/*Tournoi #10*/
/*Création du juge*/
CALL createPersonne('Amo', 'Aurelia', 'Kyiv');
CALL createJugeFromPersonne(74::SMALLINT, 1::INT);

/*Assignation du juge*/
CALL assignJudgeToTournoi(74::SMALLINT, 10::SMALLINT);

/*Assignation de l'organisateur*/
CALL assignJudgeAsOrganisateur(74::SMALLINT, 10::SMALLINT);

/*Assignation des decks*/
CALL createParticipantFromPersonne(47::SMALLINT, 10::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(4::SMALLINT, 10::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(21::SMALLINT, 10::SMALLINT, 'Burkina'::TEXT, '3 Faceless Haven
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
CALL createParticipantFromPersonne(18::SMALLINT, 10::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(63::SMALLINT, 10::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(5::SMALLINT, 10::SMALLINT, 'Pétunia'::TEXT, '1 Arlinn, the Packs Hope
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
CALL createParticipantFromPersonne(24::SMALLINT, 10::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);
CALL createParticipantFromPersonne(55::SMALLINT, 10::SMALLINT, 'Père Castor'::TEXT, '3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic'::TEXT);

/*Création des manches et duels*/
CALL registerManche(10::SMALLINT, '2022-07-03 10:00', INTERVAL '10m');
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 47::SMALLINT, 4::SMALLINT, 47::SMALLINT);
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 21::SMALLINT, 18::SMALLINT, 21::SMALLINT);
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 63::SMALLINT, 5::SMALLINT, 63::SMALLINT);
CALL registerDuel(1::SMALLINT, 10::SMALLINT, 74::SMALLINT, 24::SMALLINT, 55::SMALLINT, 24::SMALLINT);
CALL registerManche(10::SMALLINT, '2022-07-03 10:10', INTERVAL '10m');
CALL registerDuel(2::SMALLINT, 10::SMALLINT, 74::SMALLINT, 47::SMALLINT, 21::SMALLINT, 47::SMALLINT);
CALL registerDuel(2::SMALLINT, 10::SMALLINT, 74::SMALLINT, 63::SMALLINT, 24::SMALLINT, 63::SMALLINT);
CALL registerManche(10::SMALLINT, '2022-07-03 10:20', INTERVAL '10m');
CALL registerDuel(3::SMALLINT, 10::SMALLINT, 74::SMALLINT, 47::SMALLINT, 63::SMALLINT, 47::SMALLINT);

