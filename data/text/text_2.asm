_AIBattleWithdrawText::
	text_ram wTrainerName
	text_start
	line "rappelle..."
	cont "@"
	text_ram wEnemyMonNick
	text "!"
	prompt

_AIBattleUseItemText::
	text_ram wTrainerName
	text " uti-"
	line "lise @"
	text_ram wNameBuffer
	text_start
	cont "sur @"
	text_ram wEnemyMonNick
	text "!"
	prompt

_BoxFullDebugText:: ; unreferenced
	text "BOITE pleine!"
	done

_BoxWillBeClearedText:: ; unreferenced
	text "La BOITE sera"
	line "vidée."
	done

_TradeWentToText::
	text_ram wStringBuffer
	text " va"
	line "à @"
	text_ram wLinkEnemyTrainerName
	text "."
	done

_TradeForText::
	text "Contre @"
	text_ram wStringBuffer
	text_start
	line "de <PLAYER>,"
	done

_TradeSendsText::
	text_ram wLinkEnemyTrainerName
	text_start
	line "donne @"
	text_ram wNameBuffer
	text "."
	done

_TradeWavesFarewellText::
	text_ram wLinkEnemyTrainerName
	text ":"
	line "Au revoir,"
	done

_TradeTransferredText::
	text_ram wNameBuffer
	text "!"
	line "(sniff sniff)"
	done

_TradeTakeCareText::
	text "Prends soin de"
	line "@"
	text_ram wNameBuffer
	text "."
	done

_TradeWillTradeText::
	text_ram wLinkEnemyTrainerName
	text_start
	line "offre @"
	text_ram wNameBuffer
	text_start
	done

_TradeforText::
	text "Contre @"
	text_ram wStringBuffer
	text_start
	line "de <PLAYER>."
	done

_PlaySlotMachineText::
	text "Une machine à"
	line "sous! On joue?"
	done

_OutOfCoinsSlotMachineText::
	text "Zut de flûte!"
	line "Pas de jetons!"
	done

_BetHowManySlotMachineText::
	text "Combien de"
	line "jetons?"
	done

_StartSlotMachineText::
	text "C'est parti!"
	done

_NotEnoughCoinsSlotMachineText::
	text "Pas assez de"
	line "jetons!"
	prompt

_OneMoreGoSlotMachineText::
	text "Encore une"
	line "fois?"
	done

_LinedUpText::
	text " en ligne!"
	line "@"
	text_ram wStringBuffer
	text " jetons!"
	done

_NotThisTimeText::
	text "Oups. Perdu!"
	prompt

_YeahText::
	text "Ouaiiiis!@"
	text_end

_DexSeenOwnedText::
	text "#DEX   Vus:@"
	text_decimal wDexRatingNumMonsSeen, 1, 3
	text " "
	line "         Pris:@"
	text_decimal wDexRatingNumMonsOwned, 1, 3
	text " "
	done

_DexRatingText::
	text "Eval. #DEX<COLON>"
	done

_GymStatueText1::
	text "ARENE #MON"
	line "de @"
	text_ram wGymCityName
	text_start
	cont "CHAMPION:"
	cont "@"
	text_ram wGymLeaderName
	text_start

	para "VAINQUEURS:"
	line "<RIVAL>"
	done

_GymStatueText2::
	text "ARENE #MON"
	line "de @"
	text_ram wGymCityName
	text_start
	cont "CHAMPION:"
	cont "@"
	text_ram wGymLeaderName
	text_start

	para "VAINQUEURS:"
	line "<RIVAL>"
	cont "<PLAYER>"
	done

_ViridianCityPokecenterGuyText::
	text "Les CENTRES"
	line "#MON soignent"
	cont "tous les #MON"
	cont "blessés ou K.O.!"
	done

_PewterCityPokecenterGuyText::
	text "(Baille)!"

	para "Lorsque RONDOUDOU"
	line "chante, tous les"
	cont "#MON piquent"
	cont "du nez..."

	para "...Moi aussi..."
	line "(Pionce)..."
	done

_CeruleanPokecenterGuyText::
	text "LEO a une sacrée"
	line "collection de"
	cont "#MON!"

	para "Et des rares, en"
	line "plus..."
	done

_LavenderPokecenterGuyText::
	text "Les OSSELAIT"
	line "portent un crâne,"
	cont "non?"

	para "Certains seraient"
	line "prêts à en payer"
	cont "le prix fort!"
	done

_MtMoonPokecenterBenchGuyText::
	text "Tu devrais ranger"
	line "tes #MON en"
	cont "trop via un PC!"
	done

_RockTunnelPokecenterGuyText::
	text "On m'a dit qu'il"
	line "y a des SPECTRES"
	cont "à LAVANVILLE!"
	done

_UnusedBenchGuyText1::
	text "Moi aussi j'veux"
	line "capturer un"
	cont "#MON."
	done

_UnusedBenchGuyText2::
	text "La fatigue..."
	cont "Doucement..."
	cont "Me gagne..."
	done

