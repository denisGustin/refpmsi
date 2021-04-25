
<!-- README.md is generated from README.Rmd. Please edit that file -->

# refpmsi

Package de référentiels PMSI : [72 référentiels
disponibles](https://denisgustin.github.io/refpmsi/articles/liste_ref.html)

Dernière mise à jour : 24 avril 2021

[Etre tenu au courant des mises à jour et ajouts de référentiels
PMSI](http://www.lespmsi.com/r-et-pmsi/)

## Installation

Le téléchargement du package `refpmsi` se fait à partir de Github.

``` r
# 1ere solution avec le package devtools
# install.packages("devtools")
# library("devtools")
devtools::install_github("denisGustin/refpmsi")

# 2eme solution avec le package remotes
# install.packages("remotes")
# library("remotes")
remotes::install_github("denisGustin/refpmsi")

# activation de refpmsi
library("refpmsi")
```

## Mise à jour

``` r
# 1ere étape : suppression du package refpmsi
remove.packages("refpmsi")

# 2eme étape : ré-installation
# voir ci-dessus

# activation de refpmsi
library("refpmsi")
```
