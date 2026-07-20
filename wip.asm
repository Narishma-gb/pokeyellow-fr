; \1 Label
; \2 Label address
MACRO? dr
	IF BANK(@) == 0
		DEF inc_start = @
	ELSE
		DEF inc_start = @ - $4000
	ENDC

	DEF bank_start = BANK(@) * $4000
	DEF inc_size = (\2) - @

	ASSERT FATAL, inc_size + inc_start <= $4000, "Bank overflow: \1"
	ASSERT FATAL, inc_size >= 0, "Negative binary INCLUDE: \1"

	INCBIN "baserom.bin", bank_start + inc_start, inc_size
	\1::
ENDM


EXPORT DEF CardKeySuccessText EQU $6653
EXPORT DEF CardKeyFailText EQU $665d
EXPORT DEF RedBedroomPCText EQU $5bb7
EXPORT DEF RedBedroomSNESText EQU $5baa
EXPORT DEF AerodactylFossilText EQU $5beb
EXPORT DEF Route15UpstairsBinocularsText EQU $5bd5
EXPORT DEF KabutopsFossilText EQU $5c01
EXPORT DEF FanClubPicture1Text EQU $5c17
EXPORT DEF FanClubPicture2Text EQU $5c2d
EXPORT DEF GymStatueText1 EQU $6622
EXPORT DEF GymStatueText2 EQU $6627
EXPORT DEF BookcaseText EQU $66e9
EXPORT DEF ViridianCityPokecenterBenchGuyText EQU $667b
EXPORT DEF PewterCityPokecenterBenchGuyText EQU $6680
EXPORT DEF CeruleanCityPokecenterBenchGuyText EQU $6685
EXPORT DEF LavenderCityPokecenterBenchGuyText EQU $668a
EXPORT DEF VermilionCityPokecenterBenchGuyText EQU $66a8
EXPORT DEF CeladonCityPokecenterBenchGuyText EQU $66ad
EXPORT DEF CeladonCityHotelText EQU $66da
EXPORT DEF FuchsiaCityPokecenterBenchGuyText EQU $66b2
EXPORT DEF CinnabarIslandPokecenterBenchGuyText EQU $66b7
EXPORT DEF SaffronCityPokecenterBenchGuyText EQU $66bc
EXPORT DEF MtMoonPokecenterBenchGuyText EQU $668f
EXPORT DEF RockTunnelPokecenterBenchGuyText EQU $6694
EXPORT DEF UnusedBenchGuyText1 EQU $6699
EXPORT DEF UnusedBenchGuyText2 EQU $669e
EXPORT DEF UnusedBenchGuyText3 EQU $66a3
EXPORT DEF UnusedPredefText EQU $66e0
EXPORT DEF PokemonCenterPCText EQU $6701
EXPORT DEF ViridianSchoolNotebook EQU $690f
EXPORT DEF ViridianSchoolBlackboard EQU $5d41
EXPORT DEF FoundHiddenItemText EQU $6045
EXPORT DEF HiddenItemBagFullText EQU $607e
EXPORT DEF VermilionGymTrashText EQU $5e49
EXPORT DEF IndigoPlateauHQText EQU $69a2
EXPORT DEF FoundHiddenCoinsText EQU $6138
EXPORT DEF DroppedHiddenCoinsText EQU $613e
EXPORT DEF LinkCableHelp EQU $5c82
EXPORT DEF TMNotebook EQU $6909
EXPORT DEF FightingDojoText EQU $698f
EXPORT DEF EnemiesOnEverySideText EQU $6975
EXPORT DEF WhatGoesAroundComesAroundText EQU $6982
EXPORT DEF VermilionGymTrashSuccessText1 EQU $5f01
EXPORT DEF VermilionGymTrashSuccessText2 EQU $5f14
EXPORT DEF VermilionGymTrashSuccessText3 EQU $5f28
EXPORT DEF VermilionGymTrashFailText EQU $5f3b

