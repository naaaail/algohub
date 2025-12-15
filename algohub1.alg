<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER pgcd"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2lignes="" F2para="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" arrondiAuto="vrai" totalBoucles="5000000" nbDecimales="8" maxBoucle="500000" totalAffichages="1000" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="p EST_DU_TYPE NOMBRE" code="1#NOMBRE#p"/>
        <item algoitem="q EST_DU_TYPE NOMBRE" code="1#NOMBRE#q"/>
        <item algoitem="pgcd EST_DU_TYPE NOMBRE" code="1#NOMBRE#pgcd"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE p" code="2#p#pasliste"/>
        <item algoitem="LIRE q" code="2#q#pasliste"/>
        <item algoitem="pgcd PREND_LA_VALEUR F2(p,q)" code="5#pgcd#F2(p,q)#pasliste"/>
        <item algoitem="AFFICHER pgcd" code="3#pgcd#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
