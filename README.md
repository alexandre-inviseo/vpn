## Contexte

Inviséo fournit un service de monitoring énergétique, avec installation de matériel dans les locaux des clients et récupération des données via un serveur local. L'interface Web de l'application PyScada est accessible sur le port 80.

## Besoins

- **Accès au réseau :** pour la maintenance.
- **Accès en ligne de commande :** pour les mises à jour et la gestion des capteurs.
- **Durabilité :** pour éviter la perte de contrôle.
- **Facilité de configuration :** pour la maintenance future.
- **Sécurité :** pour protéger les données clients.
- **Peu intrusif :** pour ne pas perturber les clients.

## Propositions

- **Redirection de port :** Simple mais nécessite l'ouverture de ports chez le client.
- **Serveur VPN chez chaque client :** Efficace mais lourd à configurer pour chaque client.
- **Serveur VPN chez Inviséo :** Permet la communication avec les clients sans ouvrir de port chez eux.

## Solution

Nous avons choisi d'implémenter un serveur VPN chez Inviséo. Cela nous permet d'accéder aux machines des clients et à leurs services sans ouvrir de ports chez eux.

## Installation

1. **Serveur VPN :** suivre le guide [serveur.md](serveur.md).
2. **Client VPN :** suivre le guide [client.md](client.md).
3. **Routeur :** suivre le guide [routeur.md](routeur.md) (à faire une fois le déploiement terminé si craintes).