EXPORT DEF CELADONMANSION_ROOF_HOUSE_EEVEE_POKEBALL EQU $02
EXPORT DEF CERULEANCAVE1F_RARE_CANDY                EQU $01
EXPORT DEF CERULEANCAVE1F_MAX_ELIXER                EQU $02
EXPORT DEF CERULEANCAVE1F_MAX_REVIVE                EQU $03
EXPORT DEF CERULEANCAVE1F_ULTRA_BALL                EQU $04
EXPORT DEF CERULEANMELANIESHOUSE_BULBASAUR          EQU $02
EXPORT DEF CHAMPIONSROOM_OAK                        EQU $02
EXPORT DEF FIGHTINGDOJO_HITMONLEE_POKE_BALL         EQU $06
EXPORT DEF FIGHTINGDOJO_HITMONCHAN_POKE_BALL        EQU $07
EXPORT DEF MUSEUM1F_OLD_AMBER                       EQU $05
EXPORT DEF POKEMONMANSION1F_ESCAPE_ROPE             EQU $02
EXPORT DEF POKEMONMANSION1F_CARBOS                  EQU $03
EXPORT DEF POKEMONMANSION2F_CALCIUM                 EQU $02
EXPORT DEF POKEMONMANSION3F_MAX_POTION              EQU $03
EXPORT DEF POKEMONMANSION3F_IRON                    EQU $04
EXPORT DEF POKEMONMANSIONB1F_RARE_CANDY             EQU $03
EXPORT DEF POKEMONMANSIONB1F_FULL_RESTORE           EQU $04
EXPORT DEF POKEMONMANSIONB1F_TM_BLIZZARD            EQU $05
EXPORT DEF POKEMONMANSIONB1F_TM_SOLARBEAM           EQU $06
EXPORT DEF POKEMONMANSIONB1F_SECRET_KEY             EQU $08
EXPORT DEF POKEMONTOWER2F_RIVAL                     EQU $01
EXPORT DEF POKEMONTOWER3F_ESCAPE_ROPE               EQU $04
EXPORT DEF POKEMONTOWER4F_ELIXER                    EQU $04
EXPORT DEF POKEMONTOWER4F_AWAKENING                 EQU $05
EXPORT DEF POKEMONTOWER4F_HP_UP                     EQU $06
EXPORT DEF POKEMONTOWER5F_NUGGET                    EQU $06
EXPORT DEF POKEMONTOWER6F_RARE_CANDY                EQU $04
EXPORT DEF POKEMONTOWER6F_X_ACCURACY                EQU $05
EXPORT DEF POKEMONTOWER7F_JESSIE                    EQU $01
EXPORT DEF POKEMONTOWER7F_JAMES                     EQU $02
EXPORT DEF POKEMONTOWER7F_MR_FUJI                   EQU $03
EXPORT DEF ROUTE2_MOON_STONE                        EQU $01
EXPORT DEF ROUTE2_HP_UP                             EQU $02
EXPORT DEF ROUTE22_RIVAL1                           EQU $01
EXPORT DEF ROUTE22_RIVAL2                           EQU $02
EXPORT DEF ROUTE24_COOLTRAINER_M1                   EQU $01
EXPORT DEF ROUTE24_TM_THUNDER_WAVE                  EQU $08
EXPORT DEF ROUTE25_TM_SEISMIC_TOSS                  EQU $0a
EXPORT DEF ROUTE4_TM_WHIRLWIND                      EQU $03
EXPORT DEF ROUTE9_TM_TELEPORT                       EQU $0a
EXPORT DEF SAFFRONCITY_ROCKET1                      EQU $01
EXPORT DEF SAFFRONCITY_ROCKET2                      EQU $02
EXPORT DEF SAFFRONCITY_ROCKET3                      EQU $03
EXPORT DEF SAFFRONCITY_ROCKET4                      EQU $04
EXPORT DEF SAFFRONCITY_ROCKET5                      EQU $05
EXPORT DEF SAFFRONCITY_ROCKET6                      EQU $06
EXPORT DEF SAFFRONCITY_ROCKET7                      EQU $07
EXPORT DEF SAFFRONCITY_SCIENTIST                    EQU $08
EXPORT DEF SAFFRONCITY_SILPH_WORKER_M               EQU $09
EXPORT DEF SAFFRONCITY_SILPH_WORKER_F               EQU $0a
EXPORT DEF SAFFRONCITY_GENTLEMAN                    EQU $0b
EXPORT DEF SAFFRONCITY_PIDGEOT                      EQU $0c
EXPORT DEF SAFFRONCITY_ROCKER                       EQU $0d
EXPORT DEF SAFFRONCITY_ROCKET8                      EQU $0e
EXPORT DEF SAFFRONCITY_ROCKET9                      EQU $0f
EXPORT DEF SILPHCO11F_GIOVANNI                      EQU $03
EXPORT DEF SILPHCO11F_JAMES                         EQU $04
EXPORT DEF SILPHCO11F_ROCKET                        EQU $05
EXPORT DEF SILPHCO11F_JESSIE                        EQU $06
EXPORT DEF SILPHCO1F_LINK_RECEPTIONIST              EQU $01
EXPORT DEF SILPHCO7F_ROCKET1                        EQU $05
EXPORT DEF SILPHCO7F_SCIENTIST                      EQU $06
EXPORT DEF SILPHCO7F_ROCKET2                        EQU $07
EXPORT DEF SILPHCO7F_ROCKET3                        EQU $08
EXPORT DEF SILPHCO7F_RIVAL                          EQU $09
EXPORT DEF SILPHCO7F_CALCIUM                        EQU $0a
EXPORT DEF SILPHCO7F_TM_SWORDS_DANCE                EQU $0b
EXPORT DEF SILPHCO7F_UNUSED                         EQU $0c
EXPORT DEF SILPHCO8F_ROCKET1                        EQU $02
EXPORT DEF SILPHCO8F_SCIENTIST                      EQU $03
EXPORT DEF SILPHCO8F_ROCKET2                        EQU $04
EXPORT DEF SILPHCO9F_ROCKET1                        EQU $02
EXPORT DEF SILPHCO9F_SCIENTIST                      EQU $03
EXPORT DEF SILPHCO9F_ROCKET2                        EQU $04
EXPORT DEF SSANNE1FROOMS_TM_BODY_SLAM               EQU $0a
EXPORT DEF SSANNE2F_RIVAL                           EQU $02
EXPORT DEF SSANNE2FROOMS_MAX_ETHER                  EQU $06
EXPORT DEF SSANNE2FROOMS_RARE_CANDY                 EQU $09
EXPORT DEF SSANNEB1FROOMS_ETHER                     EQU $09
EXPORT DEF SSANNEB1FROOMS_TM_REST                   EQU $0a
EXPORT DEF SSANNEB1FROOMS_MAX_POTION                EQU $0b
EXPORT DEF VICTORYROAD1F_TM_SKY_ATTACK              EQU $03
EXPORT DEF VICTORYROAD1F_RARE_CANDY                 EQU $04
EXPORT DEF VICTORYROAD2F_MOLTRES                    EQU $06
EXPORT DEF VICTORYROAD2F_TM_SUBMISSION              EQU $07
EXPORT DEF VICTORYROAD2F_FULL_HEAL                  EQU $08
EXPORT DEF VICTORYROAD2F_TM_MEGA_KICK               EQU $09
EXPORT DEF VICTORYROAD2F_GUARD_SPEC                 EQU $0a
EXPORT DEF VICTORYROAD2F_BOULDER3                   EQU $0d
EXPORT DEF VICTORYROAD3F_MAX_REVIVE                 EQU $05
EXPORT DEF VICTORYROAD3F_TM_EXPLOSION               EQU $06
EXPORT DEF VICTORYROAD3F_BOULDER4                   EQU $0a
EXPORT DEF VIRIDIANFOREST_POTION1                   EQU $07
EXPORT DEF VIRIDIANFOREST_POTION2                   EQU $08
EXPORT DEF VIRIDIANFOREST_POKE_BALL                 EQU $09
EXPORT DEF VIRIDIANGYM_GIOVANNI                     EQU $01
EXPORT DEF VIRIDIANGYM_REVIVE                       EQU $0b
EXPORT DEF WARDENSHOUSE_RARE_CANDY                  EQU $02

