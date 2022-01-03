drop database todolist;
create database todolist;
create table utilisateur (
id_utilisateur int primary key not null auto_increment,
name_utilisateur varchar(20) not null, 
mail_utilisateur varchar(50) not null,
tel_utilisateur varchar(20) not null,
id_mdp_utilisateur int not null
);
create table mdp (
id_mdp_utilisateur int primary key not null auto_increment,
mdp_utilisateur varchar(50) not null
);
create table projet (
id_projet int primary key not null auto_increment,
nom_projet varchar(50) not null,
createur_projet varchar(50) not null,
date_creation_projet date not null,
date_echeance_projet date,
date_cloturation_projet date
);
create table categorie (
id_categorie int primary key not null auto_increment,
nom_categorie varchar(50) not null,
createur_categorie varchar(50) not null,
date_creation_categorie date not null,
date_echeance_categorie date,
date_cloturation_projet date
);
create table tache (
id_tache int primary key not null auto_increment,
nom_tache varchar(50) not null,
createur_tache varchar(50) not null,
date_creation_tache date not null,
date_echeance_tache date,
date_cloturation_tache date,
validation_tache tinyint not null,
utilisateur_ayant_termine_tache varchar(50)
);
create table collaborer (
id_utilisateur int,
id_utilisateur_1 int
);
create table creer (
id_utilisateur int,
id_projet int
);
create table contenir (
id_projet int,
id_categorie int
);
create table posseder (
id_categorie int,
id_tache int
);

alter table `utilisateur`
add constraint foreign key (id_mdp_utilisateur) references mdp(id_mdp_utilisateur);

alter table `collaborer`
add constraint foreign key (id_utilisateur) references utilisateur(id_utilisateur);

alter table `collaborer`
add constraint foreign key (id_utisateur_1) references utilisateur(id_utilisateur_1);

alter table `creer`
add constraint foreign key (id_utilisateur) references utilisateur(id_utilisateur);

alter table `creer`
add constraint foreign key (id_projet) references projet(id_projet);

alter table `contenir`
add constraint foreign key (id_projet) references projet(id_projet);

alter table `contenir`
add constraint foreign key (id_categorie) references categorie(id_categorie);

alter table `posseder`
add constraint foreign key (id_categorie) references categorie(id_categorie);

alter table `posseder`
add constraint foreign key (id_tache) references tache(id_tache);