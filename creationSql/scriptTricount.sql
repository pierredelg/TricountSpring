/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     12/01/2020 14:06:40                          */
/*==============================================================*/


drop index ASSOCIATION_9_FK IF EXISTS;

drop index ASSOCIATION_7_FK IF EXISTS;

drop index ASSOCIATION_7_PK IF EXISTS;

drop table IF EXISTS ASSOCIATION_7;

drop index IF EXISTS ASSOCIATION_11_FK;

drop index IF EXISTS ASSOCIATION_10_FK;

drop index IF EXISTS ASSOCIATION_9_PK;

drop table IF EXISTS ASSOCIATION_9;

drop index IF EXISTS DEVISE_PK;

drop table IF EXISTS DEVISE;

drop index IF EXISTS ASSOCIATION_8_FK;

drop index IF EXISTS ASSOCIATION_6_FK;

drop index IF EXISTS ASSOCIATION_5_FK;

drop index IF EXISTS EST_DEFINIE_PAR_FK;

drop index IF EXISTS ECRITURE_PK;

drop table IF EXISTS ECRITURE;

drop index IF EXISTS CREE_FK;

drop index IF EXISTS EVENEMENT_PK;

drop table IF EXISTS EVENEMENT;

drop index IF EXISTS EST_UN_FK;

drop index IF EXISTS PARTICIPANT_PK;

drop table IF EXISTS PARTICIPANT;

drop index IF EXISTS TYPE_ECRITURE_PK;

drop table IF EXISTS TYPE_ECRITURE;

drop index IF EXISTS EST_UN2_FK;

drop index IF EXISTS UTILISATEUR_PK;

drop table IF EXISTS UTILISATEUR;

/*==============================================================*/
/* Table: ASSOCIATION_7                                         */
/*==============================================================*/
create table ASSOCIATION_7 (
   ID_PARTICIPANTS      INT4                 not null,
   ID_EVENEMENT         INT4                 not null,
   constraint PK_ASSOCIATION_7 primary key (ID_PARTICIPANTS, ID_EVENEMENT)
);

/*==============================================================*/
/* Index: ASSOCIATION_7_PK                                      */
/*==============================================================*/
create unique index ASSOCIATION_7_PK on ASSOCIATION_7 (
ID_PARTICIPANTS,
ID_EVENEMENT
);

/*==============================================================*/
/* Index: ASSOCIATION_7_FK                                      */
/*==============================================================*/
create  index ASSOCIATION_7_FK on ASSOCIATION_7 (
ID_PARTICIPANTS
);

/*==============================================================*/
/* Index: ASSOCIATION_9_FK                                      */
/*==============================================================*/
create  index ASSOCIATION_9_FK on ASSOCIATION_7 (
ID_EVENEMENT
);

/*==============================================================*/
/* Table: ASSOCIATION_9                                         */
/*==============================================================*/
create table ASSOCIATION_9 (
   ID_ECRITURE          INT4                 not null,
   ID_PARTICIPANTS      INT4                 not null,
   constraint PK_ASSOCIATION_9 primary key (ID_ECRITURE, ID_PARTICIPANTS)
);

/*==============================================================*/
/* Index: ASSOCIATION_9_PK                                      */
/*==============================================================*/
create unique index ASSOCIATION_9_PK on ASSOCIATION_9 (
ID_ECRITURE,
ID_PARTICIPANTS
);

/*==============================================================*/
/* Index: ASSOCIATION_10_FK                                     */
/*==============================================================*/
create  index ASSOCIATION_10_FK on ASSOCIATION_9 (
ID_ECRITURE
);

/*==============================================================*/
/* Index: ASSOCIATION_11_FK                                     */
/*==============================================================*/
create  index ASSOCIATION_11_FK on ASSOCIATION_9 (
ID_PARTICIPANTS
);

