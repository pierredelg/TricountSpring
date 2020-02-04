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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','test','utilisateur3')
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
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(email,mot_de_passe,nom) values ('utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(email,mot_de_passe,nom) values ('utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(email,mot_de_passe,nom) values ('utilisateur3@test.fr','test','utilisateur3')
insert into participant(surnom) values ('surnom 1')
insert into participant(surnom) values ('surnom 2')
insert into participant(surnom) values ('surnom 3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(nom_du_type) VALUES ('Dépense')
insert into type_ecriture(nom_du_type) VALUES ('Rentrée d''argent')
insert into type_ecriture(nom_du_type) VALUES ('Transfert d''argent')
insert into evenement(description,titre,participant_id_participants) values ("mon evenement","evenement 1",1)
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
#insert into utilisateur(email,mot_de_passe,nom) values ('utilisateur1@test.fr','test','utilisateur1')
#insert into utilisateur(email,mot_de_passe,nom) values ('utilisateur2@test.fr','test','utilisateur2')
#insert into utilisateur(email,mot_de_passe,nom) values ('utilisateur3@test.fr','test','utilisateur3')
insert into participant(surnom) values ('surnom 1')
insert into participant(surnom) values ('surnom 2')
insert into participant(surnom) values ('surnom 3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(nom_du_type) VALUES ('Dépense')
insert into type_ecriture(nom_du_type) VALUES ('Rentrée d''argent')
insert into type_ecriture(nom_du_type) VALUES ('Transfert d''argent')
insert into evenement(description,titre,participant_id_participants) values ("mon evenement","evenement 1",1)
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','testtest','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','testtest','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','testtest','utilisateur3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture)
values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','testtest','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','testtest','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','testtest','utilisateur3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture)
values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','testtest','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','testtest','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','testtest','utilisateur3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture)
values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','testtest','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','testtest','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','testtest','utilisateur3')
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into participant(id_participants,surnom) values (4,'surnom 4')
insert into participant(id_participants,surnom) values (5,'surnom 5')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','testtest','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','testtest','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','testtest','utilisateur3')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (4,'utilisateur4@test.fr','testtest','utilisateur4')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (5,'utilisateur5@test.fr','testtest','utilisateur5')
update participant set utilisateur_id_utilisateur = 1 where id_participant = 1
update participant set utilisateur_id_utilisateur = 2 where id_participant = 2
update participant set utilisateur_id_utilisateur = 3 where id_participant = 3
update participant set utilisateur_id_utilisateur = 4 where id_participant = 4
update participant set utilisateur_id_utilisateur = 5 where id_participant = 5
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (4,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (5,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (2,'2020/01/01','ecriture 2',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (3,'2020/01/01','ecriture 3',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (4,'2020/01/02','ecriture 4',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (5,'2020/01/02','ecriture 5',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (6,'2020/01/02','ecriture 6',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (7,'2020/01/03','ecriture 7',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (8,'2020/01/03','ecriture 8',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (9,'2020/01/03','ecriture 9',100,null,'EUR',1,5,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (10,'2020/01/01','ecriture 10',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (11,'2020/01/01','ecriture 11',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (12,'2020/01/01','ecriture 12',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (13,'2020/01/01','ecriture 13',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (14,'2020/01/01','ecriture 14',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (15,'2020/01/01','ecriture 15',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (16,'2020/01/01','ecriture 16',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (17,'2020/01/01','ecriture 17',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (18,'2020/01/01','ecriture 18',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (19,'2020/01/01','ecriture 19',20,null,'EUR',3,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (20,'2020/01/01','ecriture 20',30,null,'EUR',3,3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,20)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,20)
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into participant(id_participants,surnom) values (4,'surnom 4')
insert into participant(id_participants,surnom) values (5,'surnom 5')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','testtest','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','testtest','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','testtest','utilisateur3')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (4,'utilisateur4@test.fr','testtest','utilisateur4')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (5,'utilisateur5@test.fr','testtest','utilisateur5')
update participant set utilisateur_id_utilisateur = 1 where participant.id_participants = 1
update participant set utilisateur_id_utilisateur = 2 where participant.id_participants = 2
update participant set utilisateur_id_utilisateur = 3 where participant.id_participants = 3
update participant set utilisateur_id_utilisateur = 4 where participant.id_participants = 4
update participant set utilisateur_id_utilisateur = 5 where participant.id_participants = 5
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (4,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (5,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (2,'2020/01/01','ecriture 2',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (3,'2020/01/01','ecriture 3',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (4,'2020/01/02','ecriture 4',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (5,'2020/01/02','ecriture 5',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (6,'2020/01/02','ecriture 6',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (7,'2020/01/03','ecriture 7',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (8,'2020/01/03','ecriture 8',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (9,'2020/01/03','ecriture 9',100,null,'EUR',1,5,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (10,'2020/01/01','ecriture 10',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (11,'2020/01/01','ecriture 11',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (12,'2020/01/01','ecriture 12',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (13,'2020/01/01','ecriture 13',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (14,'2020/01/01','ecriture 14',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (15,'2020/01/01','ecriture 15',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (16,'2020/01/01','ecriture 16',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (17,'2020/01/01','ecriture 17',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (18,'2020/01/01','ecriture 18',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (19,'2020/01/01','ecriture 19',20,null,'EUR',3,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (20,'2020/01/01','ecriture 20',30,null,'EUR',3,3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,20)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,20)
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 generated by default as identity, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into participant(id_participants,surnom) values (4,'surnom 4')
insert into participant(id_participants,surnom) values (5,'surnom 5')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','testtest','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','testtest','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','testtest','utilisateur3')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (4,'utilisateur4@test.fr','testtest','utilisateur4')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (5,'utilisateur5@test.fr','testtest','utilisateur5')
update participant set utilisateur_id_utilisateur = 1 where participant.id_participants = 1
update participant set utilisateur_id_utilisateur = 2 where participant.id_participants = 2
update participant set utilisateur_id_utilisateur = 3 where participant.id_participants = 3
update participant set utilisateur_id_utilisateur = 4 where participant.id_participants = 4
update participant set utilisateur_id_utilisateur = 5 where participant.id_participants = 5
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (4,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (5,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (2,'2020/01/01','ecriture 2',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (3,'2020/01/01','ecriture 3',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (4,'2020/01/02','ecriture 4',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (5,'2020/01/02','ecriture 5',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (6,'2020/01/02','ecriture 6',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (7,'2020/01/03','ecriture 7',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (8,'2020/01/03','ecriture 8',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (9,'2020/01/03','ecriture 9',100,null,'EUR',1,5,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (10,'2020/01/01','ecriture 10',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (11,'2020/01/01','ecriture 11',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (12,'2020/01/01','ecriture 12',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (13,'2020/01/01','ecriture 13',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (14,'2020/01/01','ecriture 14',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (15,'2020/01/01','ecriture 15',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (16,'2020/01/01','ecriture 16',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (17,'2020/01/01','ecriture 17',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (18,'2020/01/01','ecriture 18',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (19,'2020/01/01','ecriture 19',20,null,'EUR',3,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (20,'2020/01/01','ecriture 20',30,null,'EUR',3,3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,20)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,20)
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into participant(id_participants,surnom) values (4,'surnom 4')
insert into participant(id_participants,surnom) values (5,'surnom 5')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','testtest','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','testtest','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','testtest','utilisateur3')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (4,'utilisateur4@test.fr','testtest','utilisateur4')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (5,'utilisateur5@test.fr','testtest','utilisateur5')
update participant set utilisateur_id_utilisateur = 1 where participant.id_participants = 1
update participant set utilisateur_id_utilisateur = 2 where participant.id_participants = 2
update participant set utilisateur_id_utilisateur = 3 where participant.id_participants = 3
update participant set utilisateur_id_utilisateur = 4 where participant.id_participants = 4
update participant set utilisateur_id_utilisateur = 5 where participant.id_participants = 5
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (4,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (5,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (2,'2020/01/01','ecriture 2',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (3,'2020/01/01','ecriture 3',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (4,'2020/01/02','ecriture 4',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (5,'2020/01/02','ecriture 5',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (6,'2020/01/02','ecriture 6',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (7,'2020/01/03','ecriture 7',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (8,'2020/01/03','ecriture 8',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (9,'2020/01/03','ecriture 9',100,null,'EUR',1,5,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (10,'2020/01/01','ecriture 10',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (11,'2020/01/01','ecriture 11',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (12,'2020/01/01','ecriture 12',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (13,'2020/01/01','ecriture 13',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (14,'2020/01/01','ecriture 14',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (15,'2020/01/01','ecriture 15',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (16,'2020/01/01','ecriture 16',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (17,'2020/01/01','ecriture 17',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (18,'2020/01/01','ecriture 18',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (19,'2020/01/01','ecriture 19',20,null,'EUR',3,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (20,'2020/01/01','ecriture 20',30,null,'EUR',3,3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,20)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,20)
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table hibernate_sequences (sequence_name varchar(255) not null, next_val int8, primary key (sequence_name))
insert into hibernate_sequences(sequence_name, next_val) values ('default',0)
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into participant(id_participants,surnom) values (4,'surnom 4')
insert into participant(id_participants,surnom) values (5,'surnom 5')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','testtest','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','testtest','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','testtest','utilisateur3')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (4,'utilisateur4@test.fr','testtest','utilisateur4')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (5,'utilisateur5@test.fr','testtest','utilisateur5')
update participant set utilisateur_id_utilisateur = 1 where participant.id_participants = 1
update participant set utilisateur_id_utilisateur = 2 where participant.id_participants = 2
update participant set utilisateur_id_utilisateur = 3 where participant.id_participants = 3
update participant set utilisateur_id_utilisateur = 4 where participant.id_participants = 4
update participant set utilisateur_id_utilisateur = 5 where participant.id_participants = 5
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (4,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (5,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (2,'2020/01/01','ecriture 2',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (3,'2020/01/01','ecriture 3',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (4,'2020/01/02','ecriture 4',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (5,'2020/01/02','ecriture 5',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (6,'2020/01/02','ecriture 6',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (7,'2020/01/03','ecriture 7',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (8,'2020/01/03','ecriture 8',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (9,'2020/01/03','ecriture 9',100,null,'EUR',1,5,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (10,'2020/01/01','ecriture 10',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (11,'2020/01/01','ecriture 11',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (12,'2020/01/01','ecriture 12',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (13,'2020/01/01','ecriture 13',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (14,'2020/01/01','ecriture 14',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (15,'2020/01/01','ecriture 15',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (16,'2020/01/01','ecriture 16',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (17,'2020/01/01','ecriture 17',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (18,'2020/01/01','ecriture 18',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (19,'2020/01/01','ecriture 19',20,null,'EUR',3,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (20,'2020/01/01','ecriture 20',30,null,'EUR',3,3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,20)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,20)
create sequence hibernate_sequence start 1 increment 1
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table hibernate_sequences (sequence_name varchar(255) not null, next_val int8, primary key (sequence_name))
insert into hibernate_sequences(sequence_name, next_val) values ('default',0)
insert into hibernate_sequences(sequence_name, next_val) values ('default',0)
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into participant(id_participants,surnom) values (4,'surnom 4')
insert into participant(id_participants,surnom) values (5,'surnom 5')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','testtest','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','testtest','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','testtest','utilisateur3')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (4,'utilisateur4@test.fr','testtest','utilisateur4')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (5,'utilisateur5@test.fr','testtest','utilisateur5')
update participant set utilisateur_id_utilisateur = 1 where participant.id_participants = 1
update participant set utilisateur_id_utilisateur = 2 where participant.id_participants = 2
update participant set utilisateur_id_utilisateur = 3 where participant.id_participants = 3
update participant set utilisateur_id_utilisateur = 4 where participant.id_participants = 4
update participant set utilisateur_id_utilisateur = 5 where participant.id_participants = 5
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (4,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (5,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (2,'2020/01/01','ecriture 2',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (3,'2020/01/01','ecriture 3',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (4,'2020/01/02','ecriture 4',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (5,'2020/01/02','ecriture 5',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (6,'2020/01/02','ecriture 6',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (7,'2020/01/03','ecriture 7',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (8,'2020/01/03','ecriture 8',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (9,'2020/01/03','ecriture 9',100,null,'EUR',1,5,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (10,'2020/01/01','ecriture 10',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (11,'2020/01/01','ecriture 11',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (12,'2020/01/01','ecriture 12',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (13,'2020/01/01','ecriture 13',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (14,'2020/01/01','ecriture 14',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (15,'2020/01/01','ecriture 15',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (16,'2020/01/01','ecriture 16',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (17,'2020/01/01','ecriture 17',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (18,'2020/01/01','ecriture 18',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (19,'2020/01/01','ecriture 19',20,null,'EUR',3,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (20,'2020/01/01','ecriture 20',30,null,'EUR',3,3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,20)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,20)
create sequence hibernate_sequence start 1 increment 1
create sequence participant_seq start 1 increment 50
create sequence utilisateur_seq start 1 increment 50
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into participant(id_participants,surnom) values (4,'surnom 4')
insert into participant(id_participants,surnom) values (5,'surnom 5')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','testtest','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','testtest','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','testtest','utilisateur3')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (4,'utilisateur4@test.fr','testtest','utilisateur4')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (5,'utilisateur5@test.fr','testtest','utilisateur5')
update participant set utilisateur_id_utilisateur = 1 where participant.id_participants = 1
update participant set utilisateur_id_utilisateur = 2 where participant.id_participants = 2
update participant set utilisateur_id_utilisateur = 3 where participant.id_participants = 3
update participant set utilisateur_id_utilisateur = 4 where participant.id_participants = 4
update participant set utilisateur_id_utilisateur = 5 where participant.id_participants = 5
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (4,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (5,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (2,'2020/01/01','ecriture 2',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (3,'2020/01/01','ecriture 3',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (4,'2020/01/02','ecriture 4',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (5,'2020/01/02','ecriture 5',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (6,'2020/01/02','ecriture 6',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (7,'2020/01/03','ecriture 7',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (8,'2020/01/03','ecriture 8',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (9,'2020/01/03','ecriture 9',100,null,'EUR',1,5,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (10,'2020/01/01','ecriture 10',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (11,'2020/01/01','ecriture 11',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (12,'2020/01/01','ecriture 12',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (13,'2020/01/01','ecriture 13',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (14,'2020/01/01','ecriture 14',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (15,'2020/01/01','ecriture 15',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (16,'2020/01/01','ecriture 16',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (17,'2020/01/01','ecriture 17',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (18,'2020/01/01','ecriture 18',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (19,'2020/01/01','ecriture 19',20,null,'EUR',3,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (20,'2020/01/01','ecriture 20',30,null,'EUR',3,3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,20)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,20)
create sequence ecriture_seq start 21 increment 50
create sequence evenement_seq start 4 increment 50
create sequence participant_seq start 6 increment 50
create sequence type_ecriture_seq start 4 increment 50
create sequence utilisateur_seq start 6 increment 50
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into participant(id_participants,surnom) values (4,'surnom 4')
insert into participant(id_participants,surnom) values (5,'surnom 5')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (1,'utilisateur1@test.fr','testtest','utilisateur1')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (2,'utilisateur2@test.fr','testtest','utilisateur2')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (3,'utilisateur3@test.fr','testtest','utilisateur3')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (4,'utilisateur4@test.fr','testtest','utilisateur4')
insert into utilisateur(id_utilisateur,email,mot_de_passe,nom) values (5,'utilisateur5@test.fr','testtest','utilisateur5')
update participant set utilisateur_id_utilisateur = 1 where participant.id_participants = 1
update participant set utilisateur_id_utilisateur = 2 where participant.id_participants = 2
update participant set utilisateur_id_utilisateur = 3 where participant.id_participants = 3
update participant set utilisateur_id_utilisateur = 4 where participant.id_participants = 4
update participant set utilisateur_id_utilisateur = 5 where participant.id_participants = 5
insert into devise(code, nom_de_devise, symbole) VALUES ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) VALUES ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) VALUES ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) VALUES (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (4,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (5,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (2,'2020/01/01','ecriture 2',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (3,'2020/01/01','ecriture 3',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (4,'2020/01/02','ecriture 4',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (5,'2020/01/02','ecriture 5',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (6,'2020/01/02','ecriture 6',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (7,'2020/01/03','ecriture 7',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (8,'2020/01/03','ecriture 8',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (9,'2020/01/03','ecriture 9',100,null,'EUR',1,5,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (10,'2020/01/01','ecriture 10',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (11,'2020/01/01','ecriture 11',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (12,'2020/01/01','ecriture 12',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (13,'2020/01/01','ecriture 13',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (14,'2020/01/01','ecriture 14',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (15,'2020/01/01','ecriture 15',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (16,'2020/01/01','ecriture 16',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (17,'2020/01/01','ecriture 17',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (18,'2020/01/01','ecriture 18',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (19,'2020/01/01','ecriture 19',20,null,'EUR',3,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (20,'2020/01/01','ecriture 20',30,null,'EUR',3,3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,20)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,20)
create sequence ecriture_seq start 21 increment 50
create sequence evenement_seq start 4 increment 50
create sequence participant_seq start 6 increment 50
create sequence type_ecriture_seq start 4 increment 50
create sequence utilisateur_seq start 6 increment 50
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
create sequence ecriture_seq start 21 increment 50
create sequence evenement_seq start 4 increment 50
create sequence participant_seq start 6 increment 50
create sequence type_ecriture_seq start 4 increment 50
create sequence utilisateur_seq start 6 increment 50
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into participant(id_participants,surnom) values (4,'surnom 4')
insert into participant(id_participants,surnom) values (5,'surnom 5')
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom) values (1, 'utilisateur1@test.fr', '$2a$10$KXHexAZvD70OqNd278fQ.OcW3IJR7tVe5W0nPfjpfdA90rWH7Erp.', 'Utilisateur 1')
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom) values (2, 'utilisateur2@test.fr', '$2a$10$B03pFyWtBW63h/UrhZhUHuZI3YnamYGD4elDcoQUIbGpOlTfmFFBS', 'Utilisateur 2')
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom) values (3, 'utilisateur3@test.fr', '$2a$10$xavYxYd6F3VAsFrI9dx1BOqyIqf0rHgExtJbLOEAEZkp9E0FBdoKe', 'Utilisateur 3')
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom) values (4, 'utilisateur4@test.fr', '$2a$10$mrMUYpc6hkns2Etv60etDerKYhc1cob94oxbWsSOFrUx7co5uiHTq', 'Utilisateur 4')
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom) values (5, 'utilisateur5@test.fr', '$2a$10$9owWmPGyJrp.dv761xDkzer6JnCAulIHdoBYFRrYmtDr0/jhiCJV.', 'Utilisateur 5')
update participant set utilisateur_id_utilisateur = 1 where participant.id_participants = 1
update participant set utilisateur_id_utilisateur = 2 where participant.id_participants = 2
update participant set utilisateur_id_utilisateur = 3 where participant.id_participants = 3
update participant set utilisateur_id_utilisateur = 4 where participant.id_participants = 4
update participant set utilisateur_id_utilisateur = 5 where participant.id_participants = 5
insert into devise(code, nom_de_devise, symbole) values ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) values ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) values ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (4,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (5,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (2,'2020/01/01','ecriture 2',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (3,'2020/01/01','ecriture 3',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (4,'2020/01/02','ecriture 4',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (5,'2020/01/02','ecriture 5',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (6,'2020/01/02','ecriture 6',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (7,'2020/01/03','ecriture 7',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (8,'2020/01/03','ecriture 8',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (9,'2020/01/03','ecriture 9',100,null,'EUR',1,5,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (10,'2020/01/01','ecriture 10',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (11,'2020/01/01','ecriture 11',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (12,'2020/01/01','ecriture 12',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (13,'2020/01/01','ecriture 13',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (14,'2020/01/01','ecriture 14',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (15,'2020/01/01','ecriture 15',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (16,'2020/01/01','ecriture 16',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (17,'2020/01/01','ecriture 17',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (18,'2020/01/01','ecriture 18',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (19,'2020/01/01','ecriture 19',20,null,'EUR',3,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (20,'2020/01/01','ecriture 20',30,null,'EUR',3,3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,20)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,20)
create sequence ecriture_seq start 21 increment 50
create sequence evenement_seq start 4 increment 50
create sequence participant_seq start 6 increment 50
create sequence type_ecriture_seq start 4 increment 50
create sequence utilisateur_seq start 6 increment 50
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into participant(id_participants,surnom) values (4,'surnom 4')
insert into participant(id_participants,surnom) values (5,'surnom 5')
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (1, 'utilisateur1@test.fr', '$2a$10$KXHexAZvD70OqNd278fQ.OcW3IJR7tVe5W0nPfjpfdA90rWH7Erp.', 'Utilisateur 1', 1)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (2, 'utilisateur2@test.fr', '$2a$10$B03pFyWtBW63h/UrhZhUHuZI3YnamYGD4elDcoQUIbGpOlTfmFFBS', 'Utilisateur 2', 2)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (3, 'utilisateur3@test.fr', '$2a$10$xavYxYd6F3VAsFrI9dx1BOqyIqf0rHgExtJbLOEAEZkp9E0FBdoKe', 'Utilisateur 3', 3)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (4, 'utilisateur4@test.fr', '$2a$10$mrMUYpc6hkns2Etv60etDerKYhc1cob94oxbWsSOFrUx7co5uiHTq', 'Utilisateur 4', 4)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (5, 'utilisateur5@test.fr', '$2a$10$9owWmPGyJrp.dv761xDkzer6JnCAulIHdoBYFRrYmtDr0/jhiCJV.', 'Utilisateur 5', 5)
update participant set utilisateur_id_utilisateur = 1 where participant.id_participants = 1
update participant set utilisateur_id_utilisateur = 2 where participant.id_participants = 2
update participant set utilisateur_id_utilisateur = 3 where participant.id_participants = 3
update participant set utilisateur_id_utilisateur = 4 where participant.id_participants = 4
update participant set utilisateur_id_utilisateur = 5 where participant.id_participants = 5
insert into devise(code, nom_de_devise, symbole) values ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) values ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) values ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (4,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (5,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (2,'2020/01/01','ecriture 2',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (3,'2020/01/01','ecriture 3',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (4,'2020/01/02','ecriture 4',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (5,'2020/01/02','ecriture 5',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (6,'2020/01/02','ecriture 6',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (7,'2020/01/03','ecriture 7',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (8,'2020/01/03','ecriture 8',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (9,'2020/01/03','ecriture 9',100,null,'EUR',1,5,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (10,'2020/01/01','ecriture 10',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (11,'2020/01/01','ecriture 11',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (12,'2020/01/01','ecriture 12',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (13,'2020/01/01','ecriture 13',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (14,'2020/01/01','ecriture 14',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (15,'2020/01/01','ecriture 15',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (16,'2020/01/01','ecriture 16',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (17,'2020/01/01','ecriture 17',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (18,'2020/01/01','ecriture 18',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (19,'2020/01/01','ecriture 19',20,null,'EUR',3,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (20,'2020/01/01','ecriture 20',30,null,'EUR',3,3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,20)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,20)
create sequence ecriture_seq start 21 increment 50
create sequence evenement_seq start 4 increment 50
create sequence participant_seq start 6 increment 50
create sequence type_ecriture_seq start 4 increment 50
create sequence utilisateur_seq start 6 increment 50
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into participant(id_participants,surnom) values (4,'surnom 4')
insert into participant(id_participants,surnom) values (5,'surnom 5')
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (1, 'utilisateur1@test.fr', '$2a$10$KXHexAZvD70OqNd278fQ.OcW3IJR7tVe5W0nPfjpfdA90rWH7Erp.', 'Utilisateur 1', 1)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (2, 'utilisateur2@test.fr', '$2a$10$B03pFyWtBW63h/UrhZhUHuZI3YnamYGD4elDcoQUIbGpOlTfmFFBS', 'Utilisateur 2', 2)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (3, 'utilisateur3@test.fr', '$2a$10$xavYxYd6F3VAsFrI9dx1BOqyIqf0rHgExtJbLOEAEZkp9E0FBdoKe', 'Utilisateur 3', 3)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (4, 'utilisateur4@test.fr', '$2a$10$mrMUYpc6hkns2Etv60etDerKYhc1cob94oxbWsSOFrUx7co5uiHTq', 'Utilisateur 4', 4)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (5, 'utilisateur5@test.fr', '$2a$10$9owWmPGyJrp.dv761xDkzer6JnCAulIHdoBYFRrYmtDr0/jhiCJV.', 'Utilisateur 5', 5)
update participant set utilisateur_id_utilisateur = 1 where participant.id_participants = 1
update participant set utilisateur_id_utilisateur = 2 where participant.id_participants = 2
update participant set utilisateur_id_utilisateur = 3 where participant.id_participants = 3
update participant set utilisateur_id_utilisateur = 4 where participant.id_participants = 4
update participant set utilisateur_id_utilisateur = 5 where participant.id_participants = 5
insert into devise(code, nom_de_devise, symbole) values ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) values ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) values ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (4,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (5,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (2,'2020/01/01','ecriture 2',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (3,'2020/01/01','ecriture 3',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (4,'2020/01/02','ecriture 4',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (5,'2020/01/02','ecriture 5',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (6,'2020/01/02','ecriture 6',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (7,'2020/01/03','ecriture 7',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (8,'2020/01/03','ecriture 8',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (9,'2020/01/03','ecriture 9',100,null,'EUR',1,5,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (10,'2020/01/01','ecriture 10',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (11,'2020/01/01','ecriture 11',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (12,'2020/01/01','ecriture 12',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (13,'2020/01/01','ecriture 13',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (14,'2020/01/01','ecriture 14',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (15,'2020/01/01','ecriture 15',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (16,'2020/01/01','ecriture 16',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (17,'2020/01/01','ecriture 17',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (18,'2020/01/01','ecriture 18',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (19,'2020/01/01','ecriture 19',20,null,'EUR',3,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (20,'2020/01/01','ecriture 20',30,null,'EUR',3,3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,20)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,20)
create sequence ecriture_seq start 21 increment 50
create sequence evenement_seq start 4 increment 50
create sequence participant_seq start 6 increment 50
create sequence type_ecriture_seq start 4 increment 50
create sequence utilisateur_seq start 6 increment 50
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into participant(id_participants,surnom) values (4,'surnom 4')
insert into participant(id_participants,surnom) values (5,'surnom 5')
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (1, 'utilisateur1@test.fr', '$2a$10$KXHexAZvD70OqNd278fQ.OcW3IJR7tVe5W0nPfjpfdA90rWH7Erp.', 'Utilisateur 1', 1)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (2, 'utilisateur2@test.fr', '$2a$10$B03pFyWtBW63h/UrhZhUHuZI3YnamYGD4elDcoQUIbGpOlTfmFFBS', 'Utilisateur 2', 2)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (3, 'utilisateur3@test.fr', '$2a$10$xavYxYd6F3VAsFrI9dx1BOqyIqf0rHgExtJbLOEAEZkp9E0FBdoKe', 'Utilisateur 3', 3)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (4, 'utilisateur4@test.fr', '$2a$10$mrMUYpc6hkns2Etv60etDerKYhc1cob94oxbWsSOFrUx7co5uiHTq', 'Utilisateur 4', 4)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (5, 'utilisateur5@test.fr', '$2a$10$9owWmPGyJrp.dv761xDkzer6JnCAulIHdoBYFRrYmtDr0/jhiCJV.', 'Utilisateur 5', 5)
update participant set utilisateur_id_utilisateur = 1 where participant.id_participants = 1
update participant set utilisateur_id_utilisateur = 2 where participant.id_participants = 2
update participant set utilisateur_id_utilisateur = 3 where participant.id_participants = 3
update participant set utilisateur_id_utilisateur = 4 where participant.id_participants = 4
update participant set utilisateur_id_utilisateur = 5 where participant.id_participants = 5
insert into devise(code, nom_de_devise, symbole) values ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) values ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) values ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (4,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (5,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (2,'2020/01/01','ecriture 2',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (3,'2020/01/01','ecriture 3',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (4,'2020/01/02','ecriture 4',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (5,'2020/01/02','ecriture 5',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (6,'2020/01/02','ecriture 6',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (7,'2020/01/03','ecriture 7',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (8,'2020/01/03','ecriture 8',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (9,'2020/01/03','ecriture 9',100,null,'EUR',1,5,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (10,'2020/01/01','ecriture 10',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (11,'2020/01/01','ecriture 11',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (12,'2020/01/01','ecriture 12',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (13,'2020/01/01','ecriture 13',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (14,'2020/01/01','ecriture 14',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (15,'2020/01/01','ecriture 15',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (16,'2020/01/01','ecriture 16',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (17,'2020/01/01','ecriture 17',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (18,'2020/01/01','ecriture 18',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (19,'2020/01/01','ecriture 19',20,null,'EUR',3,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (20,'2020/01/01','ecriture 20',30,null,'EUR',3,3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,20)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,20)
create sequence ecriture_seq start 21 increment 50
create sequence evenement_seq start 4 increment 50
create sequence participant_seq start 6 increment 50
create sequence type_ecriture_seq start 4 increment 50
create sequence utilisateur_seq start 6 increment 50
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into participant(id_participants,surnom) values (4,'surnom 4')
insert into participant(id_participants,surnom) values (5,'surnom 5')
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (1, 'utilisateur1@test.fr', '$2a$10$KXHexAZvD70OqNd278fQ.OcW3IJR7tVe5W0nPfjpfdA90rWH7Erp.', 'Utilisateur 1', 1)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (2, 'utilisateur2@test.fr', '$2a$10$B03pFyWtBW63h/UrhZhUHuZI3YnamYGD4elDcoQUIbGpOlTfmFFBS', 'Utilisateur 2', 2)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (3, 'utilisateur3@test.fr', '$2a$10$xavYxYd6F3VAsFrI9dx1BOqyIqf0rHgExtJbLOEAEZkp9E0FBdoKe', 'Utilisateur 3', 3)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (4, 'utilisateur4@test.fr', '$2a$10$mrMUYpc6hkns2Etv60etDerKYhc1cob94oxbWsSOFrUx7co5uiHTq', 'Utilisateur 4', 4)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (5, 'utilisateur5@test.fr', '$2a$10$9owWmPGyJrp.dv761xDkzer6JnCAulIHdoBYFRrYmtDr0/jhiCJV.', 'Utilisateur 5', 5)
update participant set utilisateur_id_utilisateur = 1 where participant.id_participants = 1
update participant set utilisateur_id_utilisateur = 2 where participant.id_participants = 2
update participant set utilisateur_id_utilisateur = 3 where participant.id_participants = 3
update participant set utilisateur_id_utilisateur = 4 where participant.id_participants = 4
update participant set utilisateur_id_utilisateur = 5 where participant.id_participants = 5
insert into devise(code, nom_de_devise, symbole) values ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) values ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) values ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (4,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (5,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (2,'2020/01/01','ecriture 2',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (3,'2020/01/01','ecriture 3',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (4,'2020/01/02','ecriture 4',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (5,'2020/01/02','ecriture 5',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (6,'2020/01/02','ecriture 6',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (7,'2020/01/03','ecriture 7',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (8,'2020/01/03','ecriture 8',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (9,'2020/01/03','ecriture 9',100,null,'EUR',1,5,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (10,'2020/01/01','ecriture 10',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (11,'2020/01/01','ecriture 11',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (12,'2020/01/01','ecriture 12',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (13,'2020/01/01','ecriture 13',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (14,'2020/01/01','ecriture 14',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (15,'2020/01/01','ecriture 15',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (16,'2020/01/01','ecriture 16',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (17,'2020/01/01','ecriture 17',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (18,'2020/01/01','ecriture 18',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (19,'2020/01/01','ecriture 19',20,null,'EUR',3,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (20,'2020/01/01','ecriture 20',30,null,'EUR',3,3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,20)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,20)
create sequence ecriture_seq start 21 increment 50
create sequence evenement_seq start 4 increment 50
create sequence participant_seq start 6 increment 50
create sequence type_ecriture_seq start 4 increment 50
create sequence utilisateur_seq start 6 increment 50
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into participant(id_participants,surnom) values (4,'surnom 4')
insert into participant(id_participants,surnom) values (5,'surnom 5')
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (1, 'utilisateur1@test.fr', '$2a$10$KXHexAZvD70OqNd278fQ.OcW3IJR7tVe5W0nPfjpfdA90rWH7Erp.', 'Utilisateur 1', 1)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (2, 'utilisateur2@test.fr', '$2a$10$B03pFyWtBW63h/UrhZhUHuZI3YnamYGD4elDcoQUIbGpOlTfmFFBS', 'Utilisateur 2', 2)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (3, 'utilisateur3@test.fr', '$2a$10$xavYxYd6F3VAsFrI9dx1BOqyIqf0rHgExtJbLOEAEZkp9E0FBdoKe', 'Utilisateur 3', 3)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (4, 'utilisateur4@test.fr', '$2a$10$mrMUYpc6hkns2Etv60etDerKYhc1cob94oxbWsSOFrUx7co5uiHTq', 'Utilisateur 4', 4)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (5, 'utilisateur5@test.fr', '$2a$10$9owWmPGyJrp.dv761xDkzer6JnCAulIHdoBYFRrYmtDr0/jhiCJV.', 'Utilisateur 5', 5)
update participant set utilisateur_id_utilisateur = 1 where participant.id_participants = 1
update participant set utilisateur_id_utilisateur = 2 where participant.id_participants = 2
update participant set utilisateur_id_utilisateur = 3 where participant.id_participants = 3
update participant set utilisateur_id_utilisateur = 4 where participant.id_participants = 4
update participant set utilisateur_id_utilisateur = 5 where participant.id_participants = 5
insert into devise(code, nom_de_devise, symbole) values ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) values ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) values ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (4,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (5,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (2,'2020/01/01','ecriture 2',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (3,'2020/01/01','ecriture 3',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (4,'2020/01/02','ecriture 4',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (5,'2020/01/02','ecriture 5',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (6,'2020/01/02','ecriture 6',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (7,'2020/01/03','ecriture 7',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (8,'2020/01/03','ecriture 8',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (9,'2020/01/03','ecriture 9',100,null,'EUR',1,5,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (10,'2020/01/01','ecriture 10',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (11,'2020/01/01','ecriture 11',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (12,'2020/01/01','ecriture 12',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (13,'2020/01/01','ecriture 13',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (14,'2020/01/01','ecriture 14',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (15,'2020/01/01','ecriture 15',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (16,'2020/01/01','ecriture 16',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (17,'2020/01/01','ecriture 17',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (18,'2020/01/01','ecriture 18',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (19,'2020/01/01','ecriture 19',20,null,'EUR',3,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (20,'2020/01/01','ecriture 20',30,null,'EUR',3,3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,20)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,20)
create sequence ecriture_seq start 21 increment 50
create sequence evenement_seq start 4 increment 50
create sequence participant_seq start 6 increment 50
create sequence type_ecriture_seq start 4 increment 50
create sequence utilisateur_seq start 6 increment 50
create table devise (code varchar(255) not null, nom_de_devise varchar(255), symbole varchar(255), primary key (code))
create table ecriture (id_ecriture int4 not null, date date, libelle varchar(255), montant float8, photo bytea, devise_code varchar(255), evenement_id_evenement int4, participant_id_participants int4, type_ecriture_id_type_ecriture int4, primary key (id_ecriture))
create table evenement (id_evenement int4 not null, description varchar(255), titre varchar(255), participant_id_participants int4, primary key (id_evenement))
create table participant (id_participants int4 not null, surnom varchar(255), utilisateur_id_utilisateur int4, primary key (id_participants))
create table participant_ecrituresapayer (participants_id_participants int4 not null, ecrituresapayer_id_ecriture int4 not null)
create table participant_evenements_participes (participants_id_participants int4 not null, evenements_participes_id_evenement int4 not null)
create table type_ecriture (id_type_ecriture int4 not null, nom_du_type varchar(255), primary key (id_type_ecriture))
create table utilisateur (id_utilisateur int4 not null, email varchar(255), mot_de_passe varchar(255), nom varchar(255), participant_id_participants int4, primary key (id_utilisateur))
alter table if exists ecriture add constraint FKn12g1ljrrd97vnjj3c0nbyqsg foreign key (devise_code) references devise
alter table if exists ecriture add constraint FKcevxkme76bnc2kguwyiegahrj foreign key (evenement_id_evenement) references evenement
alter table if exists ecriture add constraint FK7cl7162od4qup7ckf3lxh2kwn foreign key (participant_id_participants) references participant
alter table if exists ecriture add constraint FKfsaw5ol3oe3cily8va9oqaehh foreign key (type_ecriture_id_type_ecriture) references type_ecriture
alter table if exists evenement add constraint FKdcdp1vtvmmshm0ej813ah57ye foreign key (participant_id_participants) references participant
alter table if exists participant add constraint FKkyvypv1fckde77nfuxgaprjgl foreign key (utilisateur_id_utilisateur) references utilisateur
alter table if exists participant_ecrituresapayer add constraint FKkhx80xwr13owtlkaddyo8ngd9 foreign key (ecrituresapayer_id_ecriture) references ecriture
alter table if exists participant_ecrituresapayer add constraint FK891vpb97o3rlwjewroh6ctrvc foreign key (participants_id_participants) references participant
alter table if exists participant_evenements_participes add constraint FKcy8ns78aornradx8kvytcjufj foreign key (evenements_participes_id_evenement) references evenement
alter table if exists participant_evenements_participes add constraint FK1j89nhw0dv4snu6qgfouymsdb foreign key (participants_id_participants) references participant
alter table if exists utilisateur add constraint FKfyfj1riin8bumbvdoj6cj4y2q foreign key (participant_id_participants) references participant
insert into participant(id_participants,surnom) values (1,'surnom 1')
insert into participant(id_participants,surnom) values (2,'surnom 2')
insert into participant(id_participants,surnom) values (3,'surnom 3')
insert into participant(id_participants,surnom) values (4,'surnom 4')
insert into participant(id_participants,surnom) values (5,'surnom 5')
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (1, 'utilisateur1@test.fr', '$2a$10$KXHexAZvD70OqNd278fQ.OcW3IJR7tVe5W0nPfjpfdA90rWH7Erp.', 'Utilisateur 1', 1)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (2, 'utilisateur2@test.fr', '$2a$10$B03pFyWtBW63h/UrhZhUHuZI3YnamYGD4elDcoQUIbGpOlTfmFFBS', 'Utilisateur 2', 2)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (3, 'utilisateur3@test.fr', '$2a$10$xavYxYd6F3VAsFrI9dx1BOqyIqf0rHgExtJbLOEAEZkp9E0FBdoKe', 'Utilisateur 3', 3)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (4, 'utilisateur4@test.fr', '$2a$10$mrMUYpc6hkns2Etv60etDerKYhc1cob94oxbWsSOFrUx7co5uiHTq', 'Utilisateur 4', 4)
insert into utilisateur (id_utilisateur, email, mot_de_passe, nom, participant_id_participants) values (5, 'utilisateur5@test.fr', '$2a$10$9owWmPGyJrp.dv761xDkzer6JnCAulIHdoBYFRrYmtDr0/jhiCJV.', 'Utilisateur 5', 5)
update participant set utilisateur_id_utilisateur = 1 where participant.id_participants = 1
update participant set utilisateur_id_utilisateur = 2 where participant.id_participants = 2
update participant set utilisateur_id_utilisateur = 3 where participant.id_participants = 3
update participant set utilisateur_id_utilisateur = 4 where participant.id_participants = 4
update participant set utilisateur_id_utilisateur = 5 where participant.id_participants = 5
insert into devise(code, nom_de_devise, symbole) values ('EUR','Euros','€')
insert into devise(code, nom_de_devise, symbole) values ('DOL','Dollars','$')
insert into devise(code, nom_de_devise, symbole) values ('LIV','Livre sterling','£')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (1,'Dépense')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (2,'Rentrée d''argent')
insert into type_ecriture(id_type_ecriture,nom_du_type) values (3,'Transfert d''argent')
insert into evenement(id_evenement,description,titre,participant_id_participants) values (1,'mon evenement','evenement 1',1)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (2,'mon evenement','evenement 1',2)
insert into evenement(id_evenement,description,titre,participant_id_participants) values (3,'mon evenement','evenement 1',3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (4,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (5,1)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (2,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,2)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (3,3)
insert into participant_evenements_participes (participants_id_participants,evenements_participes_id_evenement) values (1,3)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (1,'2020/01/01','ecriture 1',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (2,'2020/01/01','ecriture 2',100,null,'EUR',1,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (3,'2020/01/01','ecriture 3',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (4,'2020/01/02','ecriture 4',100,null,'EUR',1,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (5,'2020/01/02','ecriture 5',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (6,'2020/01/02','ecriture 6',100,null,'EUR',1,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (7,'2020/01/03','ecriture 7',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (8,'2020/01/03','ecriture 8',100,null,'EUR',1,4,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (9,'2020/01/03','ecriture 9',100,null,'EUR',1,5,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (10,'2020/01/01','ecriture 10',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (11,'2020/01/01','ecriture 11',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (12,'2020/01/01','ecriture 12',10,null,'EUR',2,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (13,'2020/01/01','ecriture 13',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (14,'2020/01/01','ecriture 14',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (15,'2020/01/01','ecriture 15',10,null,'EUR',2,2,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (16,'2020/01/01','ecriture 16',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (17,'2020/01/01','ecriture 17',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (18,'2020/01/01','ecriture 18',10,null,'EUR',2,3,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (19,'2020/01/01','ecriture 19',20,null,'EUR',3,1,1)
insert into ecriture(id_ecriture,"date",libelle,montant,photo,devise_code,evenement_id_evenement,participant_id_participants,type_ecriture_id_type_ecriture) values (20,'2020/01/01','ecriture 20',30,null,'EUR',3,3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,1)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,2)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,3)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,4)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,5)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,6)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,7)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,8)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (4,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (5,9)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,10)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,11)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,12)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,13)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,14)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,15)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,16)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,17)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (2,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,18)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,19)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (1,20)
insert into participant_ecrituresapayer (participants_id_participants,ecrituresapayer_id_ecriture) values (3,20)
