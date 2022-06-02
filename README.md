NO CODE HERE BECAUSE DATAS CAN NOT BE PUBLIC

## Plan
### I - Exercice 1 : Revue de Littérature
### II - Exercice 2 : Problématique et protocole
### III - Exercice 3 : Analyse quantitative
### IV - Apprentissages


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
#### 3. Nettoyer données
#### 4. Analyser

-----------------------
-----------------------
-----------------------
-----------------------

# IV - Apprentissages



### 3. Télécharger les données : API RESTS
#### 3.1 Connaissances générales
API = Application Programming Interface
- Les API peuvent communiquer par l'utilisation de requetes et réponses : d’un logiciel à un logiciel ; d’un client à un serveur ; ou d’un logiciel à des développeurs (par ex quand on s'identifie avec le compte facebook sans mettre mdp).

| type | def |
|----------|-------|
| API privées | utilisables seulement par ceux qui ont un accès et y sont autorisés |
| API publiques | utilisables par tous sans restriction |

- principalement 2 types d'API web : API soap, API rest

| type | def |
|----------|-------|
| API soap | = Simple Object Access Protocol |
| API rest | = restfull = Representational State Transfer. Se basent sur le protocole HTTP pour transférer les informations. Six lignes directrices architecturales clés pour les API REST (Client-serveur separation, Stateless, Cacheable...) |


#### 3.2 S'initier au fonctionnement des API Rest

| terme | def |
|----------|-------|
| une ressource | Les données REST sont représentées dans des ressources. Chaque ressource comporte des informations supplémentaires sur les données contenues. |
| une collection | groupe dans lequel sont regroupées les ressources. En général le nom de collection est le pluriel du nom de la ressource|
| URI | Pour récupérer les données d'une ressource il faut l'URI (Uniform Resource Identifier) = moyen d’identifier la ressource. Par exemple : /characters ou /characters/123 pour avoir le character à l'id 123|
| endpoints | Il suffit d’ajouter votre nom de domaine au début de votre URI, et vous avez un endpoint. Par exemple : https://gameofthrones-informations.com/characters |
| URL de la requete | est l’endpoint complet que vous utilisez pour votre requête|


- Les données des API REST peuvent utiliser deux langages : XML et JSON
- Postman = interface pour formuler des requetes
- Pour formuler une requête = Verbe HTTP + URI + Version HTTP + Headers + Body (facultatif)

| type | def |
|----------|-------|
| Verbe HTTP | différents types d’actions que vous pouvez accomplir avec votre requête (GET (obtenir), PUT (mettre), POST (publier), et DELETE (supprimer)...) |
| Headers | Permet de faire passer des infos. (De quel langage s’agit-il ? À quelle date l’envoyez-vous ? Quelle est votre clé d’authentification...)  |
| Le body |  n’est utilisé qu’avec PUT (mise à jour) ou POST, contient les données réelles de la ressource que vous essayez de créer ou de mettre à jour (pour ajouter des datas) |

- Le format du message de réponse : Version HTTP + Code de réponse HTTP + Headers + Body

