### Livebox Inviséo

- **Redirection du réseau :**
  - Rediriger le réseau 10.66.66.0/24 vers le serveur VPN. Si le routeur reçoit une requête pour 10.66.66.0/24, elle la renvoie automatiquement vers <\_ip\_serveur\_VPN>.

- **Redirection de port du routeur de Inviséo :**
  ```
  <ip_routeur_Inviséo>:<port_routeur_exposé>
  ```
  doit rediriger vers :
  ```
  <ip_locale_serveur_VPN>:<51820>
  ```