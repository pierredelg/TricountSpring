--  DEVISES
insert into devise(code, nom_de_devise, symbole) values ('EUR','Euros','€');
insert into devise(code, nom_de_devise, symbole) values ('DOL','Dollars','$');
insert into devise(code, nom_de_devise, symbole) values ('LIV','Livre sterling','£');

--  PARTICIPANTS
insert into participant(id_participant,surnom) values (1,'surnom 1');
insert into participant(id_participant,surnom) values (2,'surnom 2');
insert into participant(id_participant,surnom) values (3,'surnom 3');
insert into participant(id_participant,surnom) values (4,'surnom 4');
insert into participant(id_participant,surnom) values (5,'surnom 5');


--  UTILISATEURS
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participant) values (1, 'utilisateur1@test.fr', '$2a$10$KXHexAZvD70OqNd278fQ.OcW3IJR7tVe5W0nPfjpfdA90rWH7Erp.', 'Utilisateur 1', 1);
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participant) values (2, 'utilisateur2@test.fr', '$2a$10$B03pFyWtBW63h/UrhZhUHuZI3YnamYGD4elDcoQUIbGpOlTfmFFBS', 'Utilisateur 2', 2);
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participant) values (3, 'utilisateur3@test.fr', '$2a$10$xavYxYd6F3VAsFrI9dx1BOqyIqf0rHgExtJbLOEAEZkp9E0FBdoKe', 'Utilisateur 3', 3);
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participant) values (4, 'utilisateur4@test.fr', '$2a$10$mrMUYpc6hkns2Etv60etDerKYhc1cob94oxbWsSOFrUx7co5uiHTq', 'Utilisateur 4', 4);
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participant) values (5, 'utilisateur5@test.fr', '$2a$10$9owWmPGyJrp.dv761xDkzer6JnCAulIHdoBYFRrYmtDr0/jhiCJV.', 'Utilisateur 5', 5);

--On lie les participants aux utilisateurs
update participant set utilisateur_id_utilisateur = 1 where participant.id_participant = 1;
update participant set utilisateur_id_utilisateur = 2 where participant.id_participant = 2;
update participant set utilisateur_id_utilisateur = 3 where participant.id_participant = 3;
update participant set utilisateur_id_utilisateur = 4 where participant.id_participant = 4;
update participant set utilisateur_id_utilisateur = 5 where participant.id_participant = 5;


--  EVENEMENTS
insert into evenement(id_evenement,description,titre) values (1,'mon evenement','evenement 1');
insert into evenement(id_evenement,description,titre) values (2,'mon evenement','evenement 2');
insert into evenement(id_evenement,description,titre) values (3,'mon evenement','evenement 3');


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
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (1,'2020/01/01','ecriture 1',100,'DEPENSE','EUR',1,1);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (2,'2020/01/01','ecriture 2',100,'DEPENSE','EUR',1,1);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (3,'2020/01/01','ecriture 3',100,'DEPENSE','EUR',1,2);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (4,'2020/01/02','ecriture 4',100,'DEPENSE','EUR',1,2);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (5,'2020/01/02','ecriture 5',100,'DEPENSE','EUR',1,3);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (6,'2020/01/02','ecriture 6',100,'DEPENSE','EUR',1,3);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (7,'2020/01/03','ecriture 7',100,'DEPENSE','EUR',1,4);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (8,'2020/01/03','ecriture 8',100,'DEPENSE','EUR',1,4);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (9,'2020/01/03','ecriture 9',100,'DEPENSE','EUR',1,5);

        --evenement 2
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (10,'2020/01/01','ecriture 10',10,'DEPENSE','EUR',2,1);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (11,'2020/01/01','ecriture 11',10,'DEPENSE','EUR',2,1);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (12,'2020/01/01','ecriture 12',10,'DEPENSE','EUR',2,1);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (13,'2020/01/01','ecriture 13',10,'DEPENSE','EUR',2,2);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (14,'2020/01/01','ecriture 14',10,'DEPENSE','EUR',2,2);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (15,'2020/01/01','ecriture 15',10,'DEPENSE','EUR',2,2);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (16,'2020/01/01','ecriture 16',10,'DEPENSE','EUR',2,3);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (17,'2020/01/01','ecriture 17',10,'DEPENSE','EUR',2,3);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (18,'2020/01/01','ecriture 18',10,'DEPENSE','EUR',2,3);

        --evenement 3
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (19,'2020/01/01','ecriture 19',20,'DEPENSE','EUR',3,1);
insert into ecriture(id_ecriture,"date",libelle,montant,type_ecriture,code,id_evenement,id_participant) values (20,'2020/01/01','ecriture 20',30,'DEPENSE','EUR',3,3);


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