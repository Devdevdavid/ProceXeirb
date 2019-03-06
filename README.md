# ProceXeirb - The next generation of processors is being developped here

![Alt text](doc/ProceXeirb_Logo_B_on_W.png "Logo de ProceXeirb")
-- Note: The 'X' is property of SpaceX, the rest is ours --

## Présentation

ProceXeirb est un projet de conception et implémentation sur circuit FPGA d’une architecture composée de plusieurs processeurs programmables dédiés pour de la représentation 3D.
Ce travail est une reprise du projet de Pierre Joubert et Julien Besse, tous deux étudiant à l'ENSEIRB entre 2016-2019. Voici leur page Github originale : https://github.com/Nerradia/proc_elementaire

## Mode de management du projet

Pour mener au mieux notre projet, nous avons choisi d'utiliser l'outil [Trello](https://trello.com/). Il nous permet de créer des listes et d'assigner des tâches à des personnes à la manière Kanban.

## Les bag-tools

Pour programmer nos processeurs, nous avons conçu un nouveau langage de programmation nommé le Baguette. Pour traduire les fichiers Baguette (*.bag) en langage machine, nous avons créé une toolchain dont chaque outil est nommé bag-tool.

### bag-compiler

Dans un premier temps, nous venons compiler les fichiers *.bag en analysant une à une les lignes de code. Bag-compiler intègre un préprocesseur qui s'occupe de mettre en forme le fichier d'entrée pour donner un *.bago. Il supprime notamment tous les espaces et lignes vides et les commentaires puis effectue les remplacements des #definition.
Une fois compilé, nous obtenons un fichier assembleur (*.asm).

### bag-objcopy

Ce fichier *.asm est ensuite envoyé à bag-objcopy pour être converti en fichier binaire. Cet outil effectue aussi des vérifications sur la taille du programme.
À la suite de cette étape, nous obtenons un fichier *.bytes.

### bag-upload

Bag-upload est l'outil qui permet d'envoyer le programme sur la carte Nexys-4 à travers la liaison USB. Le fichier *.bytes est découpé en Chunk, puis envoyé bloc à bloc.

### bag-library

Cette bibliothèque rassemble des fonctions globales au projet comme la mise en forme des LOG et le regroupement de constantes.

## Makefile

Chaque bag-tool dispose de son fichier Makefile pour être compilé. Toutefois, un Super Makefile est situé à la racine du projet.

```bash
make tools
```
La commande ci-dessus permet de compiler tous les bag-tools et de les installer (Testé uniquement sur MacOS).
La commande suivante permet de compiler un fichier *.bag et de lancer l'envoi par liaison série :

```bash
make load
```

## VHDL

La description du projet est faîte en VHDL avec l'outil Vivado de Xilinx. Les sources sont localisées dans le dossier ProceXeirb/src/

## Authors

* **David DEVANT** - *Improvement work* - [Devdevdavid](https://github.com/Devdevdavid)
* **Aurélien TROMPAT** - *Improvement work* - [DjNounours](https://github.com/DjNounours)
* **Pierre JOUBERT** - *Initial work* - [PierreJoubertPJ](https://github.com/PierreJoubertPJ)
* **Julien BESSE** - *Initial work* - [Nerradia](https://github.com/Nerradia)

## Questions

- Peut-on supprimer cette ligne suite à la migration à Vivado 2018 ? (cpu_UAL.vhd:7)
```vhdl
use work.fixed_generic_pkg_mod.all; -- Fix for Vivado
```

## Liste des améliorations prévues

### CPU

- Ajouter une Call Stack
- Ajouter des interruptions
- Ajouter un timer

### VGA
- Ajouter de la couleur

### Programmateur

### Toolchain

- Ajouter des appels de fonction au Baguette
- Simulateur de Baguette