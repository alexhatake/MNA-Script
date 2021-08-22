#Bloquer le partage de connexion

/ip firewall mangle
add action=change-ttl chain=postrouting new-ttl=set:1 out-interface=LAN passthrough=no