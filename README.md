NO CODE HERE BECAUSE DATAS CAN NOT BE PUBLIC

## Plan
### I - Exercice 1 : Revue de Littérature
### II - Exercice 2 : Problématique et protocole
### III - Exercice 3 : Analyse quantitative


# I - Exercice 1 : Revue de Littérature

````
./Youtube_algorithm_analyse/"I - Revue Litterature"/EXERCICE1_FINAL.pdf //document complet
````

#### 1. Fonctionnement des systèmes de recommandations
- 1.1 Typologie des systèmes de recommandation
- 1.2 Application d’un système de recommandation collaborative-filtered
- 1.3 Application d’un système de recommandation content-based
#### 2. Fonctionnement du système de recommandations de YouTube
- 2.1 Présentation du système de recommandation YouTube
- 2.2 Un système de recommandation des plus sophistiqués
- 2.3 Focus sur le Up Next Panel
#### 3. Valeur crée par les systèmes de recommandations
- 3.1 La valeur perçue par l’utilisateur
- 3.2 La valeur économique des RS
#### 4. La difficile modération des plateformes
- 4.1 Le sensationnalisme stimulerait l’engagement des utilisateurs
- 4.2 Le conspirationnisme, et les echo chambers sur YouTube
- 4.3 La modération de YouTube
#### 5. Transparence et Régulation
- 5.1 La régulation européenne des services en ligne
- 5.2 Le projet européen de régulation sur les systèmes de recommandation
- 5.3 La régulation chinoise des systèmes de recommandation 


# II - Exercice 2 : Problématique et protocole

**Problématique** : YouTube recommande-t-il davantage les vidéos rémunératrices ?
Est-ce qu’une vidéo rapportant plus d’argent est susceptible d’être davantage recommandée ?

````
//NON PUBLIC ./Youtube_algorithm_analyse/"II - Problématique et protocole"/EXERCICE2_FINAL.pdf //document complet
./Youtube_algorithm_analyse/"II - Problématique et protocole"/EMMA_BOURDIT_SOUTENANCE1_MEMOIRE.pdf //Soutenance 1
````

#### 1. Problématique
#### 2. Fonctionnement de la monétisation
- 2.1 Grades de monétisation : vidéos monétisées (1-3 pubs), limitées, inéligibles, et démonétisées
- 2.2 Le CPM
- 2.3 Le RPM
#### 3. Présentation des données
- 3.1 Quelques données fournies par Youtube pour chaque vidéo
- 3.2 Exemple sur la vidéo “Je crack l’algorithme YouTube”
- 3.3 Comment connaître le taux de recommandation d’une vidéo ?
#### 4. Protocole de récupération des données
- 4.1 Méthodologie de contact
- 4.2 Confidentialité


# III - Exercice 3 : Analyse quantitative

#### 1. Préparer le protocole
#### 2. Récupérer données

##### 2.1 Savoir quelle API utiliser + créer un projet

deux APIs permettent aux développeurs de récupérer des données YouTube Analytics : YouTube Analytics API & YouTube Reporting API

 |YouTube Analytics API|YouTube Reporting API|
 |------|------|
 | = prend en charge les requêtes ciblées en temps réel pour générer des rapports YouTube Analytics personnalisés, chaque demande de l'API spécifie la plage de dates pour laquelle les données seront renvoyées | = récupère des rapports groupés contenant des données YouTube Analytics, Chaque rapport contient un ensemble prédéfini de champs. Chaque rapport contient des données pour une période unique de 24 heures.|
 
 Les rapports que renvoient les APIs contiennent deux types de données :
 - dimensions = critère qui permet d'agréger les données (date, country...)
 - métriques = mesure l'activité (nombre de j'aime, performances des annonces pub...)

Créer un projet dans Google Cloud
 
 ##### 2.2 S'authentifier
Aller dans credentials [ici](https://console.cloud.google.com/apis/credentials?project=youtube-research-dissertation)
- create a credential
- OAuth Client ID
- copier le client_secrets.json dans mon directory où je travaille

OAuth consent screen > + ADD USERs : [ici](https://console.cloud.google.com/apis/credentials/consent?project=youtube-research-dissertation) ==> ajouter l'adresse mail avec laquelle on va se connecter

 ##### 2.3 lancer une query test

````
pip install --upgrade google-api-python-client
pip install --upgrade google-auth google-auth-oauthlib google-auth-httplib2
sudo pip install google-auth-oauthlib
python yt_analytics_v2.py
==> copier coller l'URL > cliquer sur le compte YouTube > continuer > autoriser > copier le code autorisation > le rentrer dans la console
==> le json s'imprime dans le terminal

````
Tutoriel pour faire la première query : [ici](https://developers.google.com/youtube/analytics/reference/reports/query?apix_params=%7B%22dimensions%22%3A%22video%22%2C%22endDate%22%3A%222018-05-01%22%2C%22ids%22%3A%22channel%3D%3DMINE%22%2C%22maxResults%22%3A10%2C%22metrics%22%3A%22estimatedMinutesWatched%2Cviews%2Clikes%2CsubscribersGained%22%2C%22sort%22%3A%22-estimatedMinutesWatched%22%2C%22startDate%22%3A%222017-01-01%22%7D#python)

 ##### 2.4 Créer la bonne query
Channel_id ?
YouTube Studio > Paramètres > Chaîne > Paramètres avancés > Gérer votre compte YouTube > Paramètres avancés

Pour récupérer des metrics par jour pour une video :
`````
        dimensions="day",
        endDate="2021-01-27",
        filters="video==pzXOgXmO3Tw", # faire défiler les videos
        ids="channel==MINE",
        metrics="views",
        startDate="2021-01-01",
        alt="json"
`````





Pour convertir json en csv :
````
import json
import pandas as pd
from pandas import json_normalize

with open('test.json') as json_file:
    data = json.load(json_file)
    #print (data)

df = pd.DataFrame(data['rows'],columns=['video','estimatedMinutesWatched','views','likes','subscribersGained'])

print(df)
````



#### 3. Nettoyer données
#### 4. Analyser
