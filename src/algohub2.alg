<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="TRACER_SEGMENT (1,moy-2*ecart_type)->(100,moy-2*ecart_type)" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2para="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" arrondiAuto="vrai" totalBoucles="5000000" epaisseurLigne="2" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="simulation EST_DU_TYPE NOMBRE" code="1#NOMBRE#simulation"/>
        <item algoitem="lancer EST_DU_TYPE NOMBRE" code="1#NOMBRE#lancer"/>
        <item algoitem="nb_de_piles EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb_de_piles"/>
        <item algoitem="frequence EST_DU_TYPE LISTE" code="1#LISTE#frequence"/>
        <item algoitem="moy EST_DU_TYPE NOMBRE" code="1#NOMBRE#moy"/>
        <item algoitem="ecart_type EST_DU_TYPE NOMBRE" code="1#NOMBRE#ecart_type"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="POUR simulation ALLANT_DE 1 A 100" code="12#simulation#1#100">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="nb_de_piles PREND_LA_VALEUR 0" code="5#nb_de_piles#0#pasliste"/>
            <item algoitem="POUR lancer ALLANT_DE 1 A 1000" code="12#lancer#1#1000">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="SI (random()&lt;0.5) ALORS" code="6#random()&lt;0.5">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="nb_de_piles PREND_LA_VALEUR nb_de_piles+1" code="5#nb_de_piles#nb_de_piles+1#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="frequence[simulation] PREND_LA_VALEUR nb_de_piles/1000" code="5#frequence#nb_de_piles/1000#simulation"/>
            <item algoitem="TRACER_POINT (simulation,frequence[simulation])" code="50#simulation#frequence[simulation]#Rouge"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="moy PREND_LA_VALEUR ALGOBOX_MOYENNE(frequence,1,100)" code="5#moy#ALGOBOX_MOYENNE(frequence,1,100)#pasliste"/>
        <item algoitem="TRACER_SEGMENT (1,moy)->(100,moy)" code="51#1#moy#100#moy#Rouge"/>
        <item algoitem="ecart_type PREND_LA_VALEUR ALGOBOX_ECART_TYPE(frequence,1,100)" code="5#ecart_type#ALGOBOX_ECART_TYPE(frequence,1,100)#pasliste"/>
        <item algoitem="TRACER_SEGMENT (1,moy+2*ecart_type)->(100,moy+2*ecart_type)" code="51#1#moy+2*ecart_type#100#moy+2*ecart_type#Rouge"/>
        <item algoitem="TRACER_SEGMENT (1,moy-2*ecart_type)->(100,moy-2*ecart_type)" code="51#1#moy-2*ecart_type#100#moy-2*ecart_type#Rouge"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
