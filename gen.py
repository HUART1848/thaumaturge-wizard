import names, random

decks = {"Burkina" : 
"""3 Faceless Haven
1 Brightclimb Pathway
4 Famished Foragers
1 Tundra Fumarole
1 Ardent Electromancer
3 Plains
3 Mountain
3 Swamp
3 Island
2 Forest
4 Temple of the Dragon Queen
1 Volatile Fjord
4 Torens, Fist of the Angels
1 Vault Robber
1 Selhoff Entomber
1 Jerren, Corrupted Bishop
2 Replicating Ring
1 Team Pennant
3 Borrowed Time
4 Contact Other Plane
1 Ghoulcaller's Harvest
3 Secret Rendezvous
4 Curse of Surveillance
3 Arni Slays the Troll
2 The Celestus
1 Lotus Cobra""",

"Faso" : """
1 Old-Growth Troll
2 Blackbloom Rogue // Blackbloom Bog
4 Grinning Ignus
4 Kazuul's Fury // Kazuul's Cliffs
3 Plains
3 Mountain
3 Swamp
2 Island
2 Forest
4 Gates of Istfell
2 The Biblioplex
1 Deserted Beach
3 Fearless Fledgling
2 Ambitious Farmhand // Seasoned Cathar
1 Mirrorhall Mimic // Ghastly Mimicry
1 Spare Supplies
1 Poet's Quill
2 Dramatic Finale
1 Deadly Dispute
4 Elemental Masterpiece
4 Ancient Lumberknot
2 Introduction to Prophecy
4 Panicked Bystander // Cackling Culprit
1 Surtland Flinger
3 Flamescroll Celebrant // Revel in Silence""",

"Pétunia" : """1 Arlinn, the Pack's Hope
1 Glasspool Mimic // Glasspool Shore
3 Shattered Sanctum
4 Darkbore Pathway // Slitherbore Pathway
1 Pelakka Predation // Pelakka Caverns
3 Plains
3 Mountain
3 Swamp
3 Island
2 Forest
1 Cave of the Frost Dragon
2 Resistance Squad
2 Bird Admirer // Wing Shredder
4 Outland Liberator // Frenzied Trapbreaker
1 Valentin, Dean of the Vein // Lisette, Dean of the Root
2 Cliffhaven Sell-Sword
1 Hopeful Initiate
1 Blood Fountain
1 Mystic Skull // Mystic Monstrosity
1 Relic Golem
3 Borrowed Time
3 Augmenter Pugilist // Echoing Equation
3 Sudden Breakthrough
1 Delver of Secrets // Insectile Aberration
4 Nebelgast Intruder
2 Aberrant Mind Sorcerer
2 Owlbear
2 Bereaved Survivor // Dauntless Avenger""",

"Père Castor" : """3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
3 Plains
3 Mountain
3 Swamp
3 Island
2 Forest
4 Clearwater Pathway // Murkwater Pathway
2 Soothsayer Adept
2 Spectacle Mage
3 Candlegrove Witch
4 Lunarch Veteran // Luminous Phantom
1 Odric, Blood-Cursed
3 Trickster's Talisman
1 Circle of Confinement
2 Cradle of Safety
3 Revenge of the Drowned
3 Closing Statement
2 Confounding Conundrum
1 Chilling Trap
1 Alluring Suitor // Deadly Dancer
2 Feed the Serpent
2 Turntimber Ascetic"""}

cities = ["Yverdon-les-Bains", "Yverdon-les-Bains", "Lausanne", "Bienne", "Fribourg", "Paris",
          "Kyiv", "Sion", "Sarcelles"];

tournaments = [8, 8, 16, 8, 32, 8, 32, 16, 8, 8]

n_judges = 10 * 3;
n_players = 8 + 8 + 16 + 8 + 32 + 8 + 32 + 16 + 8 + 8

def genTournament(tid, juge, players):
    p = players.copy()
    while len(p) > 1:
        print(f"CALL registerManche({tid}::SMALLINT, '2020-01-01 12:00', '10 minutes');")
        j = 1
        while j < len(p):
            p1 = p[j-1]
            p2 = p[j]

            p1name = p1["lastname"]
            p1firstname = p1["firstname"]
            p1id = p1["id"]

            p2name = p2["lastname"]
            p2firstname = p2["firstname"]
            p2id = p2["id"]

            print(f"registerDuel")
            j += 2
        p = p[0:len(p):2]

def genPlayer(cnt):
    return {"id" : cnt, 
            "firstname" : names.get_first_name(),
            "lastname" : names.get_last_name(),
            "ville" : random.choice(cities)}

def printCreatePersonne(p):
    name = p["lastname"]
    firstname = p["firstname"]
    ville = p["ville"]
    print(f"CALL createPersonne('{name}', '{firstname}', '{ville}');")

def printJudge(j):
    printCreatePersonne(j)
    id = j["id"]
    print(f"CALL createJudgeFromPersonne({id}::SMALLINT, {random.choice([1,2,3])}::INT);")


cnt = 1
players = []
for i in range(64):
    players.append(genPlayer(cnt))
    cnt += 1

for i in range(len(tournaments)):
    print(f"/*Tournoi #{i+1}*/")

    print("/*Juge*/")
    juge = genPlayer(cnt);
    printJudge(juge)
    cnt += 1

    cur_players = random.sample(players, tournaments[i]+1)
    genTournament(i+1, juge, cur_players)
    print()
