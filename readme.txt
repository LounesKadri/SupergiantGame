Bonjour a toutes et a tous,
Le code source:
	mettre le dossier CodeFinal dans la racine du dossier "C:\xampp\htdocs\".
Creer la base de donnés:
	1-allumer xampp et lancer le serveur appache ainsi que le serveur mysql.
	2-taper localhost dans le naviguateur.
	3-cliquer sur l'hyperlien phpmyadmin.
	4-cliquer sur nouvelle base de donnés lui donner le nom "projet"
	5-importer la bdd qui se trouve a la racine de ce dossier sous le nom "projet.sql"


Confirmer l'inscription:
	1-configurer xampp pour pouvoir envoyer des mail en local:
		.ouvrir xampp
		.dans le serveur apache clicquer sur config
		.choisir PHP(php.ini)
		.chercher :"sendmail_path"
		.Si vous avez xampp dans le chemin "C:\xampp"  changer la valeur de "sendmail_path" a: sendmail_path = "C:\xampp\sendmail\sendmail.exe" 
	2-valider le compte:
		.aller dans le dossier "C:\xampp\mailoutput"
		.vous allez trouver le mail pour confirmer votre compte dans un fichier txt.