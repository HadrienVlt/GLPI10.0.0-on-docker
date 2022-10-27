# GLPI10.0.0-on-docker

# Utiliser GLPI sur docker

# Tout d’abord, il faut télécharger le référentiel 

# Deuxièmement, il faut lancer la commande "docker-compose up" depuis powershell dans le dossier du dépôt téléchargé de votre ordinateur

# Troisièmement, lorsque le cluster est lancé, il faut aller à l’adresse suivante : http://localhost:8080/glpi/install/install.php et suivre l'installation

#Default login Maria DB database :
       MARIADB_ROOT_PASSWORD: root
       MARIADB_DATABASE: glpi
       MARIADB_USER: glpi_user
       MARIADB_USER_PASSWORD: glpi_user
       
#Default login GLPI :
  
login : root
password : root

#################################################################################################################################

# GLPI10.0.0-on-docker

# To use GLPI on docker

# Firstly, you have to download the repository 

# Secondly, you have to run the command "docker-compose up" from powershell in the folder of the downloaded repository of your computer

# Thirdly, when the cluster is launched you have to go at the next url : https://172.28.0.2/glpi and enjoy the installation

#Default login Maria DB database :
       MARIADB_ROOT_PASSWORD: root
       MARIADB_DATABASE: glpi
       MARIADB_USER: glpi_user
       MARIADB_USER_PASSWORD: glpi_user
       
#Default login GLPI :
  
login : root
password : root
