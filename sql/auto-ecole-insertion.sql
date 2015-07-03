use auto_ecole;

delete from appartient;
delete from question;
delete from inscrit;
delete from assiste;
delete from examen;
delete from seance;
delete from serie;
delete from cd;
delete from eleve;

/*-- question(numq,intitule,reponse,diffic,theme)	
-- drop sequence numeroQuestion;
-- create sequence numeroQuestion start with 1001 increment by 1;
-- initialisation
-- select numeroQuestion.nextval from dual; */

insert into question values(null,'Le jour se lève, ce cycliste circulant en agglomération doit porter le gilet rétro-réfléchissant de sécurité: A) oui B) non','B',4,'Vehicule et conducteur');
insert into question values(null,'L''éco-conduite a des effets positifs, en terme de sécurité routière: A) oui B) non','A',1,'Vehicule et conducteur');
insert into question values(null,'L''éco-conduite a des effets positifs, en terme de confort pour le conducteur et les passagers: A) oui B) non','A',1,'Vehicule et conducteur');
insert into question values(null,'Pour limiter la consommation de carburant, je dois changer les vitesses à bas régime moteur: A) oui B) non','A',2,'Vehicule et conducteur');
insert into question values(null,'Je circule hors agglomération, j''allume: A) les feux de route B) les feux de croisement C) les feux de position seuls','B',1,'Circulation');
insert into question values(null,'La limitation de vitesse: A) commence au panneau B) commence à 400 mètres C) s''étend sur 400 mètres D) se termine à 400 mètres','B',4,'Signalisation');
insert into question values(null,'Dans les tunnels les dispositifs à diodes bleues servent à: A) éclairer le tunnel B) délimiter les distances de sécurité C) annoncer une issue de secours D) annoncer une niche de sécurité','B',4,'Signalisation');
insert into question values(null,'L''assurance responsabilité civile couvre les dégâts d''un véhicule volé: A) oui B) non','B',1,'Vehicule et conducteur');
insert into question values(null,'La rue est à sens unique: A) oui B) non','B',3,'Signalisation');
insert into question values(null,'Dans une voie pour véhicule lent, on peut circuler au maximum à: A) 40 km/h B) 50 km/h C) 60 km/h D) 70 km/h','C',4,'Circulation');
insert into question values(null,'Je suis le dernier de la file, j''allume les feux de détresse: A) oui B) non','A',1,'Circulation');
insert into question values(null,'Je me sens fatigué: A) j''accélère pour arriver plus vite B) je circule moins vite, c''est plus prudent C) je m''arrête pour me reposer','C',1,'Vehicule et conducteur');
insert into question values(null,'Ce panneau annonce un dénivelé de: A) 5 mètres tous les 10 mètres B) 5 mètres tous les 100 mètres C) 5 mètres tous les 1000 mètres','B',4,'Signalisation');
insert into question values(null,'Cette très jeune cycliste peut circuler sur la piste cyclable: A) oui B) non','A',2,'Circulation');
insert into question values(null,'Le plus grand responsable des accidents mortels est: A) le comportement du conducteur B) l''alcool C) la vitesse D) la fatigue','A',3,'Vehicule et conducteur');
insert into question values(null,'Je pars en vacances 15 jours, je peux laisser mon véhicule dans cette rue où le stationnement est gratuit: A) oui B) non','B',3,'Stationnement');
insert into question values(null,'La distance parcourue pendant le temps de réaction dépend: A) de la vitesse B) de l''état de la route','A',2,'Circulation');
insert into question values(null,'Je peux tourner à droite: A) oui B) non','A',1,'Priorités');
insert into question values(null,'Je dépasse ce cycliste: A) oui B) non','B',4,'Croiser et depasser');

select numq,diffic,theme from question;

-- cdrom(numcd,editeur)
-- drop sequence numeroCD;
-- create sequence numeroCD start with 110 increment by 10;
-- initialisation
-- select numeroCD.nextval from dual; 

insert into cd values(110,'editeurA');
insert into cd values(120,'editeurA');
insert into cd values(130,'editeurB');
insert into cd values(140,'editeurC');
insert into cd values(150,'editeurD');
insert into cd values(160,'editeurD');

select * from cd;

-- serie(nums,numcd)
-- drop sequence numeroSerie;
-- create sequence numeroSerie start with 1 increment by 1;
-- initialisation
-- select numeroSerie.nextval from dual; 

insert into serie values(1,110);
insert into serie values(1,120);
insert into serie values(1,130);
insert into serie values(1,140);
insert into serie values(1,150);
insert into serie values(1,160);
insert into serie values(2,110);
insert into serie values(2,120);
insert into serie values(2,130);
insert into serie values(2,140);
insert into serie values(2,150);
insert into serie values(2,160);
insert into serie values(3,110);
insert into serie values(3,120);
insert into serie values(3,130);
insert into serie values(3,140);
insert into serie values(3,150);
insert into serie values(3,160);
insert into serie values(4,110);
insert into serie values(4,120);
insert into serie values(4,130);
insert into serie values(4,140);
insert into serie values(4,150);
insert into serie values(4,160);

