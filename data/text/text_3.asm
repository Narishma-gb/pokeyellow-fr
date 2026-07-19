_EnemyAppearedText::
	text "Un @"
	text_ram wEnemyMonNick
	text_start
	line "apparaît!"
	prompt

_TrainerWantsToFightText::
	text_ram wTrainerName
	text " veut"
	line "se battre!"
	prompt

_UnveiledGhostText::
	text "Le SCOPE SYLPHE"
	line "révèle l'identité"
	cont "du SPECTRE!"
	prompt

_GhostCantBeIDdText::
	text "Fichtre! Le"
	line "SPECTRE ne peut"
	cont "être identifié!"
	prompt

_GoText::
	text "En avant!"
	line "@"
	text_end

_DoItText::
	text "Attaque,"
	line "@"
	text_end

_GetmText::
	text "A toi,"
	line "@"
	text_end

_EnemysWeakText::
	text "Il est à toi,"
	line "@"
	text_end

_PlayerMon1Text::
	text_ram wBattleMonNick
	text "!"
	done

_PlayerMon2Text::
	text_ram wBattleMonNick
	text "!@"
	text_end

_EnoughText::
	text "!@"
	text_end

_OKExclamationText::
	text "!@"
	text_end

_GoodText::
	text "!@"
	text_end

_ComeBackText::
	text_start
	line "Reviens!@"
	text_end

; money related
_PickUpPayDayMoneyText::
	text "<PLAYER> ramasse:"
	line "¥@"
	text_bcd wTotalPayDayMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "!"
	prompt

_ClearSaveDataText::
	text "Effacer toutes"
	line "les données?"
	done

_WhichFloorText::
	text "Quel étage?"
	done

_SleepingPikachuText1::
	text "Pas de réponse..."
	prompt

_PartyMenuNormalText::
	text "Sélectionnez un"
	line "#MON."
	done

_PartyMenuItemUseText::
	text "Sur quel #MON?"
	done

_PartyMenuBattleText::
	text "Faire combattre"
	line "quel #MON?"
	done

_PartyMenuUseTMText::
	text "Capsule sur quel"
	line "#MON?"
	done

_PartyMenuSwapMonText::
	text "Nouvelle position"
	line "du #MON..."
	done

_PotionText::
	text_ram wNameBuffer
	text_start
	line "gagne @"
	text_decimal wHPBarHPDifference, 2, 3
	text " PV!"
	done

_AntidoteText::
	text_ram wNameBuffer
	text " est"
	line "guéri du poison!"
	done

_ParlyzHealText::
	text_ram wNameBuffer
	text_start
	line "peut bouger!"
	done

_BurnHealText::
	text_ram wNameBuffer
	text_start
	line "ne brûle plus!"
	done

_IceHealText::
	text_ram wNameBuffer
	text_start
	line "est dégelé!"
	done

_AwakeningText::
	text_ram wNameBuffer
	text_start
	line "se réveille!"
	done

_FullHealText::
	text_ram wNameBuffer
	text_start
	line "est soigné!"
	done

_ReviveText::
	text_ram wNameBuffer
	text_start
	line "revient à lui!"
	done

_RareCandyText::
	text_ram wNameBuffer
	text " monte"
	line "au niveau @"
	text_decimal wCurEnemyLevel, 1, 3
	text "!@"
	text_end

_TurnedOnPC1Text::
	text "<PLAYER> allume"
	line "le PC."
	prompt

_AccessedBillsPCText::
	text "Connexion au PC"
	line "de LEO."

	para "Accès au système"
	line "de stockage des"
	cont "#MON."
	prompt

_AccessedSomeonesPCText::
	text "Connexion au PC"
	line "inconnu."

	para "Accès au système"
	line "de stockage des"
	cont "#MON."
	prompt

_AccessedMyPCText::
	text "PC personnel"
	line "connecté."

	para "Accès au système"
	line "de stockage des"
	cont "objets."
	prompt

_TurnedOnPC2Text::
	text "<PLAYER> allume"
	line "le PC."
	prompt

_WhatDoYouWantText::
	text "Exécuter quelle"
	line "application?"
	done

_WhatToDepositText::
	text "Que désirez-vous"
	line "stocker?"
	done

_DepositHowManyText::
	text "Combien?"
	done

_ItemWasStoredText::
	text "L'objet"
	line "@"
	text_ram wNameBuffer
	text " a"
	cont "été stocké."
	prompt

_NothingToDepositText::
	text "Vous n'avez rien"
	line "à stocker."
	prompt

