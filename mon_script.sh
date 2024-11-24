#!/bin/bash
# Script de connexion SSH dynamique

# Demander à l'utilisateur d'entrer les informations de connexion
echo "Entrez le nom d'utilisateur : "
read USER
echo "Entrez l'adresse IP ou le nom d'hôte du serveur : "
read HOST
echo "Entrez le port SSH (par défaut 22) : "
read PORT
PORT=${PORT:-22}  # Si l'utilisateur ne saisit rien, utiliser le port 22 par défaut

# Connexion SSH
ssh -p $PORT $USER@$HOST
