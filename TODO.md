# TODO

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

- Ajouter des fonctions au Baguet
- Simulateur de baguet

## Liste des tâches en cours

- Faire le ménage dans les bag-tools
- Faire un systeme de log pour bag-compiler

