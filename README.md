

### API RESTS
#### 1. Connaissances générales
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


#### 2. S'initier au fonctionnement des API Rest

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

#### 3. Formuler une requêtes sur une API rest

-  Consulter la documentation de l'API, et la section qui nous intéresse. C’est comme ça qu'on va trouverer les ressources, URI et endpoints que vous pouvez utiliser pour récupérer des données. 
-  






## Plan
### I - Revue de Littérature

### II - Comprendre les métriques Youtube
- .1. Sur les sources de trafic
- .2. Sur les impressions
- .3. Sur les revenus
- .4. Autres métriques
- .5. L'objectif financier de Youtube
### III - Télécharger les données
- .1. Choisir ses métriques
- .2. Télécharger les données
### IV - Récupérer et Nettoyer les données
- .1. Vocabulaire
- .2. Installer les outils
- .3. Récupérer les données


# I - Revue de Littérature





# II - Comprendre les métriques Youtube
[Documentation Youtube sur les données](https://support.google.com/youtube/topic/9257532?hl=fr&ref_topic=9257610)

### 1. Sur les sources de trafic : Comment les spectateurs trouvent-ils les vidéos ?

| Donnée | Explication |
|----------|-------|
|Fonctionnalités de navigation| Trafic généré par la page d'accueil, le flux "Abonnements", la playlist "À regarder plus tard", les onglets "Tendances" et "Découvrir" ainsi que d'autres fonctionnalités de navigation. |
|Suggestion de vidéos| Trafic généré par les suggestions qui s'affichent à côté ou après d'autres vidéos, et par les liens inclus dans les descriptions de vidéos.|
|Pages de chaîne| Trafic généré par votre chaîne ou d'autres chaînes YouTube.|
|Autres fonctionnalités YouTube|Trafic généré par YouTube qui ne rentre pas dans les autres catégories.|
|*Pourcentage des impressions issues des recommandations de YouTube* (pas indiqué dans les stats, prélevable à la main)| Par exemple : 85,4 % suite aux recommandations de votre contenu par YouTube. Sur la page d'accueil	+ sur la page de lecture (Le reste, pas contenu dans ce pourcentage c'est "les spectateurs à la recherche de votre contenu") |

### 2. Sur les impressions : Comment les impressions de vos miniatures font-elles cliquer ?
| Donnée | Explication |
|----------|-------|
|*Impressions* | Nombre de fois où vos miniatures ont été présentées aux spectateurs sur YouTube grâce aux impressions enregistrées.|
|*Taux de clics par impression* | Nombre de fois où les spectateurs ont regardé une vidéo après avoir vu sa miniature. Vues par impression. Mesure la fréquence à laquelle les spectateurs regardent une vidéo après avoir vu une impression. Sachant que plus la vidéo est recommandée, plus ce taux baisse |

**Comment les impressions de vos miniatures ont-elles généré des vues et contribué à la durée de visionnage ?** 

