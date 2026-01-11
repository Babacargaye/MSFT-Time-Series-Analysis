# ============================================
# Script d'Installation - Projet Séries Temporelles
# ============================================
# 
# Ce script installe automatiquement tous les packages 
# nécessaires pour exécuter l'analyse.
#
# UTILISATION :
# 1. Ouvrez ce fichier dans RStudio
# 2. Cliquez sur "Source" (en haut à droite) 
#    OU appuyez sur Ctrl+Shift+S
#
# ============================================

cat("\n")
cat("==========================================\n")
cat("  Installation des Packages R\n")
cat("  Projet: Analyse MSFT - Series Temporelles\n")
cat("==========================================\n\n")

# Liste des packages requis
packages_requis <- c(
  "quantmod",    # Telechargement donnees financieres
  "forecast",    # Modelisation ARIMA
  "rugarch",     # Modelisation GARCH
  "tseries",     # Tests de stationnarite
  "FinTS",       # Test ARCH-LM
  "moments",     # Skewness et Kurtosis
  "ggplot2",     # Graphiques
  "dplyr",       # Manipulation de donnees
  "zoo",         # Series temporelles
  "knitr",       # Generation de rapports
  "urca",        # Tests de racine unitaire
  "tidyr",       # Nettoyage de donnees
  "lubridate"    # Manipulation de dates
)

# Verifier et installer les packages manquants
cat("Verification des packages...\n\n")

packages_manquants <- packages_requis[!(packages_requis %in% installed.packages()[,"Package"])]

if (length(packages_manquants) == 0) {
  cat("[OK] Tous les packages sont deja installes!\n\n")
} else {
  cat("Packages a installer:", length(packages_manquants), "\n")
  cat("   ", paste(packages_manquants, collapse = ", "), "\n\n")
  cat("Installation en cours... (cela peut prendre quelques minutes)\n\n")
  
  for (pkg in packages_manquants) {
    cat("  Installation de", pkg, "...")
    tryCatch({
      install.packages(pkg, quiet = TRUE)
      cat(" OK\n")
    }, error = function(e) {
      cat(" ERREUR\n")
    })
  }
}

# Verification finale
cat("\n==========================================\n")
cat("  Verification Finale\n")
cat("==========================================\n\n")

tous_installes <- TRUE
for (pkg in packages_requis) {
  if (pkg %in% installed.packages()[,"Package"]) {
    cat("  [OK]", pkg, "\n")
  } else {
    cat("  [X]", pkg, "- ECHEC\n")
    tous_installes <- FALSE
  }
}

cat("\n==========================================\n")
if (tous_installes) {
  cat("  INSTALLATION REUSSIE!\n")
  cat("==========================================\n\n")
  cat("Vous pouvez maintenant ouvrir 'code_projet.Rmd'\n")
  cat("et executer l'analyse.\n\n")
} else {
  cat("  CERTAINS PACKAGES N'ONT PAS ETE INSTALLES\n")
  cat("==========================================\n\n")
  cat("Essayez d'installer manuellement les packages\n")
  cat("marques avec [X] en utilisant:\n")
  cat("  install.packages(\"nom_du_package\")\n\n")
}

cat("Script termine.\n")
