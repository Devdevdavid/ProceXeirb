# ProceXeirb - The next generation of processors is being developped here

![Alt text](doc/ProceXeirb_Logo_B_on_W.png "Logo de ProceXeirb")

## Présentation

ProceXeirb est un projet de conception de processeur en VHDL.
Ce travail est une reprise du projet de Pierre Joubert et Julien Besse, tous deux étudiant à l'ENSEIRB entre 2016-2019. Voici leur page Github originale : https://github.com/Nerradia/proc_elementaire

## Objectifs 

Ce fichier à pour but de résumer l'état actuel du projet, les points incompris, les points d'amélioration et les questions éventuelles.

## Questions

- Peut-on supprimer cette ligne suite à la migration à Vivado 2018 ? (cpu_UAL.vhd:7)
```vhdl
use work.fixed_generic_pkg_mod.all; -- Fix for Vivado
```

## Liste des améliorations

### CPU

- Ajouter une Call Stack
- Ajouter des interruptions
- Ajouter un timer

### VGA

### Programmateur

### Toolchain

- Ajouter des appels de fonction au Baguette
- Simulateur de Baguette

## Liste des tâches en cours

- Faire un systeme de log dans une library

