import datetime, names, random
from tracemalloc import start

decks = {"Burkina" : 
"""3 Faceless Haven
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
1 Lotus Cobra""",

"Faso" : """
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
3 Flamescroll Celebrant // Revel in Silence""",

"Pétunia" : """1 Arlinn, the Packs Hope
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
2 Bereaved Survivor // Dauntless Avenger""",

"Père Castor" : """3 Skyclave Cleric // Skyclave Basilica
2 Umara Wizard // Umara Skyfalls
1 Kazandu Mammoth // Kazandu Valley
1 Furycalm Snarl
2 Valakut Awakening // Valakut Stoneforge
1 Lair of the Hydra
2 Turntimber Ascetic"""}

cities = ["Yverdon-les-Bains", "Yverdon-les-Bains", "Lausanne", "Bienne", "Fribourg", "Paris",
          "Kyiv", "Sion", "Sarcelles"];

tournaments = [8, 8, 16, 8, 32, 8, 32, 16, 8, 8]
tournaments_dates = [
    datetime.datetime(2022, 9, 11, 6, 0),
    datetime.datetime(2022, 1, 20, 12, 0),
    datetime.datetime(2022, 6, 1, 10, 0),
    datetime.datetime(2021, 12, 6, 10, 0),
    datetime.datetime(2022, 3, 30, 12, 0),
    datetime.datetime(2022, 4, 30, 12, 0),
    datetime.datetime(2022, 2, 8, 8, 0),
    datetime.datetime(2022, 4, 1, 10, 0),
    datetime.datetime(2022, 2, 28, 6, 30),
    datetime.datetime(2022, 7, 3, 10, 0),
]

def genTournament(tid, manche_cnt, starttime, juge, players):
    p = players.copy()

    print("\n/*Assignation du juge*/")
    jid = juge["id"]
    print(f"CALL assignJudgeToTournoi({jid}::SMALLINT, {tid}::SMALLINT);")

    print("\n/*Assignation de l'organisateur*/")
    print(f"CALL assignJudgeAsOrganisateur({jid}::SMALLINT, {tid}::SMALLINT);")

    print("\n/*Assignation des decks*/")
    for player in p:
        name = player["lastname"]
        firstname = player["firstname"]
        pid = player["id"]
        alldecks = list(decks.items())
        deck = random.choice(alldecks)
        deckname, cardlist = deck
        print(f"CALL createParticipantFromPersonne({pid}::SMALLINT, {tid}::SMALLINT, '{deckname}'::TEXT, '{cardlist}'::TEXT);")

    print("\n/*Création des manches et duels*/")
    curtime = starttime
    while len(p) > 1:
        timestr = curtime.strftime("%Y-%m-%d %H:%M")
        print(f"CALL registerManche({tid}::SMALLINT, '{timestr}', '10 minutes');")
        curtime += datetime.timedelta(minutes=10)
        j = 1
        while j < len(p):
            p1 = p[j-1]
            p2 = p[j]

            p1id = p1["id"]
            p2id = p2["id"]

            print(f"CALL registerDuel({manche_cnt}::SMALLINT, {tid}::SMALLINT, {jid}::SMALLINT, {p1id}::SMALLINT, {p2id}::SMALLINT, {p1id}::SMALLINT);")
            j += 2
        manche_cnt += 1
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
    print(f"CALL createJugeFromPersonne({id}::SMALLINT, {random.choice([1,2,3])}::INT);")


cnt_player = 1
cnt_manche = 1
players = []

print("/*Création des joueurs*/")
for i in range(64):
    new_player = genPlayer(cnt_player)
    printCreatePersonne(new_player)

    players.append(new_player)
    cnt_player += 1

print("\n/*Peuplage des tournois */\n")
for tid in range(1, len(tournaments) + 1):
    print(f"/*Tournoi #{tid}*/")

    print("/*Création du juge*/")
    juge = genPlayer(cnt_player);
    printJudge(juge)
    cnt_player += 1

    cur_players = random.sample(players, tournaments[tid-1])
    genTournament(tid, cnt_manche, tournaments_dates[tid-1], juge, cur_players)
    print()