/*==============================================================*/
/* Table: DEVISE                                                */
/*==============================================================*/
create table DEVISE (
   CODE                 VARCHAR(3)           not null,
   NOM_DE_DEVISE        VARCHAR(255)         null,
   SYMBOLE              VARCHAR(10)          null,
   constraint PK_DEVISE primary key (CODE)
);

/*==============================================================*/
/* Index: DEVISE_PK                                             */
/*==============================================================*/
create unique index DEVISE_PK on DEVISE (
CODE
);

/*==============================================================*/
/* Table: ECRITURE                                              */
/*==============================================================*/
create table ECRITURE (
   ID_ECRITURE          SERIAL               not null,
   ID_PARTICIPANTS      INT4                 not null,
   CODE                 VARCHAR(3)           not null,
   ID_TYPE_ECRITURE     INT4                 not null,
   ID_EVENEMENT         INT4                 not null,
   LIBELLE              VARCHAR(1024)        null,
   MONTANT              NUMERIC              null,
   DATE                 DATE                 null,
   PHOTO                INT2                 null,
   constraint PK_ECRITURE primary key (ID_ECRITURE)
);

/*==============================================================*/
/* Index: ECRITURE_PK                                           */
/*==============================================================*/
create unique index ECRITURE_PK on ECRITURE (
ID_ECRITURE
);

/*==============================================================*/
/* Index: EST_DEFINIE_PAR_FK                                    */
/*==============================================================*/
create  index EST_DEFINIE_PAR_FK on ECRITURE (
ID_TYPE_ECRITURE
);

/*==============================================================*/
/* Index: ASSOCIATION_5_FK                                      */
/*==============================================================*/
create  index ASSOCIATION_5_FK on ECRITURE (
ID_EVENEMENT
);

/*==============================================================*/
/* Index: ASSOCIATION_6_FK                                      */
/*==============================================================*/
create  index ASSOCIATION_6_FK on ECRITURE (
CODE
);

/*==============================================================*/
/* Index: ASSOCIATION_8_FK                                      */
/*==============================================================*/
create  index ASSOCIATION_8_FK on ECRITURE (
ID_PARTICIPANTS
);

/*==============================================================*/
/* Table: EVENEMENT                                             */
/*==============================================================*/
create table EVENEMENT (
   ID_EVENEMENT         SERIAL               not null,
   ID_PARTICIPANTS      INT4                 not null,
   TITRE                VARCHAR(1024)        null,
   DESCRIPTION          TEXT                 null,
   constraint PK_EVENEMENT primary key (ID_EVENEMENT)
);

/*==============================================================*/
/* Index: EVENEMENT_PK                                          */
/*==============================================================*/
create unique index EVENEMENT_PK on EVENEMENT (
ID_EVENEMENT
);

/*==============================================================*/
/* Index: CREE_FK                                               */
/*==============================================================*/
create  index CREE_FK on EVENEMENT (
ID_PARTICIPANTS
);

/*==============================================================*/
/* Table: PARTICIPANT                                           */
/*==============================================================*/
create table PARTICIPANT (
   ID_PARTICIPANTS      SERIAL               not null,
   ID_UTILISATEUR       INT4                 null,
   SURNOM               VARCHAR(255)         null,
   constraint PK_PARTICIPANT primary key (ID_PARTICIPANTS)
);

/*==============================================================*/
/* Index: PARTICIPANT_PK                                        */
/*==============================================================*/
create unique index PARTICIPANT_PK on PARTICIPANT (
ID_PARTICIPANTS
);

/*==============================================================*/
/* Index: EST_UN_FK                                             */
/*==============================================================*/
create  index EST_UN_FK on PARTICIPANT (
ID_UTILISATEUR
);

/*==============================================================*/
/* Table: TYPE_ECRITURE                                         */
/*==============================================================*/
create table TYPE_ECRITURE (
   ID_TYPE_ECRITURE     SERIAL               not null,
   NOM_DU_TYPE          VARCHAR(255)         null,
   constraint PK_TYPE_ECRITURE primary key (ID_TYPE_ECRITURE)
);

