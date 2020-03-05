--  DEVISES
insert into devise(code, nom_de_devise, symbole) values ('EUR','Euros','€');

--  PARTICIPANTS
insert into participant(id_participant,surnom) values (1,'Louis');
insert into participant(id_participant,surnom) values (2,'Ludo');
insert into participant(id_participant,surnom) values (3,'Nagi');
insert into participant(id_participant,surnom) values (4,'Virginie');
insert into participant(id_participant,surnom) values (5,'Adrien');


--  UTILISATEURS
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participant) values (1, 'louis@tricountda2i.fr', '$2a$10$KXHexAZvD70OqNd278fQ.OcW3IJR7tVe5W0nPfjpfdA90rWH7Erp.', 'Louis', 1);
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participant) values (2, 'ludo@tricountda2i.fr', '$2a$10$B03pFyWtBW63h/UrhZhUHuZI3YnamYGD4elDcoQUIbGpOlTfmFFBS', 'Ludo', 2);
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participant) values (3, 'nagi@tricountda2i.fr', '$2a$10$xavYxYd6F3VAsFrI9dx1BOqyIqf0rHgExtJbLOEAEZkp9E0FBdoKe', 'Nagi', 3);
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participant) values (4, 'virginie@tricountda2i.fr', '$2a$10$mrMUYpc6hkns2Etv60etDerKYhc1cob94oxbWsSOFrUx7co5uiHTq', 'Virginie', 4);
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participant) values (5, 'adrien@tricountda2i.fr', '$2a$10$9owWmPGyJrp.dv761xDkzer6JnCAulIHdoBYFRrYmtDr0/jhiCJV.', 'Adrien', 5);

--On lie les participants aux utilisateurs
update participant set utilisateur_id_utilisateur = 1 where participant.id_participant = 1;
update participant set utilisateur_id_utilisateur = 2 where participant.id_participant = 2;
update participant set utilisateur_id_utilisateur = 3 where participant.id_participant = 3;
update participant set utilisateur_id_utilisateur = 4 where participant.id_participant = 4;
update participant set utilisateur_id_utilisateur = 5 where participant.id_participant = 5;


--  EVENEMENTS
insert into evenement(id_evenement,description,titre) values (1,'Vacances Japon','Vacances au Japon 2022');
insert into evenement(id_evenement,description,titre) values (2,'Vacances Portugal','Vacances au Portugal 2020');
insert into evenement(id_evenement,description,titre) values (3,'Restaurant Samedi','Restaurant de samedi midi');


-- LISTE DES PARTICIPANTS AUX EVENEMENTS
        --evenement 1
insert into participants_evenements (id_participant,id_evenement) values (1,1);
insert into participants_evenements (id_participant,id_evenement) values (2,1);
insert into participants_evenements (id_participant,id_evenement) values (3,1);
insert into participants_evenements (id_participant,id_evenement) values (4,1);
insert into participants_evenements (id_participant,id_evenement) values (5,1);

        --evenement 2
insert into participants_evenements (id_participant,id_evenement) values (2,2);
insert into participants_evenements (id_participant,id_evenement) values (1,2);
insert into participants_evenements (id_participant,id_evenement) values (3,2);

        --evenement 3
insert into participants_evenements (id_participant,id_evenement) values (3,3);
insert into participants_evenements (id_participant,id_evenement) values (1,3);


