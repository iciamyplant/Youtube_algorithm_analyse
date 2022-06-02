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