_NoRoomToStoreText::
	text "Plus de place"
	line "pour stocker."
	prompt

_WhatToWithdrawText::
	text "Que voulez-vous"
	line "retirer?"
	done

_WithdrawHowManyText::
	text "Combien?"
	done

_WithdrewItemText::
	text "Retrait de:"
	line "@"
	text_ram wNameBuffer
	text "."
	prompt

_NothingStoredText::
	text "Rien n'est"
	line "stocké."
	prompt

_CantCarryMoreText::
	text "Votre inventaire"
	line "est plein."
	prompt

_WhatToTossText::
	text "Que désirez-vous"
	line "jeter?"
	done

_TossHowManyText::
	text "Combien?"
	done

_AccessedHoFPCText::
	text "Connexion au site"
	line "de la LIGUE"
	cont "#MON."

	para "Accès à la liste"
	line "des CELEBRITES."
	prompt

_SleepingPikachuText2::
	text "Pas de réponse..."
	prompt

_SwitchOnText::
	text "Branché!"
	prompt

_WhatText::
	text "Que faire?"
	done

_DepositWhichMonText::
	text "Stocker quel"
	line "#MON?"
	done

_MonWasStoredText::
	text_ram wStringBuffer
	text " est"
	line "stocké dans la"
	cont "boîte @"
	text_ram wBoxNumString
	text "."
	prompt

_CantDepositLastMonText::
	text "Vous ne pouvez"
	line "stocker votre"
	cont "dernier #MON!"
	prompt

_BoxFullText::
	text "Oups! Cette boîte"
	line "est pleine!"
	prompt

_MonIsTakenOutText::
	text "Retrait de"
	line "@"
	text_ram wStringBuffer
	text_start
	cont "terminé."
	prompt

_NoMonText::
	text "Hein? Il n'y a"
	line "aucun #MON!"
	prompt

_CantTakeMonText::
	text "Vous ne pouvez"
	line "retirer un"
	cont "#MON."

	para "Stockez d'abord"
	line "un #MON."
	prompt

_PikachuUnhappyText::
	text_ram wNameBuffer
	text " n'est"
	line "pas content!"
	prompt

_ReleaseWhichMonText::
	text "Relâcher quel"
	line "#MON?"
	done

_OnceReleasedText::
	text_ram wStringBuffer
	text " sera"
	line "à jamais perdu."
	cont "Continuer?"
	done

_MonWasReleasedText::
	text_ram wStringBuffer
	text " est"
	line "relâché. Adieu,"
	cont "@"
	text_ram wStringBuffer
	text "!"
	prompt

_RequireCoinCaseText::
	text "Vous n'avez pas"
	line "de BOITE JETON!@"
	text_end

_ExchangeCoinsForPrizesText::
	text "Nous échangeons"
	line "des prix contre"
	cont "des jetons."
	prompt

_WhichPrizeText::
	text "Quel prix"
	line "désirez-vous?"
	done

_HereYouGoText::
	text "Et voilà!@"
	text_end

_SoYouWantPrizeText::
	text_ram wNameBuffer
	text "?"
	done

_SorryNeedMoreCoinsText::
	text "Vous n'avez pas"
	line "assez de jetons.@"
	text_end

_OopsYouDontHaveEnoughRoomText::
	text "Votre inventaire"
	line "est plein.@"
	text_end

_OhFineThenText::
	text "Bon. Très bien.@"
	text_end

_GetDexRatedText::
	text "Voulez-vous faire"
	line "évaluer votre"
	cont "#DEX?"
	done

_ClosedOaksPCText::
	text "PC du PROF. CHEN,"
	line "Déconnexion...@"
	text_end

_AccessedOaksPCText::
	text "Connexion au PC"
	line "du PROF. CHEN."

	para "Accès au système"
	line "d'évaluation du"
	cont "#DEX."
	prompt

_ExpressionText:: ; unreferenced
	text "Expression"
	line "No. @"
	text_decimal wExpressionNumber, 1, 2
	text "."
	prompt

_NotEnoughMemoryText::
	text "Mémoire Version"
	line "Jaune manquante!"
	done

_OakSpeechText1::
	text "Bien le bonjour!"
	line "Bienvenue dans le"
	cont "monde magique des"
	cont "#MON!"

	para "Mon nom est CHEN!"
	line "Les gens souvent"
	cont "m'appellent le"
	cont "PROF #MON!"
	prompt

_OakSpeechText2A::
	text "Ce monde est"
	line "peuplé de"
	cont "créatures du nom"
	cont "de #MON!@"
	text_end