--  ECRITURES (evenement,payeur,types d'écriture)
        --evenement 1
insert into ecriture values (1,'2022-01-01','Billets d''avion',1000.35,'DEPENSE','EUR',1,1);
insert into ecriture values (2,'2022-01-01','Taxi arrivée Tokyo',120,'DEPENSE','EUR',1,1);
insert into ecriture values (3,'2022-01-01','Visite musée Tokyo',254.51,'DEPENSE','EUR',1,2);
insert into ecriture values (4,'2022-01-02','Restaurant sushi',206.25,'DEPENSE','EUR',1,2);
insert into ecriture values (5,'2022-01-02','Bars',112.35,'DEPENSE','EUR',1,3);
insert into ecriture values (6,'2022-01-02','Courses',148.56,'DEPENSE','EUR',1,3);
insert into ecriture values (7,'2022-01-03','Souvenirs',59.62,'DEPENSE','EUR',1,4);
insert into ecriture values (8,'2022-01-03','Location vélo',120,'DEPENSE','EUR',1,4);
insert into ecriture values (9,'2022-01-03','Taxi départ Tokyo',110.5,'DEPENSE','EUR',1,5);

        --evenement 2
insert into ecriture values (10,'2020-05-01','Billets d''avions',1000,'DEPENSE','EUR',2,1);
insert into ecriture values (11,'2020-05-01','Taxi arrivée Lisbonne',100,'DEPENSE','EUR',2,1);
insert into ecriture values (12,'2020-05-02','Location bateau',500,'DEPENSE','EUR',2,1);
insert into ecriture values (13,'2020-05-02','Restaurant grillades',150,'DEPENSE','EUR',2,2);
insert into ecriture values (14,'2020-05-02','Bar sur la plage',50,'DEPENSE','EUR',2,2);
insert into ecriture values (15,'2020-05-03','Glaces',50,'DEPENSE','EUR',2,2);
insert into ecriture values (16,'2020-05-03','Visite musée Lisbonne',50,'DEPENSE','EUR',2,3);
insert into ecriture values (17,'2020-05-04','Souvenirs',50,'DEPENSE','EUR',2,3);
insert into ecriture values (18,'2020-05-05','Taxi retour aéroport',10,'DEPENSE','EUR',2,3);

        --evenement 3
insert into ecriture values (19,'2020-02-22','Plats',50,'DEPENSE','EUR',3,1);
insert into ecriture values (20,'2020-02-22','Boissons',20,'DEPENSE','EUR',3,3);


-- PARTICPANTS AUX ECRITURES (POUR QUI L'ECRITURE EST FAITE)
--evenement 1   participants=(1,2,3,4,5)
    --ecriture 1
insert into participants_ecritures (id_participant,id_ecriture) values (1,1);
insert into participants_ecritures (id_participant,id_ecriture) values (2,1);
insert into participants_ecritures (id_participant,id_ecriture) values (3,1);
insert into participants_ecritures (id_participant,id_ecriture) values (4,1);
insert into participants_ecritures (id_participant,id_ecriture) values (5,1);

    --ecriture 2
insert into participants_ecritures (id_participant,id_ecriture) values (1,2);
insert into participants_ecritures (id_participant,id_ecriture) values (2,2);
insert into participants_ecritures (id_participant,id_ecriture) values (3,2);
insert into participants_ecritures (id_participant,id_ecriture) values (4,2);
insert into participants_ecritures (id_participant,id_ecriture) values (5,2);

    --ecriture 3
insert into participants_ecritures (id_participant,id_ecriture) values (1,3);
insert into participants_ecritures (id_participant,id_ecriture) values (2,3);
insert into participants_ecritures (id_participant,id_ecriture) values (3,3);
insert into participants_ecritures (id_participant,id_ecriture) values (4,3);
insert into participants_ecritures (id_participant,id_ecriture) values (5,3);

    --ecriture 4
insert into participants_ecritures (id_participant,id_ecriture) values (1,4);
insert into participants_ecritures (id_participant,id_ecriture) values (2,4);
insert into participants_ecritures (id_participant,id_ecriture) values (3,4);
insert into participants_ecritures (id_participant,id_ecriture) values (4,4);
insert into participants_ecritures (id_participant,id_ecriture) values (5,4);

    --ecriture 5
insert into participants_ecritures (id_participant,id_ecriture) values (1,5);
insert into participants_ecritures (id_participant,id_ecriture) values (2,5);
insert into participants_ecritures (id_participant,id_ecriture) values (3,5);
insert into participants_ecritures (id_participant,id_ecriture) values (4,5);
insert into participants_ecritures (id_participant,id_ecriture) values (5,5);

    --ecriture 6
insert into participants_ecritures (id_participant,id_ecriture) values (1,6);
insert into participants_ecritures (id_participant,id_ecriture) values (2,6);
insert into participants_ecritures (id_participant,id_ecriture) values (3,6);
insert into participants_ecritures (id_participant,id_ecriture) values (4,6);
insert into participants_ecritures (id_participant,id_ecriture) values (5,6);

    --ecriture 7
insert into participants_ecritures (id_participant,id_ecriture) values (1,7);
insert into participants_ecritures (id_participant,id_ecriture) values (2,7);
insert into participants_ecritures (id_participant,id_ecriture) values (3,7);
insert into participants_ecritures (id_participant,id_ecriture) values (4,7);
insert into participants_ecritures (id_participant,id_ecriture) values (5,7);

    --ecriture 8
insert into participants_ecritures (id_participant,id_ecriture) values (1,8);
insert into participants_ecritures (id_participant,id_ecriture) values (2,8);
insert into participants_ecritures (id_participant,id_ecriture) values (3,8);
insert into participants_ecritures (id_participant,id_ecriture) values (4,8);
insert into participants_ecritures (id_participant,id_ecriture) values (5,8);

    --ecriture 9
insert into participants_ecritures (id_participant,id_ecriture) values (1,9);
insert into participants_ecritures (id_participant,id_ecriture) values (2,9);
insert into participants_ecritures (id_participant,id_ecriture) values (3,9);
insert into participants_ecritures (id_participant,id_ecriture) values (4,9);
insert into participants_ecritures (id_participant,id_ecriture) values (5,9);


--evenement 2   participants=(1,2,3)
    --ecriture 10
insert into participants_ecritures (id_participant,id_ecriture) values (1,10);
insert into participants_ecritures (id_participant,id_ecriture) values (2,10);
insert into participants_ecritures (id_participant,id_ecriture) values (3,10);

    --ecriture 11
insert into participants_ecritures (id_participant,id_ecriture) values (1,11);
insert into participants_ecritures (id_participant,id_ecriture) values (2,11);
insert into participants_ecritures (id_participant,id_ecriture) values (3,11);

    --ecriture 12
insert into participants_ecritures (id_participant,id_ecriture) values (1,12);
insert into participants_ecritures (id_participant,id_ecriture) values (2,12);
insert into participants_ecritures (id_participant,id_ecriture) values (3,12);

    --ecriture 13
insert into participants_ecritures (id_participant,id_ecriture) values (1,13);
insert into participants_ecritures (id_participant,id_ecriture) values (2,13);
insert into participants_ecritures (id_participant,id_ecriture) values (3,13);

    --ecriture 14
insert into participants_ecritures (id_participant,id_ecriture) values (1,14);
insert into participants_ecritures (id_participant,id_ecriture) values (2,14);
insert into participants_ecritures (id_participant,id_ecriture) values (3,14);

    --ecriture 15
insert into participants_ecritures (id_participant,id_ecriture) values (1,15);
insert into participants_ecritures (id_participant,id_ecriture) values (2,15);
insert into participants_ecritures (id_participant,id_ecriture) values (3,15);

    --ecriture 16
insert into participants_ecritures (id_participant,id_ecriture) values (1,16);
insert into participants_ecritures (id_participant,id_ecriture) values (2,16);
insert into participants_ecritures (id_participant,id_ecriture) values (3,16);

    --ecriture 17
insert into participants_ecritures (id_participant,id_ecriture) values (1,17);
insert into participants_ecritures (id_participant,id_ecriture) values (2,17);
insert into participants_ecritures (id_participant,id_ecriture) values (3,17);

    --ecriture 18
insert into participants_ecritures (id_participant,id_ecriture) values (1,18);
insert into participants_ecritures (id_participant,id_ecriture) values (2,18);
insert into participants_ecritures (id_participant,id_ecriture) values (3,18);


--evenement 3   participants=(1,3)
    --ecriture 19
insert into participants_ecritures (id_participant,id_ecriture) values (1,19);
insert into participants_ecritures (id_participant,id_ecriture) values (3,19);
    --ecriture 20
insert into participants_ecritures (id_participant,id_ecriture) values (1,20);
insert into participants_ecritures (id_participant,id_ecriture) values (3,20);