select * from serie;

-- appartient(numq,numc,nums)
insert into appartient values(1001,120,1,2);
insert into appartient values(1002,120,1,2);
insert into appartient values(1003,120,1,3);
insert into appartient values(1006,120,1,5);
insert into appartient values(1009,120,1,6);
insert into appartient values(1010,120,1,8);
insert into appartient values(1006,120,4,1);
insert into appartient values(1001,120,4,2);
insert into appartient values(1008,120,4,3);
insert into appartient values(1007,120,4,4);
insert into appartient values(1018,120,4,5);
insert into appartient values(1011,120,4,6);
insert into appartient values(1001,130,3,1);
insert into appartient values(1011,130,3,2);
insert into appartient values(1012,130,3,3);
insert into appartient values(1013,130,3,5);
insert into appartient values(1014,130,3,6);
insert into appartient values(1001,140,2,6);
insert into appartient values(1008,140,2,8);
insert into appartient values(1015,140,2,7);
insert into appartient values(1007,140,3,7);
insert into appartient values(1004,150,1,10);
insert into appartient values(1005,150,1,11);
insert into appartient values(1018,150,1,20);


-- seance(dates,heures,nums,numcd)
insert into seance values(str_to_date('05-06-2013','%d-%m-%Y'),10,1,110);
insert into seance values(str_to_date('05-06-2013','%d-%m-%Y'),11,4,160);
insert into seance values(str_to_date('05-06-2013','%d-%m-%Y'),13,3,150);
insert into seance values(str_to_date('05-06-2013','%d-%m-%Y'),14,2,140);
insert into seance values(str_to_date('05-06-2013','%d-%m-%Y'),15,4,110);
insert into seance values(str_to_date('06-06-2013','%d-%m-%Y'),10,1,160);
insert into seance values(str_to_date('06-06-2013','%d-%m-%Y'),11,4,150);
insert into seance values(str_to_date('06-06-2013','%d-%m-%Y'),13,3,160);
insert into seance values(str_to_date('06-06-2013','%d-%m-%Y'),14,2,140);
insert into seance values(str_to_date('06-06-2013','%d-%m-%Y'),15,4,120);
insert into seance values(str_to_date('07-06-2013','%d-%m-%Y'),10,1,120);
insert into seance values(str_to_date('07-06-2013','%d-%m-%Y'),11,4,150);
insert into seance values(str_to_date('07-06-2013','%d-%m-%Y'),13,2,150);
insert into seance values(str_to_date('07-06-2013','%d-%m-%Y'),14,2,140);
insert into seance values(str_to_date('07-06-2013','%d-%m-%Y'),15,4,120);
insert into seance values(str_to_date('10-06-2013','%d-%m-%Y'),10,2,120);
insert into seance values(str_to_date('10-06-2013','%d-%m-%Y'),11,1,150);
insert into seance values(str_to_date('10-06-2013','%d-%m-%Y'),13,2,160);
insert into seance values(str_to_date('10-06-2013','%d-%m-%Y'),14,4,140);
insert into seance values(str_to_date('10-06-2013','%d-%m-%Y'),15,3,120);

-- examen(datee,heuree)
insert into examen values(str_to_date('08-06-2013','%d-%m-%Y'),10,'code',null);
insert into examen values(str_to_date('11-06-2013','%d-%m-%Y'),14,'conduite',null);

-- eleve(nume,nom,prenom,adresse,datenaiss)
-- drop sequence numeroEleve;
-- create sequence numeroEleve start with 13001 increment by 1;
-- initialisation
-- select numeroEleve.nextval from dual; 

insert into eleve values(null,'Lagaffe','Gaston','adresse',str_to_date('27-02-1957','%d-%m-%Y'));
insert into eleve values(null,'Labévue','Bertrand','adresse',str_to_date('10-06-1957','%d-%m-%Y'));
insert into eleve values(null,'Molaire','Mélanie','adresse',str_to_date('10-06-1957','%d-%m-%Y'));
insert into eleve values(null,'de Mesmaeker','M.','adresse',str_to_date('10-06-1957','%d-%m-%Y'));
insert into eleve values(null,'Longtarin','policier','adresse',str_to_date('10-06-1957','%d-%m-%Y'));
insert into eleve values(null,'Fantasio',NULL,'adresse',str_to_date('10-06-1938','%d-%m-%Y'));
insert into eleve values(null,'de Champignac','Ladislas','Champignac',str_to_date('10-06-1938','%d-%m-%Y'));
insert into eleve values(null,'Labarbe','Gustave','Champignac',str_to_date('10-06-1938','%d-%m-%Y'));
insert into eleve values(null,'Dupilon','Célestin','Champignac',str_to_date('10-06-1938','%d-%m-%Y'));

select nume,nom,prenom from eleve;

