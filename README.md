
<!-- README.md is generated from README.Rmd. Please edit that file -->

# refpmsi

Package de référentiels PMSI : [74 référentiels
disponibles](https://denisgustin.github.io/refpmsi/articles/liste_ref.html)

Dernière mise à jour : 23 juin 2021

[Etre tenu au courant des mises à jour et ajouts de référentiels
PMSI](http://www.lespmsi.com/r-et-pmsi/)

## Installation

Le téléchargement du package `refpmsi` se fait à partir de Github.

``` r
# 1ere solution avec le package remotes::
# install.packages("remotes")
# library("remotes")
remotes::install_github("denisGustin/refpmsi")

# 2eme solution avec le package devtools::
# install.packages("devtools")
# library("devtools")
devtools::install_github("denisGustin/refpmsi")
# Risque d'erreur si RTools (https://cran.r-project.org/bin/windows/Rtools/) n'est pas installé

# activation du package refpmsi::
library("refpmsi")
```

## Mise à jour

``` r
# 1ere étape : suppression du package refpmsi
remove.packages("refpmsi")

# 2eme étape : ré-installation
# voir ci-dessus "installation"

# activation de refpmsi
library("refpmsi")
```