_UnusedBenchGuyText3::
	text "Le patron de la"
	line "SYLPHE se cache"
	cont "dans le PARC"
	cont "SAFARI."
	done

_VermilionPokecenterGuyText::
	text "C'est vrai qu'un"
	line "#MON de haut"
	cont "niveau est très"
	cont "puissant..."

	para "Mais tout #MON"
	line "est vulnérable"
	cont "face à un certain"
	cont "élément."

	para "Il n'y a donc pas"
	line "de #MON de"
	cont "la mort qui tue."
	done

_CeladonCityPokecenterGuyText::
	text "Si j'avais une"
	line "BICYCLETTE,"
	cont "j'irais sur la"
	cont "PISTE CYCLABLE!"
	done

_FuchsiaCityPokecenterGuyText::
	text "LE PARC SAFARI"
	line "regorge de"
	cont "#MON."

	para "On y trouve aussi"
	line "de très rares!"
	done

_CinnabarPokecenterGuyText::
	text "Les #MON"
	line "peuvent apprendre"
	cont "des techniques"
	cont "même après avoir"
	cont "annulé une"
	cont "évolution."

	para "On peut lancer"
	line "une évolution"
	cont "après avoir"
	cont "appris une"
	cont "technique!!!"
	done

_SaffronCityPokecenterGuyText1::
	text "Pourquoi le"
	line "CONSEIL des 4 ne"
	cont "vient pas casser"
	cont "les dents de la"
	cont "TEAM ROCKET?"
	done

_SaffronCityPokecenterGuyText2::
	text "La TEAM ROCKET"
	line "est partie! Alors"
	cont "c'est la fête!"
	cont "Youpi!"
	done

_CeladonCityHotelText::
	text "Je suis en"
	line "vacances avec ma"
	cont "soeur... "
	cont "Ca craint à mort!"
	done

_BookcaseText::
	text "Des bouquins sur"
	line "les #MON!"
	done

_NewBicycleText::
	text "Une BICYCLETTE"
	line "toute neuve! Top!"
	done

_PushStartText::
	text "START et...paf!"
	line "V'là le MENU!"
	done

_SaveOptionText::
	text "L'option SAUVER"
	line "est sur l'écran"
	cont "du MENU."
	done

_StrengthsAndWeaknessesText::
	text "Tous les #MON"
	line "ont des points"
	cont "faibles! Ils sont"
	cont "également tous"
	cont "puissants face"
	cont "à un certain"
	cont "élément."
	done

_TimesUpText::
	text "Haut-parleur: Hé!"

	para "C'est fini!"
	prompt

_GameOverText::
	text "Haut-parleur:"
	line "Le SAFARI est"
	cont "terminé!"
	done

_CinnabarGymQuizDummyIntroText::
	text "Quiz #MON!"

	para "Une bonne réponse"
	line "ouvrira la porte!"

	para "Une erreur et"
	line "c'est la guerre!"

	para "Pour préserver"
	line "une équipe avant"
	cont "d'affronter le"
	cont "CHAMPION..."

	para "Mieux vaut éviter"
	line "les erreurs!"
	prompt

_CinnabarGymQuizIntroText::
	text "Quiz #MON!"

	para "Une bonne réponse"
	line "ouvrira la porte!"

	para "Une erreur et"
	line "c'est la guerre!"

	para "Pour préserver"
	line "une équipe avant"
	cont "d'affronter le"
	cont "CHAMPION..."

	para "Mieux vaut éviter"
	line "les erreurs!"

	para ""
	done

_CinnabarGymQuizShortIntroText::
	text "Quiz #MON!"
	line "A vous de jouer!"

	para ""
	done

_CinnabarQuizQuestionsText1::
	text "CHENIPAN évolue"
	line "en PAPILUSION?"
	done

_CinnabarQuizQuestionsText2::
	text "Il existe 9"
	line "BADGES #MON?"
	done

_CinnabarQuizQuestionsText3::
	text "PTITARD évolue"
	line "3 fois?"
	done

_CinnabarQuizQuestionsText4::
	text "La foudre est"
	line "efficace contre"
	cont "les #MON du"
	cont "sol?"
	done

_CinnabarQuizQuestionsText5::
	text "Les #MON du"
	line "même type et du"
	cont "même niveau sont"
	cont "différents?"
	done

_CinnabarQuizQuestionsText6::
	text "CT28 contient"
	line "FOSSE?"
	done

_CinnabarGymQuizCorrectText::
	text "Bonne réponse!"

	para "En avant!@"
	text_end

_CinnabarGymQuizIncorrectText::
	text "N'importe quoi!"
	prompt

_MagazinesText::
	text "Des magazines"
	line "#MON!"

	para "Des cahiers"
	line "#MON!"

	para "Des dessins"
	line "#MON!"
	done

_BillsHouseMonitorText::
	text "Un TELEPORTEUR"
	line "sur le moniteur!"
	done

_BillsHouseInitiatedText::
	text "<PLAYER> enclenche"
	line "le TELEPORTEUR!@"
	text_end