EXPORT DEF SCRIPT_MUSEUM1F_NOOP                     EQU 1
EXPORT DEF SCRIPT_SAFARIZONEGATE_PLAYER_MOVING      EQU 3
EXPORT DEF SCRIPT_SAFARIZONEGATE_PLAYER_MOVING_DOWN EQU 4
EXPORT DEF SCRIPT_SAFARIZONEGATE_LEAVING_SAFARI     EQU 5


INCLUDE "main.asm"


SECTION "rom20", ROMX[$4000], BANK[20]
; ROM $14 : $50000 - $53FFF

	dr Route22_Blocks, $403d
	dr Route20_Blocks, $417d
	dr Route23_Blocks, $43b2
	dr Route24_Blocks, $46ed
	dr Route25_Blocks, $4816
	dr IndigoPlateau_Blocks, $4950
	dr SaffronCity_Blocks, $4a98
	dr PrintCardKeyText, $65db
	dr CeladonPrizeMenu, $6680


SECTION "Trainer Sight", ROMX[$4000], BANK[21]
SECTION "rom21", ROMX[$4000], BANK[21]
; ROM $15 : $54000 - $57FFF

	dr Route2_Blocks, $4086
	dr Route3_Blocks, $425d
	dr Route4_Blocks, $43f4
	dr Route5_Blocks, $45da
	dr Route9_Blocks, $4706
	dr Route13_Blocks, $4893
	dr Route14_Blocks, $4a1a
	dr Route17_Blocks, $4bb0
	dr Route19_Blocks, $4f01
	dr Route21_Blocks, $507d
	dr GainExperience, $525f
	dr DisplayDiploma, $6714
	dr _GetSpritePosition1, $6745
	dr _GetSpritePosition2, $6765
	dr _SetSpritePosition1, $6789
	dr _SetSpritePosition2, $67a9
	dr TrainerWalkUpToPlayer, $67cd
	dr TrainerEngage, $685b