| Donnée | Explication |
|----------|-------|
|*Vues générées par les impressions*| Nombre de vues générées par les impressions pour la plage de dates sélectionnée. (car les impressions ne comptabilisent par exemple pas le Site Web mobile YouTube, l'application Youtube Music...)|
|*Durée de visionnage générées par les impressions*|Durée de visionnage générée par les impressions pour la plage de dates sélectionnée.|
|Vues|Nombre de vues légitimes pour vos chaînes ou vidéos.|

### 3. Sur les revenus
| Donnée | Explication |
|----------|-------|
|CPM| désigne le coût pour mille impressions basé sur les lectures. Indique combien les annonceurs ont payé pour 1 000 lectures monétisées. Le CPM est calculé en divisant le total des revenus générés par les annonces par le nombre estimé de lectures monétisées. Une lecture monétisée est enregistrée lorsqu'un spectateur voit au moins une impression d'annonce pendant qu'il regarde l'une de vos vidéos (il s'agit d'une estimation).|
|RPM| Le revenu pour mille vues, représente la somme d'argent générée par millier de vues d'une vidéo (comprend les annonces, les souscriptions aux chaînes, YouTube Premium, les Super Chats et les Super Stickers.)|
|Revenus estimés||

### 4. Autres métriques

| Donnée | Explication |
|----------|-------|
|Spectateurs uniques | Estimation du nombre de spectateurs ayant regardé votre contenu pendant la plage de dates sélectionnée.|
|*Durée de visionnage (heures)* | Durée pendant laquelle les spectateurs ont regardé votre vidéo.|
|Pourcentage moyen de vidéo regardé|Pourcentage moyen de visionnage d'une vidéo par votre audience.|

### 5. L'Objectif financier de Youtube

| Donnée | Explication |
|----------|-------|
| démonétisé (rouge) = 1 | Réclamation pour atteinte aux droits d'auteur|
| démonétisé par choix = 0 ||
| monétisation limité (jaune) = 2| Pas conforme à l'ensemble de nos consignes relatives aux contenus adaptés aux annonceurs, certaines marques peuvent choisir de bloquer la diffusion de leurs annonces sur le contenu. Vidéo moins adaptée aux annonceurs, moins de revenus générés.|
|monétisé sans mid-roll = 3| Soit mid-roll désactivé à la main, soit la vidéo fait moins de 8min|
|monétisé avec mid-roll = 4| |

Les titulaires de droits d'auteur peuvent configurer Content ID pour bloquer les vidéos mises en ligne lorsqu'une correspondance est établie entre celles-ci et l'une de leurs œuvres protégées. Ils peuvent également accepter de laisser les contenus revendiqués en ligne sur YouTube, mais en activant la diffusion d'annonces. Dans ce cas, les revenus publicitaires sont reversés aux titulaires des droits d'auteur des contenus en question.

Youtube dit : "Les annonces vidéo sont moins susceptibles d'être diffusées sur les vidéos très courtes. Ceci nous permet d'optimiser l'engagement des spectateurs et les revenus générés au cours de chaque session de visionnage sur YouTube."

- Types d'annonces : Annonces display, Annonces en superposition, Fiches sponsorisées, Annonces vidéo désactivables, Annonces vidéo non désactivables [les types d'annonces](https://support.google.com/youtube/answer/2467968?hl=fr)
- Les annonces placées avant et après votre vidéo seront activées automatiquement.
- Revenus liés à la publicité : YouTube vous versera 55 % des revenus nets reconnus par YouTube à partir de publicités affichées ou diffusées par YouTube ou par un tiers autorisé sur les pages de visualisation de votre Contenu ou dans ou sur le lecteur vidéo YouTube en rapport avec la diffusion de votre Contenu.
- Revenus liés aux abonnements (=par YouTube Music, Google Play Musique et YouTube Premium) : YouTube vous versera 55 % des revenus nets totaux reconnus par YouTube à partir des frais d’abonnement attribuables aux vues mensuelles ou au temps de visionnement de votre Contenu en tant que  pourcentage des vues mensuelles ou du temps de visionnement de la totalité ou d’un élément du Contenu inclus au sein d’une offre par abonnement pertinente.

# III - Télécharger les données
### 1. Choisir ses métriques
Youtube a écrit : "Pour accroître la probabilité que YouTube suggère vos contenus, augmentez votre taux de clics et la durée de visionnage de vos vidéos"

| Objectif | Explication |
|----------|-------|
|Pour savoir à quel point une vidéo a été recommandée | le rapport entre le pourcentage des impressions issues des recommandations de YouTube et le nombre total d'impressions (Par exemple vidéo hacker une caméra 8 600 000 impressions et 85,4 % issus des recommandations Youtube. Soit 7 344 400 impressions générées par les recommandations)|
|Pour savoir à quel point une vidéo fait cliquer | le rapport entre le taux de clics par impression et le nombre total d'impressions. + J'ai la possibilité d'avoir l'évolution du taux de clics par impression, on peut voir comment il était au moment de la sortie de la vidéo et plus tard pour pouvoir comparer entre les vidéos.|
|Pour savoir à quel point la vidéo est regardée | rapport entre la durée de la vidéo et le pourcentage moyen de vidéo regardé (plus la vidéo est longue, plus c'est dur que la personne regarde tout)| 
|Pour savoir à quel point la vidéo rapporte de l'argent à Youtube | Etat de la monétisation |

- pourcentage des impressions issues des recommandations de YouTube + le nombre total d'impressions
- l'évolution du nombre d'impression + l'évolution du taux de clics par impression + le taux de clics par impression général
- la durée  de la vidéo + pourcentage moyen de vidéo regardé
- état de la monétisation

### 2. Télécharger les données
Il est possible d'exporter direct dans Youtube Studio en haut à droite (soit en csv, soit dans Google Sheets)

**Sur les stats globales :**
- Vues
- Pourcentage moyen de vidéo regardé
- Pourcentage moyen de vidéo regardé
- Impressions
- Taux de clics par impression
- Pour le “total”
=> Attention à bien mettre “depuis toujours”

**Sur l’évolution du taux de clics de toutes les vidéos :**
- évolution du taux de clics par impression
- Pour “depuis toujours”
=> mettre sur le graphique “taux de clics par impression”
=> que la stat “taux de clics par impression”

**Sur l’évolution du nombre d'impression de toutes les vidéos :**
- évolution du nombre d'impressions
- Pour “depuis toujours”
=> mettre sur le graphique “impression”
=> que la stat “impression”

**Sur la recommandation et monétisation**
- ajouter la durée de la vidéo
- ajouter le pourcentage des impressions issu de la recommandation (dans le funnel, onglet couverture)
- ajouter la monétisation de la vidéo (1, 2, ou 3)


[télécharger les données - openclassroom](https://openclassrooms.com/fr/courses/4525266-decrivez-et-nettoyez-votre-jeu-de-donnees/4726171-telechargez-les-donnees)

# IV - Récupérer et Nettoyer les données

### 1. Vocabulaire

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

### 2. Installer les outils
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


Pour Nuancer :
- Le taux de clics par impression est aussi influencé par le fait que certains connaissent la chaîne.
- Plein d'autres variables rentrent en compte (si y a pas beaucoup de spéctacteurs uniques pour un assez grand nombre de vues, ça peut être un tutoriel par exemple)
[nettoyez votre jeu de données - openclassroom](https://openclassrooms.com/fr/courses/4525266-decrivez-et-nettoyez-votre-jeu-de-donnees)
- Nettoyer un jeu de données
- Représenter les variables
- analyse univariée
- analyse bivariée







# III - Explorez vos données

[Analysez la corrélation entre deux variables quantitatives](https://openclassrooms.com/fr/courses/4525266-decrivez-et-nettoyez-votre-jeu-de-donnees/4725622-analysez-la-correlation-entre-deux-variables-quantitatives)

[Analysez deux variables quantitatives par régression](https://openclassrooms.com/fr/courses/4525266-decrivez-et-nettoyez-votre-jeu-de-donnees/4774671-analysez-deux-variables-quantitatives-par-regression-lineaire)

- Analyse en Composantes Principales (ACP)
permet de dégager rapidement les principales tendances de l'échantillon, en diminuant le nombre de variables nécessaires à la représentation de vos données
- Le clustering (2 Méthodes : algorithme k-means et classification hiérarchique)
Permet de regrouper individus selon leurs similarités
- Data visualisation
- 
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

