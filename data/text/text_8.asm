_CableClubNPCPleaseWaitText::
	text "Attendez s.v.p.!@"
	text_end

_CableClubNPCLinkClosedBecauseOfInactivityText::
	vc_patch Change_link_closed_inactivity_message
IF DEF(_YELLOW_VC)
	text "A bientôt!"
	done
	text_start
	db   "é"
	line "rompu pour cause"
	cont "d'inactivité."
ELSE
	text "Le lien a été"
	line "rompu pour cause"
	cont "d'inactivité."
ENDC
	vc_patch_end

	para "Prévenez votre"
	line "ami et revenez"
	cont "plus tard!"
	done

_CableClubNPCPleaseComeAgainText::
	text "A bientôt!"
	done

_CableClubNPCMakingPreparationsText::
	text "Nous préparons"
	line "le lien."
	cont "Patience s.v.p.!"
	done

_FlashLightsAreaText::
	text_ram wNameBuffer
	text_start
	line "utilise FLASH."
	prompt

_WarpToLastPokemonCenterText::
	text "Téléportation au"
	line "dernier CENTRE"
	cont "#MON visité."
	done

_CannotUseTeleportNowText::
	text_ram wNameBuffer
	text " ne"
	line "peut utiliser la"
	cont "TELEPORTATION."
	prompt

_CannotFlyHereText::
	text_ram wNameBuffer
	text " ne"
	line "peut VOLER ici."
	prompt

_NotHealthyEnoughText::
	text "Points de vie"
	line "insuffisants."
	prompt

_NewBadgeRequiredText::
	text "Non! Un nouveau"
	line "BADGE est requis."
	prompt

_CannotUseItemsHereText::
	text "Pas d'objets ici!"
	prompt

_CannotGetOffHereText::
	text "Impossible de"
	line "descendre ici!"
	prompt

_UsedStrengthText::
	text_ram wNameBuffer
	text_start
	line "utilise FORCE.@"
	text_end

_CanMoveBouldersText::
	text_ram wNameBuffer
	text_start
	line "peut bouger"
	cont "les rochers."
	prompt

_CurrentTooFastText::
	text "Le courant est"
	line "trop rapide!"
	prompt

_CyclingIsFunText::
	text "Le vélo,"
	line "c'est cool!"
	cont "Oublie le SURF!"
	prompt

_GotMonText::
	text "<PLAYER> obtient:"
	line "@"
	text_ram wNameBuffer
	text "!@"
	text_end

_SentToBoxText::
	text "Plus de place"
	line "pour un #MON!"
	cont "@"
	text_ram wBoxMonNicks
	text " est"
	cont "transféré à la"
	cont "BOITE @"
	text_ram wStringBuffer
	text " du PC!"
	done

_BoxIsFullText::
	text "Plus de place"
	line "pour un #MON!"

	para "La BOITE #MON"
	line "est pleine!"

	para "Changez de BOITE"
	line "dans un CENTRE"
	cont "#MON!"
	done
