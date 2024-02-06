### Client VPN

1. **Activation du protocole SSH :**
   - Se connecter en tant que root (su -).
   ```
   apt-get update \
   apt-get install openssh-server \
   apt-get update \
   apt-get install iptables \
   apt-get update \
   iptables -A INPUT -p tcp --dport 22 -j ACCEPT
   ```

2. **Récupération du fichier .conf :**
   - À faire uniquement depuis le réseau local.
   ```
   scp user@192.168.3.35:/home/user/<client>.conf .
   sudo mv <client>.conf /etc/wireguard/
   ```
   *Warning :* <client> ne doit pas contenir de tirets dans le nom. Ne pas oublier de mettre l'adresse de la Livebox de Gallium : 92.138.199.40.

3. **Installation de wg-quick :**
   - Arch :
   ```
   sudo pacman -S wg-quick
   ```
   - Debian :
   ```
   sudo apt install openresolv
   ```

4. **Connexion au VPN :**
   ```
   sudo wg-quick up <client>
   ```
   *Sans le .conf car normalement Wireguard détecte le fichier.*

5. **Déconnexion du VPN (si nécessaire) :**
   ```
   sudo wg-quick down <client>
   ```