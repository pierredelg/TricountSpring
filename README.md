# TRICOUNT DA2I
Nagi KARAOUZENE
Pierre DELGRANGE

## Avant-Propos

### Modification de la base de donnée : 
Il faut modifier le fichier application.properties dans le projet Spring
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
Pour que le mail de bienvenue soit envoyé il faut modifier le fichier application.properties
afin de modifier la section "MAIL SMTP" et de remplacer les parametres par les votres.

## Démarrer le projet

### Lancer l'API Rest sur le port 8080:   
> $ mvn spring-boot:run  

### Lancer le front Angular :   
> $ ng serve  

Connexion sur l'adresse http://localhost:4200/ dans votre navigateur
