## Contexte

Nous avons besoin d'une solution pour mettre facilement plusieurs clients en relation avec notre serveur. Nous avons choisi de mettre en place un VPN pour cela.

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

## Installation

1. **Serveur VPN :** suivre le guide [serveur.md](serveur.md).
2. **Client VPN :** suivre le guide [client.md](client.md).
3. **Routeur :** suivre le guide [routeur.md](routeur.md) (à faire une fois le déploiement terminé si craintes).