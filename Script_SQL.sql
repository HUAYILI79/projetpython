import sqlite3

# Établir la connexion avec la base de données
conn = sqlite3.connect('boulangerie.db')
c = conn.cursor()

# Créer la table "Joueur"
c.execute('''CREATE TABLE Joueur
             (nom TEXT, prenom TEXT, age INTEGER)''')

# Insérer des données dans la table "Joueur"
c.execute("INSERT INTO Joueur VALUES (？,？,？)")


# Créer la table "Entreprise"
c.execute('''CREATE TABLE Entreprise
             (code INTEGER, nom TEXT, argent REAL, performance INTEGER, travailleurs INTEGER, matieres_premieres INTEGER, equipement INTEGER)''')

# Insérer des données dans la table "Entreprise"
c.execute("INSERT INTO Entreprise VALUES (01,'Ma boulangerie', 50000, ？, ？, ？, ？)")
c.execute("INSERT INTO Entreprise VALUES (02,'Mon café', 100000, ？, ？, ？, ？)")

# Créer la table "Ressource"
c.execute('''CREATE TABLE Ressource
             (code INTEGER, cout_travailleurs INTEGER, prix_matieres_premieres INTEGER, prix_equipement INTEGER)''')

# Insérer des données dans la table "Ressource"
c.execute("INSERT INTO Ressource VALUES (01, 1000, 2100,15000 )")

# Créer la table "Fournisseur"
c.execute('''CREATE TABLE Fournisseur
             (code INTEGER, nom TEXT, type_ressource TEXT)''')

# Insérer des données dans la table "Fournisseur"
c.execute("INSERT INTO Fournisseur VALUES (01,'MF', 'Farine')")
c.execute("INSERT INTO Fournisseur VALUES (02,'KFD', 'Grain de cafe')")
c.execute("INSERT INTO Fournisseur VALUES (03,'SG', 'Fruit')")
c.execute("INSERT INTO Fournisseur VALUES (04,'ROU', 'Viande')")

# Créer la table "Adversaire"
c.execute('''CREATE TABLE Adversaire
             (code INTEGER, nom TEXT, niveau INTEGER)''')

# Insérer des données dans la table "Adversaire"
c.execute("INSERT INTO Adversaire VALUES (01,'Sa', 30000)")

# Créer la table "Evenement"
c.execute('''CREATE TABLE Evenement
             (code INTEGER, type TEXT,effet INTEGER)''')

# Insérer des données dans la table "Evenement"
c.execute("INSERT INTO Evenement VALUES (01,'La diminution des prix des matières premières', 6000)")
c.execute("INSERT INTO Evenement VALUES (02,'L’augmentation des prix de l’énergie', -100)")
c.execute("INSERT INTO Evenement VALUES (03,'Nouveaux adversaires', -50)")

# Créer la table "Score"
c.execute('''CREATE TABLE Score
             (code INTEGER, nom_joueur TEXT,score REAL)''')

# Insérer des données dans la table "Score"
c.execute("INSERT INTO Score VALUES (01,?, ?)")
c.execute("INSERT INTO Score VALUES (02,'Sa', 30000)")



# Valider les modifications
conn.commit()

# Fermer la connexion
conn.close()




