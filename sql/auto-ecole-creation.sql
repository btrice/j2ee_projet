use auto_ecole;
-- create database auto_ecole;
-- grant all on auto_ecole.* to 'thierry'@localhost IDENTIFIED BY 'hamon';

drop table if exists lecon;
drop table if exists moniteur;
drop table if exists vehicule;
drop table if exists appartient;
drop table if exists question;
drop table if exists inscrit;
drop table if exists assiste;
drop table if exists examen;
drop table if exists seance;
drop table if exists serie;
drop table if exists cd;
drop table if exists eleve;

create table moniteur(
       numm integer(4),
       nom varchar(20), 
       prenom varchar(20), 
       CONSTRAINT PK_MONITEUR  primary key (numm)
); 

create table vehicule(
       numv integer(4),
       immatriculation varchar(9),
       modele varchar(30),
       CONSTRAINT PK_VEHICULE  PRIMARY KEY (numv)
);

create table eleve(
       nume integer (4) AUTO_INCREMENT, 
       nom varchar(20) , 
       prenom varchar(20), 
       adresse varchar(40), 
       datenaiss date,
       CONSTRAINT PK_ELEVE  PRIMARY KEY (nume)
); 

ALTER TABLE eleve AUTO_INCREMENT = 13001;

create table lecon(
       numl integer(4),
       date_cours date,
       heure_debut time,
       duree integer (4),
       nume integer (4),
       numm integer (4),
       numv integer (4),
       CONSTRAINT PK_LECON  primary key (numl),
       CONSTRAINT FK_LECON_NUME_ELEVE     FOREIGN KEY(nume)
                            REFERENCES eleve (nume),
       CONSTRAINT FK_LECON_NUMM_MONITEUR     FOREIGN KEY(numm)
                            REFERENCES moniteur (numm),
       CONSTRAINT FK_LECON_NUMV_VEHICULE     FOREIGN KEY(numv)
                            REFERENCES vehicule (numv)
);


create table cd(	       
       numcd integer (4) auto_increment, 
       editeur varchar(20),
       CONSTRAINT PK_CD  PRIMARY KEY (numcd)
); 

ALTER TABLE cd AUTO_INCREMENT = 110;

create table serie(
	nums integer (4) auto_increment, 
	numcd integer (4), 
  	CONSTRAINT PK_SERIE  PRIMARY KEY (nums,numcd),
        CONSTRAINT FK_SERIE_NUMCD_CD     FOREIGN KEY(numcd)
                            REFERENCES cd (numcd)
);
-- ALTER TABLE serie AUTO_INCREMENT = 0;

create table seance( 
	dates date,
	heures integer (4),
	nums integer (4), 
	numcd integer (4),	
        CONSTRAINT PK_SEANCE  PRIMARY KEY (dates, heures),
	CONSTRAINT BW_SEANCE_HEURES    CHECK(heures between 9 and 18), 
        CONSTRAINT FK_SEANCE_NUMS_NUMCD_SERIE     FOREIGN KEY(nums,numcd)
                            REFERENCES serie (nums,numcd)
);

create table examen(
	datee  date,
	heuree  integer (4),
	typee varchar(25),
	resultate varchar(25),
        CONSTRAINT PK_EXAMEN  PRIMARY KEY (datee, heuree),
	CONSTRAINT BW_HEUREE_EXAMEN    CHECK(heuree between 9 and 18),
	CONSTRAINT TYPEE_EXAMEN CHECK(typee in ('code', 'conduite')),
	CONSTRAINT RESULTATE_EXAMEN CHECK(resultate in ('echec', 'reussite', null))
);

create table assiste(
	nume integer (4),
	datea date,
	heurea integer (4),
	nbfautes integer (4),
        CONSTRAINT PK_ASSISTE  PRIMARY KEY (nume,datea, heurea),
        CONSTRAINT FK_ASSISTE_NUME_NUM_ELEVE     FOREIGN KEY(nume)
                            REFERENCES eleve (nume),
        CONSTRAINT FK_ASSISTE_DATEA_HEUREA_SEANCE     FOREIGN KEY(datea,heurea)
                            REFERENCES seance (dates,heures)
);

create table inscrit(
	nume integer (4), 
	datee  date,
	heuree  integer (4),
	nbfautes integer (4),
        CONSTRAINT PK_INSCRIT  PRIMARY KEY (nume,datee, heuree),
        CONSTRAINT FK_INSCRIT_DATEE_HEUREE_SEANCE     FOREIGN KEY(datee,heuree)
                            REFERENCES examen (datee,heuree),
        CONSTRAINT FK_INSCRIT_NUME_NUM_ELEVE     FOREIGN KEY(nume)
                            REFERENCES eleve (nume)
);

create table question(
	numq integer (4) auto_increment,
	intitule varchar(200) unique,
	reponse varchar(4),
	diffic integer (4),
	theme varchar(25),
        CONSTRAINT PK_QUESTION  PRIMARY KEY (numq),
	CONSTRAINT DIFFIC_QUESTION    CHECK(diffic between 1 and 4)
);
ALTER TABLE question AUTO_INCREMENT = 1001;


create table appartient(
	numq integer (4), 
	numcd integer (4), 
	nums integer (4), 
	rang integer (4),
        CONSTRAINT PK_QUESTION  PRIMARY KEY (numq,numcd,nums),
	CONSTRAINT RANG_APPARTIENT    CHECK(rang between 1 and 40),
        CONSTRAINT FK_QUESTION_NUMQ_QUESTION     FOREIGN KEY(numq)
                            REFERENCES question (numq),
        CONSTRAINT FK_QUESTION_NUMS_NUMCD_SERIE     FOREIGN KEY(nums,numcd)
                            REFERENCES serie (nums,numcd)
);

