#!/bin/bash

url="https://raw.githubusercontent.com/angristan/wireguard-install/master/wireguard-install.sh"

# Vérifie si l'utilisateur est root
if [ $EUID -ne 0 ]; then
    echo "Ce script doit être exécuté en tant que root" 1>&2
    exit 1
fi

# Fonction pour installer WireGuard
call_wireguard_install() {
    # Mise à jour du cache des paquets
    if ! apt-get update; then
        echo "Échec de la mise à jour du cache des paquets. Veuillez vérifier votre connexion internet ou votre configuration apt." 1>&2
        exit 1
    fi

    # Installation des paquets nécessaires
    if ! apt-get install -y openssh-server iptables curl; then
        echo "Échec de l'installation des paquets nécessaires." 1>&2
        exit 1
    fi

    # Autorisation du port 22 dans iptables
    if ! iptables -C INPUT -p tcp --dport 22 -j ACCEPT &>/dev/null; then
        iptables -A INPUT -p tcp --dport 22 -j ACCEPT # Si la règle n'existe pas encore, on l'ajoute
    fi

    # Téléchargement et exécution du script WireGuard
    if ! curl -sSLO "$url"; then
        echo "Échec du téléchargement du script WireGuard." 1>&2
        exit 1
    fi

    # Attribution des permissions et exécution du script WireGuard
    chmod +x wireguard-install.sh
    ./wireguard-install.sh
}

call_wireguard_install