SECTION "rom23", ROMX[$4000], BANK[23]
; ROM $17 : $5C000 - $5FFFF

	dr StarterDex, $40d4
	dr EvolveMon, $5a64
	dr SetPartyMonTypes, $5b87


;SECTION "rom24", ROMX[$4000], BANK[24]
; ROM $18 : $60000 - $63FFF


SECTION "rom29", ROMX[$4000], BANK[29]
; ROM $1d : $74000 - $77FFF

	dr HiddenItemNear, $405c
	dr CeruleanHideRocket, $40af
	dr VendingMachineMenu, $4721
	dr PKMNLeaguePC, $5df3
	dr ShakeElevator, $5efc


;SECTION "rom32", ROMX[$4000], BANK[32]
; ROM $20 : $80000 - $83FFF


SECTION "rom58", ROMX[$4000], BANK[58]
; ROM $3a : $E8000 - $EBFFF

	dr MonsterNames, $4000
	dr IsPlayerJustOutsideMap, $476c
	dr PrinterSerial_, $4a5e
	dr PrintPokedexEntry, $4b74
	dr PrintSurfingMinigameHighScore, $4c5c
	dr PrintDiploma, $4cb1
	dr PrintPCBox, $4d35
	dr PrintFanClubPortrait, $4e24
	dr PrinterDebug, $4e79
	dr Printer_PrepareSurfingMinigameHighScoreTileMap, $5101
	dr SetEnemyTrainerToStayAndFaceAnyDirection, $69d5


SECTION "rom60", ROMX[$4f12], BANK[60]
; ROM $3c : $F0000 - $F3FFF

	dr PokecenterChanseyText, $4f12
	dr HallOfFamePC, $4f26

SECTION "rom60_2", ROMX[$635a], BANK[60]

	dr BillsHousePrintBillPokemonText, $635a
	dr BillsHousePrintBillSSTicketText, $638c
	dr BillsHousePrintBillCheckOutMyRarePokemonText, $63e4
	dr BillsHouse_CheckPikachuEmotion, $63f0
	dr BillsHousePikachuConfused, $6417
	dr BillsHousePikachuWatchPlayer, $644d
	dr CheckForHiddenEvent, $653a


SECTION "rom62", ROMX[$4000], BANK[62]
; ROM $3e : $F8000 - $FBFFF

	dr SurfingPikachuMinigame, $4000
    dr PlayIntroScene, $582a


SECTION "rom63", ROMX[$4000], BANK[63]
; ROM $3f : $FC000 - $FFFFF

	dr MapSongBanks, $4000
	dr MapHeaderPointers, $41f2
	dr MapHeaderBanks, $43e4

SECTION "rom63_2", ROMX[$44dd], BANK[63]

INCLUDE "engine/pikachu/pikachu_follow.asm"
INCLUDE "engine/pikachu/pikachu_status.asm"
INCLUDE "engine/pikachu/pikachu_emotions.asm"
INCLUDE "engine/pikachu/pikachu_movement.asm"
INCLUDE "engine/pikachu/pikachu_pic_animation.asm"
INCLUDE "engine/debug/debug_menu.asm"