| type | def |
|----------|-------|
| Le body | contient l’information que vous avez demandée, et que l’API vous renvoie |
| code de réponse HTTP | aide le développeur et/ou le client à comprendre le statut de la réponse (genre le 404 not found etc permet de savoir c'est quoi l'erreur |

#### 3.3 Formuler une requêtes sur une API rest

-  Consulter la documentation de l'API, et la section qui nous intéresse. C’est comme ça qu'on va trouverer les ressources, URI et endpoints que vous pouvez utiliser pour récupérer des données. 

| type | def |
|----------|-------|
| Applications | Toutes les apps |


[télécharger les données - openclassroom](https://openclassrooms.com/fr/courses/4525266-decrivez-et-nettoyez-votre-jeu-de-donnees/4726171-telechargez-les-donnees)

### 4. Récupérer et Nettoyer les données

#### 4.1 Vocabulaire

| Domaine | Définition |
|----------|-------|
|Statistiques |on ne fait qu’observer et décrire objectivement un phénomène (par ex dans ce pays il y a 55% de femmes et 45% d'hommes)|
|Statistiques inférentielles | dès lors que l'on modélise, cad qu'on essaye de trouver les lois mathématiques qui régissent les données observées (par ex dans ce pays, un enfant qui naît a une probabilité de 55% d’être une fille|
|Statistiques descriptives|présenter, décrire et résumer le jeu de données, à l’aide de graphiques et de mesures (moyenne, écart-type, etc.). Chaque graphique (ou chaque mesure) est calculé(e) sur 1 ou 2 variables à la fois, pas plus.|
|Analyse de données| Là, on étudie plutôt les relations entre 3 variables ou plus. Représenter des graphiques avec 3, 4, 5 ou 100 dimensions n’est plus possible sur du papier à 2 dimensions. Il faut donc utiliser des techniques spéciales pour continuer à décrire et explorer les données|

| Terme | Définition |
|----------|-------|
|individus| ce qu'on étudie en statistiques (objets, des personnes, des animaux, des mesures physiques, etc.)|
|variables/caractères | caractéristiques des individus|
|population|ensemble des individus|
|un échantillon|quand on sélectionne certains individus d’une population|
|jeu de données/data set | équivalents à échantillon|

On représente en général un échantillon sous forme de tableau, où chaque ligne correspond à un individu, et chaque colonne représente une variable

#### 4.2 Installer les outils
La distribution Anaconda (une distribution c'est un langage de programmation + certaines librairies et autres fonctionnalités):
- Python (fichiers en .py)
- les librairies de Data Science : Matplotlib (créer des graphiques sous python), Scipy, Numpy, Pandas
- le notebook Jupyter (fichiers en .ipynb, permet de travailler dans un navigateur web, on peut facilement revenir en arrière sans tout relancer)

````
Jupyter Notebook :
# a = créer une celule
# m = créer un markdown
````
[installation et tests](https://openclassrooms.com/fr/courses/4525266-decrivez-et-nettoyez-votre-jeu-de-donnees/4927821-installez-r-ou-python)

### 3. Récupérer les données
Utiliser la méthode  read_csv  pour charger votre fichier csv

```
import pandas as pd
import os
df = pd.read_csv('all_videos.tsv', sep='\t')
print(df) #pour imprimer tout df
df.columns #pour vérifier les colonnes
```


# III - Explorez vos données

[Analysez la corrélation entre deux variables quantitatives](https://openclassrooms.com/fr/courses/4525266-decrivez-et-nettoyez-votre-jeu-de-donnees/4725622-analysez-la-correlation-entre-deux-variables-quantitatives)

[Analysez deux variables quantitatives par régression](https://openclassrooms.com/fr/courses/4525266-decrivez-et-nettoyez-votre-jeu-de-donnees/4774671-analysez-deux-variables-quantitatives-par-regression-lineaire)

- Analyse en Composantes Principales (ACP)
permet de dégager rapidement les principales tendances de l'échantillon, en diminuant le nombre de variables nécessaires à la représentation de vos données
- Le clustering (2 Méthodes : algorithme k-means et classification hiérarchique)
Permet de regrouper individus selon leurs similarités
- Data visualisation

# IV - Modélisez vos données
Un modèle = représentation mathématique d’un problème donné
- outils d'IA
- première phase : apprentissage
- deuxième phase : prédiction
# V - Évaluez et interprétez vos données 
On va tester le modèle pour voir s’il est pertinent
# VI - Mettez votre système en production

- [librairies python pour la data science - openclassroom](https://openclassrooms.com/fr/courses/4452741-decouvrez-les-librairies-python-pour-la-data-science)
- [initiez-vous à python pour l’analyse de données - openclassroom](https://openclassrooms.com/fr/courses/6204541-initiez-vous-a-python-pour-lanalyse-de-donnees)
- [initiez-vous au langage R pour analyser vos données - openclassroom](https://openclassrooms.com/fr/courses/4525256-initiez-vous-au-langage-r-pour-analyser-vos-donnees)
- [initiez-vous à l’IA (etapes d’un projet IA, machine learning, deep learning) - openclassroom](https://openclassrooms.com/fr/courses/6417031-objectif-ia-initiez-vous-a-lintelligence-artificielle)

