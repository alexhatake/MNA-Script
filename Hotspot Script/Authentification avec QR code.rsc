#Connexion via QR code#
#1 Ajouter un bouton dans login.html

#<button onclick="window.location='https://laksa19.github.io/myqr';">QR Code</button>

#2 Ajoutez le script suivant dans MikroTik via Terminal.

/ip hotspot walled-garden ip
add action=accept comment="Mikhmon QR Code Scanner" disabled=no dst-host=laksa19.github.io

#3Activez HTTP PAP dans le profil du serveur hotspot.
