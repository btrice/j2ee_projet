================
1# j2ee_projet
================
L’objectif de ce devoir est de mettre en place une application Web de gestion d’une auto-école
répondant aux mêmes besoins que le devoir INFO2. Vous devez reprendre le travail effectué en 2ème
année pour le devoir de programmation Web. (cf. sujet du devoir INFO2 ProgWeb ci-après pour rappel)
Vous devez utiliser les JSP et les technologies J2EE associées (le code PHP est interdit). Utilisez
également les différentes technologies relatives au Web vues en cours (XML, JavaScript, AJAX, etc.).
Les modifications par un client quelconque devront être répercutées à intervalle régulier sur
l'ensemble des clients, sans nécessité de rechargement de la page.
Vous ferez attention à protéger l’application Web de failles XSS et injections SQL (utilisez des outils
de l’OWASP).

=====================================
2# Description de la base de données
=====================================
La base contient les informations sur
• les élèves (table eleve) 
• les moniteurs (table moniteur) 
• les v´ehicules (table vehicule) 
• les le¸cons de conduite (table lecon) qui associent un élèves, un moniteur, et un véhicule ;
• le code (tables seance et assiste) et les résultats des élèves aux séances de code
• les inscriptions et les r´esultats des élèves aux examens de code et de conduite (tables examen et inscrit)
• le matériel des séances de code (tables serie, cd, appartient et question).

==============================
3# Fonctionnalités demandées
==============================
L’interface Web développée doit permettre de visualiser et modifier les données de cette base. 
La vue des données doit être organisée suivant différentes fiches :
#Fiche Véhicule :
– Visualisation des informations relatives au véhicule
– Edition (ajout, modification, suppression) d’un véhicule.
#Fiche Moniteur :
– Visualisation des informations relatives `a un moniteur ;
– Visualisation des élèves suivis par le moniteur ;
– Edition (ajout, modification, suppression) d’un moniteur (et des
informations associées, y compris la liste des élèves suivis).
#Fiche Elève :
– Visualisation des informations relatives à un élève ;
– Visualisation des résultats de l’élève au code, et aux examens de
code et de conduite ;
– Visualisation des informations relatives aux le¸cons de conduite
d’un élève (détails des le¸cons, moniteur de l’élève et véhicule sur
lequel l’élève apprend à conduire) ;
– Edition (ajout, modification, suppression) d’un élève(et des informations
associées, y compris son moniteur et le véhicule).
#Fiche Séance de code :
– Visualisation des informations associées à chaque séance et de la
liste des séries présentées ;
– Edition (ajout, modification, suppression) d’une séance de code
(et des informations associées).
#Fiche Matériel pour le code :
– Visualisation des séries, des CD et des questions de chaque série ;
– Facultatif : Edition (ajout, modification, suppression) d’une série,
d’un CD et des questions.

Contribuer
==========

Les contributeurs sont évidemment les bienvenues. N'hésitez pas à "forker" le
projet si vous avez plusieurs modifications ou fonctionnalités à
soumettre. Vous pouvez toujours faire un patch, 
que je me ferai le plaisir de corriger s'il est effectivement valable.

Merci d'avance aux contributeurs. :-)


Contact
=======

*  **Email :**  msaidara@gmail.com
