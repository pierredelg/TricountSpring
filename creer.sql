create sequence hibernate_sequence start 1 increment 1;
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code));
create table ecriture (id_ecriture serial, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture));
create table evenement (id_evenement serial, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement));
create table participant (id_participants serial, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants));
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null);
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null);
create table type_ecriture (id_type_ecriture serial, nom_du_type varchar(255), primary key (id_type_ecriture));
create table utilisateur (id_utilisateur serial, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur));
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise;
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement;
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant;
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture;
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant;
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur;
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture;
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant;
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement;
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant;
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant;
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(email,mot_de_passe,nom) values ('utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(email,mot_de_passe,nom) values ('utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(email,mot_de_passe,nom) values ('utilisateur3@test.fr','test','utilisateur3')
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
insert into participant(id_participants, surnom) values (1,'surnom 1')
insert into participant(id_participants, surnom) values (2,'surnom 2')
insert into participant(id_participants, surnom) values (3,'surnom 3')
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
insert into participant(id_participants, surnom) values (1,'surnom 1')
insert into participant(id_participants, surnom) values (2,'surnom 2')
insert into participant(id_participants, surnom) values (3,'surnom 3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (2,"Rentrée d'argent")
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (3,"Transfert d'argent")
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
insert into participant(id_participants, surnom) values (1,'surnom 1')
insert into participant(id_participants, surnom) values (2,'surnom 2')
insert into participant(id_participants, surnom) values (3,'surnom 3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (2,"Rentrée d\'argent")
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (3,"Transfert d\'argent")
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
insert into participant(id_participants, surnom) values (1,'surnom 1')
insert into participant(id_participants, surnom) values (2,'surnom 2')
insert into participant(id_participants, surnom) values (3,'surnom 3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (2,'Rentrée d\'argent')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (3,'Transfert d\'argent')
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
insert into participant(id_participants, surnom) values (1,'surnom 1')
insert into participant(id_participants, surnom) values (2,'surnom 2')
insert into participant(id_participants, surnom) values (3,'surnom 3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (3,'Transfert d''argent')
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
insert into participant(id_participants, surnom) values (1,'surnom 1')
insert into participant(id_participants, surnom) values (2,'surnom 2')
insert into participant(id_participants, surnom) values (3,'surnom 3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (3,'Transfert d''argent')
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
insert into participant(id_participants, surnom) values (1,'surnom 1')
insert into participant(id_participants, surnom) values (2,'surnom 2')
insert into participant(id_participants, surnom) values (3,'surnom 3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (3,'Transfert d''argent')
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
insert into participant(id_participants, surnom) values (1,'surnom 1')
insert into participant(id_participants, surnom) values (2,'surnom 2')
insert into participant(id_participants, surnom) values (3,'surnom 3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (3,'Transfert d''argent')
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
insert into participant(id_participants, surnom) values (1,'surnom 1')
insert into participant(id_participants, surnom) values (2,'surnom 2')
insert into participant(id_participants, surnom) values (3,'surnom 3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (3,'Transfert d''argent')
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
insert into participant(id_participants, surnom) values (1,'surnom 1')
insert into participant(id_participants, surnom) values (2,'surnom 2')
insert into participant(id_participants, surnom) values (3,'surnom 3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (3,'Transfert d''argent')
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
insert into participant(id_participants, surnom) values (1,'surnom 1')
insert into participant(id_participants, surnom) values (2,'surnom 2')
insert into participant(id_participants, surnom) values (3,'surnom 3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (3,'Transfert d''argent')
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
insert into participant(id_participants, surnom) values (1,'surnom 1')
insert into participant(id_participants, surnom) values (2,'surnom 2')
insert into participant(id_participants, surnom) values (3,'surnom 3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (3,'Transfert d''argent')
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
insert into participant(id_participants, surnom) values (1,'surnom 1')
insert into participant(id_participants, surnom) values (2,'surnom 2')
insert into participant(id_participants, surnom) values (3,'surnom 3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (3,'Transfert d''argent')
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
insert into participant(id_participants, surnom) values (1,'surnom 1')
insert into participant(id_participants, surnom) values (2,'surnom 2')
insert into participant(id_participants, surnom) values (3,'surnom 3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture, nom_du_type) VALUES (3,'Transfert d''argent')