_BillsHousePokemonListText1::
	text "La liste des"
	line "#MON favoris"
	cont "de LEO!"
	prompt

_BillsHousePokemonListText2::
	text "Quel #MON"
	line "voulez-vous voir?"
	done

_OakLabEmailText::
	text "Il y a un e-mail!"

	para "..."

	para "Avis à tous les"
	line "dresseurs de"
	cont "#MON!"

	para "Le CONSEIL des 4"
	line "est prêt à punir"
	cont "tout concurrent!"

	para "Présentez vos"
	line "meilleurs #MON"
	cont "et découvrez"
	cont "votre niveau"
	cont "en tant que"
	cont "dresseur!"

	para "LIGUE #MON,"
	line "PLATEAU INDIGO"

	para "PS: PROF. CHEN,"
	line "votre visite est"
	cont "attendue..."
	done

_GameCornerCoinCaseText::
	text "Vous n'avez pas"
	line "de BOITE JETON!"
	done

_GameCornerNoCoinsText::
	text "Vous n'avez pas"
	line "de jetons!"
	done

_GameCornerOutOfOrderText::
	text "EN PANNE"
	line "Machine cassée."
	done

_GameCornerOutToLunchText::
	text "PARTI MANGER"
	line "Machine réservée."
	done

_GameCornerSomeonesKeysText::
	text "Des clés!"
	line "Bah? C'est à qui?"
	done

_JustAMomentText::
	text "Patientez SVP."
	done

TMNotebookText::
	text "C'est un rapport"
	line "sur les CT."

	para "..."

	para "Il existe en tout"
	line "50 CT (Capsule"
	cont "Technique)."

	para "5 CS (Capsule"
	line "Secrète) sont à"
	cont "utiliser à"
	cont "l'infini."

	para "SYLPHE SARL@"
	text_end

_TurnPageText::
	text "Tourner la page?"
	done

_ViridianSchoolNotebookText5::
	text "FILLE: Hé! Ne lis"
	line "pas mon journal!@"
	text_end

_ViridianSchoolNotebookText1::
	text "Vous examinez le"
	line "journal!"

	para "Première page..."

	para "Les # BALLs"
	line "peuvent capturer"
	cont "les #MON."

	para "Jusqu'à 6"
	line "#MON sont"
	cont "transportables."

	para "Les personnes"
	line "s'occupant des"
	cont "#MON sont"
	cont "des dresseurs de"
	cont "#MON."
	prompt

_ViridianSchoolNotebookText2::
	text "Deuxième page..."

	para "Un #MON"
	line "sauvage et en"
	cont "pleine forme est"
	cont "difficile à"
	cont "capturer, alors"
	cont "affaiblissez-le!"

	para "Le poison, la"
	line "brûlure et les"
	cont "autres types de"
	cont "dégâts sont aussi"
	cont "efficaces!"
	prompt

_ViridianSchoolNotebookText3::
	text "Troisième page..."

	para "Le but de chaque"
	line "dresseur est"
	cont "d'affronter les"
	cont "autres dresseurs"
	cont "dans des combats"
	cont "de #MON."

	para "Les combats se"
	line "tiennent en"
	cont "permanence dans"
	cont "les ARENES"
	cont "#MON."
	prompt

_ViridianSchoolNotebookText4::
	text "Quatrième page..."

	para "Le rêve de chaque"
	line "dresseur est de"
	cont "vaincre les 8"
	cont "CHAMPIONS des"
	cont "différentes"
	cont "ARENES #MON."

	para "Ces victoires"
	line "donnent le droit"
	cont "d'affronter..."

	para "Le CONSEIL des 4"
	line "de la LIGUE"
	cont "#MON!"
	prompt

_EnemiesOnEverySideText::
	text "La victoire..."
	line "C'est bien!"
	done

_WhatGoesAroundComesAroundText::
	text "La défaite..."
	line "C'est mal!"
	done

_FightingDojoText::
	text "DOJO"
	done

_IndigoPlateauHQText::
	text "PLATEAU INDIGO"
	line "Quartier général"
	cont "de la LIGUE"
	cont "#MON"
	done

_RedBedroomSNESText::
	text "<PLAYER> joue à la"
	line "Super Nintendo!"
	cont "...Bon!"
	cont "On y va, non?"
	done

_Route15UpstairsBinocularsText::
	text "Vous regardez"
	line "dans les"
	cont "jumelles..."

	para "Un grand et bel"
	line "oiseau vole vers"
	cont "la mer."
	done

_AerodactylFossilText::
	text "Le fossile du"
	line "PTERA est un"
	cont "#MON rare"
	cont "et ancien."
	done

_KabutopsFossilText::
	text "Le fossile du"
	line "KABUTOPS est un"
	cont "#MON rare"
	cont "et ancien."
	done

_FanClubPicture1Text::
	text "Mon joli GALOPA."
	done

_FanClubPicture2Text::
	text "RAPASDEPIC,"
	line "mon amour..."
	done

_LinkCableHelpText1::
	text "ASTUCE"

	para "Le Câble Link"
	prompt
