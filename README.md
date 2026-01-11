# Analyse de Séries Temporelles - Action MSFT

Projet ENSAI 3A - Séries Temporelles Avancées

## À Propos

Ce projet analyse les rendements journaliers de l'action Microsoft (MSFT) de 2000 à 2023 en utilisant des modèles économétriques avancés :

| Modèle | Objectif | Résultat |
|--------|----------|----------|
| ARIMA | Modéliser la moyenne conditionnelle | ARIMA(4,0,0) |
| ARMA-GARCH | Capturer la volatilité | GARCH(1,1) + Student-t |


## Installation

### Prérequis

Assurez-vous d'avoir installé :
- R (version 4.0+) : https://cran.r-project.org/
- RStudio : https://posit.co/download/rstudio-desktop/

### Télécharger le Projet

Option A : Téléchargement direct
1. Cliquez sur le bouton vert "Code" en haut de cette page
2. Sélectionnez "Download ZIP"
3. Extrayez le fichier ZIP

Option B : Avec Git
```bash
git clone https://github.com/YOUR_USERNAME/MSFT-Time-Series-Analysis.git
```

### Installer les Packages R

Option rapide avec le script automatique :
1. Ouvrez le fichier `install_packages.R` dans RStudio
2. Cliquez sur "Source" (ou Ctrl+Shift+S)
3. Attendez la fin de l'installation

Option manuelle :
```r
packages <- c("quantmod", "forecast", "rugarch", "tseries", 
              "FinTS", "moments", "ggplot2", "dplyr", 
              "zoo", "knitr", "urca", "tidyr", "lubridate")

install.packages(packages)
```

L'installation prend environ 2-3 minutes.


## Comment Exécuter l'Analyse

1. Ouvrir le fichier `code_projet.Rmd` dans RStudio

2. Exécuter de deux façons :
   - Tout le document : Cliquez sur Knit > Knit to PDF
   - Chunk par chunk : Cliquez sur le bouton vert de chaque bloc de code

3. Un rapport PDF sera généré automatiquement

Conseil : Exécutez les chunks dans l'ordre (de haut en bas) pour éviter les erreurs de variables manquantes.


## Structure du Projet

```
projet_ST/
├── code_projet.Rmd      <- Fichier principal (ouvrir celui-ci)
├── install_packages.R   <- Script d'installation automatique
├── ARMA-GARCH.R         <- Code GARCH (référence)
├── Imane.R              <- Scripts additionnels
├── README.md            <- Ce fichier
└── LICENSE              <- Licence MIT
```


## Résultats Principaux

### Analyse ARIMA
- Les log-rendements sont stationnaires (test ADF)
- Modèle optimal : ARIMA(4,0,0)
- Effets ARCH détectés, nécessite GARCH

### Analyse ARMA-GARCH
- Modèle : ARMA(4,0)-GARCH(1,1) avec innovations Student-t
- Persistence de la volatilité : alpha + beta = 0.997
- Corrélation prévision/réalisé : 0.41
- Distribution à queues épaisses capturée (df = 4.23)


## Source des Données

Les données sont téléchargées automatiquement depuis Yahoo Finance :

- Action : MSFT (Microsoft)
- Période : 01/01/2000 au 01/01/2023
- Fréquence : Journalière
- Environ 5700 observations

Note : Une connexion internet est nécessaire pour la première exécution.


## Problèmes Fréquents

| Problème | Solution |
|----------|----------|
| Error: package 'xxx' not found | Exécutez install.packages("xxx") |
| Error in getSymbols() | Vérifiez votre connexion internet |
| Knit to PDF échoue | Installez TinyTeX : tinytex::install_tinytex() |
| Graphiques ne s'affichent pas | Redémarrez RStudio |


## Auteurs

ENSAI 3A, Promotion 2025-2026
École Nationale de la Statistique et de l'Analyse de l'Information


## Licence

Ce projet est sous licence MIT. Vous êtes libre de l'utiliser, le modifier et le partager.
