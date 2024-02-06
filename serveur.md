### Serveur VPN

1. **Installation de Debian :**
   - Installer Debian sans environnement de bureau.
   - Prérequis : connexion internet (privilégier le câble Ethernet).

2. **Activation du protocole SSH :**
   - Se connecter en tant que root (su -).
   ```
   apt-get update
   apt-get install openssh-server
   ```

3. **Mise en place des règles iptables :**
   ```
   apt-get update
   apt-get install iptables
   iptables -A INPUT -p tcp --dport 22 -j ACCEPT
   ```

4. **Installation de WireGuard :**
   - Prérequis : être connecté en tant que root (su -), avoir un port ouvert sur le routeur (privilégier le port 51820), avoir curl.
   ```
   apt-get install curl \
   curl -O https://raw.githubusercontent.com/angristan/wireguard-install/master/wireguard-install.sh \
   chmod +x wireguard-install.sh \
   ./wireguard-install.sh
   ```
   - Suivre les étapes demandées par le programme en précisant le port 51820.

5. **Ajout d'un client pour le VPN :**
   ```
   ./wireguard-install.sh
   ```
   - "Ajouter un client" > "Saisir le nom du client" > "Sans mot de passe"
   ```
   mv /etc/wireguard/<client>.conf /home/user/<client>.conf
   ```

6. **Configuration des accès :**
   - Bloquer la communication entre les clients :
   ```
   iptables -A FORWARD -i vpn -o vpn -j REJECT \
   ip6tables -A FORWARD -i vpn -o vpn -j REJECT
   ```