/*==============================================================*/
/* Index: TYPE_ECRITURE_PK                                      */
/*==============================================================*/
create unique index TYPE_ECRITURE_PK on TYPE_ECRITURE (
ID_TYPE_ECRITURE
);

/*==============================================================*/
/* Table: UTILISATEUR                                           */
/*==============================================================*/
create table UTILISATEUR (
   ID_UTILISATEUR       SERIAL               not null,
   ID_PARTICIPANTS      INT4                 not null,
   NOM                  VARCHAR(255)         null,
   MOT_DE_PASSE         VARCHAR(255)         null,
   EMAIL                VARCHAR(255)         null,
   constraint PK_UTILISATEUR primary key (ID_UTILISATEUR)
);

/*==============================================================*/
/* Index: UTILISATEUR_PK                                        */
/*==============================================================*/
create unique index UTILISATEUR_PK on UTILISATEUR (
ID_UTILISATEUR
);

/*==============================================================*/
/* Index: EST_UN2_FK                                            */
/*==============================================================*/
create  index EST_UN2_FK on UTILISATEUR (
ID_PARTICIPANTS
);

alter table ASSOCIATION_7
   add constraint FK_ASSOCIAT_ASSOCIATI_PARTICIP foreign key (ID_PARTICIPANTS)
      references PARTICIPANT (ID_PARTICIPANTS)
      on delete restrict on update restrict;

alter table ASSOCIATION_7
   add constraint FK_ASSOCIAT_ASSOCIATI_EVENEMEN foreign key (ID_EVENEMENT)
      references EVENEMENT (ID_EVENEMENT)
      on delete restrict on update restrict;

alter table ASSOCIATION_9
   add constraint FK_ASSOCIAT_ASSOCIATI_ECRITURE foreign key (ID_ECRITURE)
      references ECRITURE (ID_ECRITURE)
      on delete restrict on update restrict;

alter table ASSOCIATION_9
   add constraint FK_ASSOCIAT_ASSOCIATI_PARTICIP foreign key (ID_PARTICIPANTS)
      references PARTICIPANT (ID_PARTICIPANTS)
      on delete restrict on update restrict;

alter table ECRITURE
   add constraint FK_ECRITURE_ASSOCIATI_EVENEMEN foreign key (ID_EVENEMENT)
      references EVENEMENT (ID_EVENEMENT)
      on delete restrict on update restrict;

alter table ECRITURE
   add constraint FK_ECRITURE_ASSOCIATI_DEVISE foreign key (CODE)
      references DEVISE (CODE)
      on delete restrict on update restrict;

alter table ECRITURE
   add constraint FK_ECRITURE_ASSOCIATI_PARTICIP foreign key (ID_PARTICIPANTS)
      references PARTICIPANT (ID_PARTICIPANTS)
      on delete restrict on update restrict;

alter table ECRITURE
   add constraint FK_ECRITURE_EST_DEFIN_TYPE_ECR foreign key (ID_TYPE_ECRITURE)
      references TYPE_ECRITURE (ID_TYPE_ECRITURE)
      on delete restrict on update restrict;

alter table EVENEMENT
   add constraint FK_EVENEMEN_CREE_PARTICIP foreign key (ID_PARTICIPANTS)
      references PARTICIPANT (ID_PARTICIPANTS)
      on delete restrict on update restrict;

alter table PARTICIPANT
   add constraint FK_PARTICIP_EST_UN_UTILISAT foreign key (ID_UTILISATEUR)
      references UTILISATEUR (ID_UTILISATEUR)
      on delete restrict on update restrict;

alter table UTILISATEUR
   add constraint FK_UTILISAT_EST_UN2_PARTICIP foreign key (ID_PARTICIPANTS)
      references PARTICIPANT (ID_PARTICIPANTS)
      on delete restrict on update restrict;