-- assiste(nume,datea,heurea,nbfautes)
insert into assiste values(13001,str_to_date('05-06-2013','%d-%m-%Y'),10,1);
insert into assiste values(13001,str_to_date('06-06-2013','%d-%m-%Y'),10,0);
insert into assiste values(13001,str_to_date('07-06-2013','%d-%m-%Y'),10,3);
insert into assiste values(13001,str_to_date('07-06-2013','%d-%m-%Y'),11,2);
insert into assiste values(13001,str_to_date('07-06-2013','%d-%m-%Y'),14,3);
insert into assiste values(13002,str_to_date('07-06-2013','%d-%m-%Y'),10,6);
insert into assiste values(13002,str_to_date('07-06-2013','%d-%m-%Y'),11,2);
insert into assiste values(13002,str_to_date('07-06-2013','%d-%m-%Y'),14,5);
insert into assiste values(13002,str_to_date('10-06-2013','%d-%m-%Y'),10,1);
insert into assiste values(13003,str_to_date('07-06-2013','%d-%m-%Y'),10,6);
insert into assiste values(13003,str_to_date('10-06-2013','%d-%m-%Y'),11,2);
insert into assiste values(13003,str_to_date('10-06-2013','%d-%m-%Y'),14,5);
insert into assiste values(13004,str_to_date('07-06-2013','%d-%m-%Y'),10,2);
insert into assiste values(13004,str_to_date('10-06-2013','%d-%m-%Y'),11,1);
insert into assiste values(13004,str_to_date('10-06-2013','%d-%m-%Y'),14,3);
insert into assiste values(13005,str_to_date('06-06-2013','%d-%m-%Y'),10,3);
insert into assiste values(13005,str_to_date('06-06-2013','%d-%m-%Y'),11,2);
insert into assiste values(13005,str_to_date('07-06-2013','%d-%m-%Y'),10,1);
insert into assiste values(13005,str_to_date('07-06-2013','%d-%m-%Y'),11,3);
insert into assiste values(13006,str_to_date('05-06-2013','%d-%m-%Y'),10,2);
insert into assiste values(13006,str_to_date('06-06-2013','%d-%m-%Y'),11,1);
insert into assiste values(13006,str_to_date('06-06-2013','%d-%m-%Y'),14,3);
insert into assiste values(13006,str_to_date('07-06-2013','%d-%m-%Y'),14,0);
insert into assiste values(13006,str_to_date('10-06-2013','%d-%m-%Y'),14,2);
insert into assiste values(13007,str_to_date('05-06-2013','%d-%m-%Y'),14,3);
insert into assiste values(13007,str_to_date('06-06-2013','%d-%m-%Y'),11,2);
insert into assiste values(13007,str_to_date('06-06-2013','%d-%m-%Y'),15,3);
insert into assiste values(13007,str_to_date('07-06-2013','%d-%m-%Y'),14,0);
insert into assiste values(13008,str_to_date('05-06-2013','%d-%m-%Y'),10,1);
insert into assiste values(13008,str_to_date('06-06-2013','%d-%m-%Y'),11,3);
insert into assiste values(13008,str_to_date('06-06-2013','%d-%m-%Y'),14,2);
insert into assiste values(13008,str_to_date('07-06-2013','%d-%m-%Y'),14,1);
insert into assiste values(13008,str_to_date('10-06-2013','%d-%m-%Y'),14,6);

select * from assiste;

-- inscrit(nume,datee,heuree,nbfautes)
insert into inscrit values(13001,str_to_date('08-06-2013','%d-%m-%Y'),10,0);
insert into inscrit values(13005,str_to_date('08-06-2013','%d-%m-%Y'),10,6);
insert into inscrit values(13006,str_to_date('08-06-2013','%d-%m-%Y'),10,7);
insert into inscrit values(13008,str_to_date('08-06-2013','%d-%m-%Y'),10,6);
insert into inscrit values(13007,str_to_date('11-06-2013','%d-%m-%Y'),14,NULL);

select * from inscrit;


-- moniteur(numm, nom, prenom)

insert into moniteur values(1,'Prost','Alain');
insert into moniteur values(2,'Vaillant','Michel');
insert into moniteur values(3,'Peterhansel','Stéphane');

select * from moniteur;

-- vehicule(numv, immatriculation,modele)

insert into vehicule values(1,'911NPB75','Porche 911');
insert into vehicule values(2,'JBZ6007','Aston Martin DB5');
insert into vehicule values(3,'ZZ784AA','Lotus Seven');
insert into vehicule values(4,'AB093CD','Renault Clio');

select * from vehicule;

-- lecon(numl, date_cours, heure_debut, duree, nume, numm, numv)

insert into lecon values(1,str_to_date('10-06-2013','%d-%m-%Y'),str_to_date('09:00','%H:%i'),2,13001,1,1);
insert into lecon values(2,str_to_date('12-06-2013','%d-%m-%Y'),str_to_date('14:30','%H:%i'),2,13001,1,1);
insert into lecon values(3,str_to_date('08-06-2013','%d-%m-%Y'),str_to_date('9:30','%H:%i'),3,13005,3,3);
insert into lecon values(4,str_to_date('05-06-2013','%d-%m-%Y'),str_to_date('10:00','%H:%i'),2,13006,2,2);
insert into lecon values(5,str_to_date('08-06-2013','%d-%m-%Y'),str_to_date('15:00','%H:%i'),1,13006,2,2);

select * from lecon;
