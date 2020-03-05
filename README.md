#TRICOUNT DA2I
Nagi KARAOUZENE
Pierre DELGRANGE

## Avant-Propos

### Modification de la base de donnée : 
Il faut modifier le fichier application.properties dans le dossier TricountDa2iBack/src/main/java/ressources du projet.
afin de modifier la section "DATABASE" en remplaçant les parametres de la base de données par les votres.

exemple avec H2:
```
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
```
PS: Seule les bases Postgresql et h2 ont leurs dépendances dans le pom.xml du projet.  
Pour ajouter une autre base de données, il faut d'abord vérifier
si d'autres dépendances ne sont pas à ajouter au fichierpom.xml.

### Modification de l'adresse mail :   
Pour que le mail de bienvenue soit envoyé il faut modifier le fichier application.properties dans le dossier 
TricountDa2iBack/src/main/java/ressources/ du projet
afin de modifier la section "MAIL SMTP" et de remplacer les parametres par les votres.

### Changer les ports : 

#### - API REST Spring
- Pour changer le port de l'API, il faut modifier le fichier application.properties dans le dossier 
TricountDa2iBack/src/main/java/ressources/ du projet afin de modifier la propriété "server.port" 
dans la section "SPRING MAIN" et indiquer le port de lancement du projet.
- Pour que le projet angular puisse toujours se connecter à l'API, il faut modifier le fichier environment.ts 
dans le dossier Tricount-Da2i-Angular/src/environments/ du projet Angular
afin de modifier la variable "apiUrl" et remplacer le port dans l'url.

#### - Angular
- Pour changer le port de lancement de l'application Angular, il faut modifier le fichier angular.json 
dans le dossier Tricount-Da2i-Angular/ afin de modifier la propriété "port" et de remplacer par le port souhaité

### Installer Angular CLI
> $ sudo npm install -g @angular/cli   

### Installer Maven 
> $ sudo apt-get install maven

## Démarrer le projet

### Lancer l'API Rest avec maven:   
> $ mvn spring-boot:run  

### Lancer le front Angular avec Angular CLI:
> $ ng serve  

Connexion sur l'adresse http://localhost:4200/ dans votre navigateur