_OakSpeechText2B::
	text_start

	para "Pour certains,"
	line "les #MON sont"
	cont "des animaux"
	cont "domestiques, pour"
	cont "d'autres, ils"
	cont "sont un moyen de"
	cont "combattre."

	para "Pour ma part..."

	para "L'étude des"
	line "#MON est"
	cont "ma profession."
	prompt

_IntroducePlayerText::
	text "Tout d'abord,"
	line "quel est ton nom?"
	prompt

_IntroduceRivalText::
	text "Voici mon petit-"
	line "fils. Il est ton"
	cont "rival depuis sa"
	cont "toute jeunesse."

	para "...Heu..."
	line "C'est quoi donc"
	cont "son nom déjà?"
	prompt

_OakSpeechText3::
	text "<PLAYER>!"

	para "Ta quête des"
	line "#MON est sur"
	cont "le point de"
	cont "commencer!"

	para "Un tout nouveau"
	line "monde de rêves,"
	cont "d'aventures et"
	cont "de #MON"
	cont "t'attend! Dingue!"
	done

_DoYouWantToNicknameText::
	text "Voulez-vous"
	line "donner un surnom"
	cont "à @"
	text_ram wNameBuffer
	text "?"
	done

_YourNameIsText::
	text "OK! Ton nom est"
	line "donc <PLAYER>!"
	prompt

_HisNameIsText::
	text "Ah oui! Je me"
	line "souviens! Son nom"
	cont "est <RIVAL>!"
	prompt

_WillBeTradedText::
	text_ram wNameOfPlayerMonToBeTraded
	text " et"
	line "@"
	text_ram wNameBuffer
	text " seront"
	cont "échangés."
	done

_Colosseum3MonsText::
	text "Il vous faut 3"
	line "#MON pour"
	cont "combattre!"
	prompt

_ColosseumMewText::
	text "Désolé! MEW ne"
	line "peut participer!"
	prompt

_ColosseumDifferentMonsText::
	text "Vos #MON"
	line "doivent être tous"
	cont "différents!"
	prompt

_ColosseumMaxL55Text::
	text "Aucun #MON ne"
	line "peut dépasser le"
	cont "niveau 55!"
	prompt

_ColosseumMinL50Text::
	text "Tous les #MON"
	line "doivent être"
	cont "au-dessus du"
	cont "niveau 50!"
	prompt

_ColosseumTotalL155Text::
	text "Le total des"
	line "niveaux dépasse"
	cont "155!"
	prompt

_ColosseumMaxL30Text::
	text "Aucun #MON ne"
	line "peut dépasser le"
	cont "niveau 30!"
	prompt

_ColosseumMinL25Text::
	text "Tous les #MON"
	line "doivent être"
	cont "au-dessus du"
	cont "niveau 25!"
	prompt

_ColosseumTotalL80Text::
	text "Le total des"
	line "niveaux dépasse"
	cont "80!"
	prompt

_ColosseumMaxL20Text::
	text "Aucun #MON ne"
	line "peut dépasser le"
	cont "niveau 20!"
	prompt

_ColosseumMinL15Text::
	text "Tous les #MON"
	line "doivent être"
	cont "au-dessus du"
	cont "niveau 15!"
	prompt

_ColosseumTotalL50Text::
	text "Le total des"
	line "niveaux dépasse"
	cont "50!"
	prompt

_ColosseumHeightText::
	text_ram wNameBuffer
	text " fait"
	line "plus de 2m!"
	prompt

_ColosseumWeightText::
	text_ram wNameBuffer
	text " pèse"
	line "plus de 20kg!"
	prompt

_ColosseumEvolvedText::
	text_ram wNameBuffer
	text " est un"
	line "#MON évolué!"
	prompt

_ColosseumIneligibleText::
	text "Votre adversaire"
	line "n'est pas valide!"
	prompt

_ColosseumWhereToText::
	text "Où désirez-vous "
	line "aller?"
	done

_ColosseumPleaseWaitText::
	text "OK! Un moment"
	line "s'il vous plaît."
	done

_ColosseumCanceledText::
	text "Le lien a été "
	line "rompu."
	done

_ColosseumVersionText::
	text "Les versions sont"
	line "incompatibles!"
	prompt

_TextIDErrorText::
	text_decimal hTextID, 1, 2
	text " ERREUR."
	done

_ContCharText::
	text "<_CONT>@"
	text_end

_NoPokemonText::
	text "Aucun #MON"
	line "ici!"
	prompt
