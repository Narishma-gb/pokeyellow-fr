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
EXPORT DEF PushStartText EQU $62fc
EXPORT DEF SaveOptionText EQU $631a
EXPORT DEF StrengthsAndWeaknessesText EQU $631f
EXPORT DEF OakLabEmailText EQU $6693
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
EXPORT DEF BillsHouseMonitorText EQU $65bb
EXPORT DEF BillsHouseInitiatedText EQU $65c0
EXPORT DEF BillsHousePokemonList EQU $65de
EXPORT DEF MagazinesText EQU $6547
EXPORT DEF CinnabarGymQuiz EQU $63c0
EXPORT DEF LinkCableHelp EQU $5c82
EXPORT DEF TMNotebook EQU $6909
EXPORT DEF FightingDojoText EQU $698f
EXPORT DEF EnemiesOnEverySideText EQU $6975
EXPORT DEF WhatGoesAroundComesAroundText EQU $6982
EXPORT DEF NewBicycleText EQU $62ef
EXPORT DEF VermilionGymTrashSuccessText1 EQU $5f01
EXPORT DEF VermilionGymTrashSuccessText2 EQU $5f14
EXPORT DEF VermilionGymTrashSuccessText3 EQU $5f28
EXPORT DEF VermilionGymTrashFailText EQU $5f3b

EXPORT DEF BILLSHOUSE_BILL_POKEMON                  EQU $01
EXPORT DEF BILLSHOUSE_BILL1                         EQU $02
EXPORT DEF BILLSHOUSE_BILL2                         EQU $03
EXPORT DEF BLUESHOUSE_DAISY1                        EQU $01
EXPORT DEF BLUESHOUSE_DAISY2                        EQU $02
EXPORT DEF BLUESHOUSE_TOWN_MAP                      EQU $03
EXPORT DEF CELADONMANSION_ROOF_HOUSE_EEVEE_POKEBALL EQU $02
EXPORT DEF CERULEANCAVE1F_RARE_CANDY                EQU $01
EXPORT DEF CERULEANCAVE1F_MAX_ELIXER                EQU $02
EXPORT DEF CERULEANCAVE1F_MAX_REVIVE                EQU $03
EXPORT DEF CERULEANCAVE1F_ULTRA_BALL                EQU $04
EXPORT DEF CERULEANCAVE2F_RARE_CANDY                EQU $01
EXPORT DEF CERULEANCAVE2F_ULTRA_BALL                EQU $02
EXPORT DEF CERULEANCAVE2F_MAX_REVIVE                EQU $03
EXPORT DEF CERULEANCAVE2F_FULL_RESTORE              EQU $04
EXPORT DEF CERULEANCAVEB1F_MEWTWO                   EQU $01
EXPORT DEF CERULEANCAVEB1F_ULTRA_BALL1              EQU $02
EXPORT DEF CERULEANCAVEB1F_ULTRA_BALL2              EQU $03
EXPORT DEF CERULEANCAVEB1F_MAX_REVIVE               EQU $04
EXPORT DEF CERULEANCAVEB1F_MAX_ELIXER               EQU $05
EXPORT DEF CERULEANCITY_RIVAL                       EQU $01
EXPORT DEF CERULEANCITY_ROCKET                      EQU $02
EXPORT DEF CERULEANCITY_GUARD1                      EQU $06
EXPORT DEF CERULEANCITY_SUPER_NERD3                 EQU $0a
EXPORT DEF CERULEANCITY_GUARD2                      EQU $0b
EXPORT DEF CERULEANMELANIESHOUSE_BULBASAUR          EQU $02
EXPORT DEF CHAMPIONSROOM_OAK                        EQU $02
EXPORT DEF FIGHTINGDOJO_HITMONLEE_POKE_BALL         EQU $06
EXPORT DEF FIGHTINGDOJO_HITMONCHAN_POKE_BALL        EQU $07
EXPORT DEF GAMECORNER_ROCKET                        EQU $0b
EXPORT DEF MRFUJISHOUSE_MR_FUJI                     EQU $05
EXPORT DEF MTMOON1F_POTION1                         EQU $08
EXPORT DEF MTMOON1F_MOON_STONE                      EQU $09
EXPORT DEF MTMOON1F_RARE_CANDY                      EQU $0a
EXPORT DEF MTMOON1F_ESCAPE_ROPE                     EQU $0b
EXPORT DEF MTMOON1F_POTION2                         EQU $0c
EXPORT DEF MTMOON1F_TM_WATER_GUN                    EQU $0d
EXPORT DEF MTMOONB2F_JESSIE                         EQU $02
EXPORT DEF MTMOONB2F_JAMES                          EQU $06
EXPORT DEF MTMOONB2F_DOME_FOSSIL                    EQU $07
EXPORT DEF MTMOONB2F_HELIX_FOSSIL                   EQU $08
EXPORT DEF MTMOONB2F_HP_UP                          EQU $09
EXPORT DEF MTMOONB2F_TM_MEGA_PUNCH                  EQU $0a
EXPORT DEF MUSEUM1F_OLD_AMBER                       EQU $05
EXPORT DEF OAKSLAB_RIVAL                            EQU $01
EXPORT DEF OAKSLAB_EEVEE_POKE_BALL                  EQU $02
EXPORT DEF OAKSLAB_OAK1                             EQU $03
EXPORT DEF OAKSLAB_POKEDEX1                         EQU $04
EXPORT DEF OAKSLAB_POKEDEX2                         EQU $05
EXPORT DEF OAKSLAB_OAK2                             EQU $06
EXPORT DEF PALLETTOWN_OAK                           EQU $01
EXPORT DEF PEWTERCITY_SUPER_NERD1                   EQU $03
EXPORT DEF PEWTERCITY_YOUNGSTER                     EQU $05
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
EXPORT DEF POWERPLANT_VOLTORB1                      EQU $01
EXPORT DEF POWERPLANT_VOLTORB2                      EQU $02
EXPORT DEF POWERPLANT_VOLTORB3                      EQU $03
EXPORT DEF POWERPLANT_ELECTRODE1                    EQU $04
EXPORT DEF POWERPLANT_VOLTORB4                      EQU $05
EXPORT DEF POWERPLANT_VOLTORB5                      EQU $06
EXPORT DEF POWERPLANT_ELECTRODE2                    EQU $07
EXPORT DEF POWERPLANT_VOLTORB6                      EQU $08
EXPORT DEF POWERPLANT_ZAPDOS                        EQU $09
EXPORT DEF POWERPLANT_CARBOS                        EQU $0a
EXPORT DEF POWERPLANT_HP_UP                         EQU $0b
EXPORT DEF POWERPLANT_RARE_CANDY                    EQU $0c
EXPORT DEF POWERPLANT_TM_THUNDER                    EQU $0d
EXPORT DEF POWERPLANT_TM_REFLECT                    EQU $0e
EXPORT DEF ROCKETHIDEOUTB1F_ESCAPE_ROPE             EQU $06
EXPORT DEF ROCKETHIDEOUTB1F_HYPER_POTION            EQU $07
EXPORT DEF ROCKETHIDEOUTB2F_MOON_STONE              EQU $02
EXPORT DEF ROCKETHIDEOUTB2F_NUGGET                  EQU $03
EXPORT DEF ROCKETHIDEOUTB2F_TM_HORN_DRILL           EQU $04
EXPORT DEF ROCKETHIDEOUTB2F_SUPER_POTION            EQU $05
EXPORT DEF ROCKETHIDEOUTB3F_TM_DOUBLE_EDGE          EQU $03
EXPORT DEF ROCKETHIDEOUTB3F_RARE_CANDY              EQU $04
EXPORT DEF ROCKETHIDEOUTB4F_GIOVANNI                EQU $01
EXPORT DEF ROCKETHIDEOUTB4F_JAMES                   EQU $02
EXPORT DEF ROCKETHIDEOUTB4F_JESSIE                  EQU $03
EXPORT DEF ROCKETHIDEOUTB4F_HP_UP                   EQU $05
EXPORT DEF ROCKETHIDEOUTB4F_TM_RAZOR_WIND           EQU $06
EXPORT DEF ROCKETHIDEOUTB4F_IRON                    EQU $07
EXPORT DEF ROCKETHIDEOUTB4F_SILPH_SCOPE             EQU $08
EXPORT DEF ROCKETHIDEOUTB4F_LIFT_KEY                EQU $09
EXPORT DEF ROUTE12_SNORLAX                          EQU $01
EXPORT DEF ROUTE12_TM_PAY_DAY                       EQU $09
EXPORT DEF ROUTE12_IRON                             EQU $0a
EXPORT DEF ROUTE15_TM_RAGE                          EQU $0b
EXPORT DEF ROUTE16_SNORLAX                          EQU $07
EXPORT DEF ROUTE2_MOON_STONE                        EQU $01
EXPORT DEF ROUTE2_HP_UP                             EQU $02
EXPORT DEF ROUTE22_RIVAL1                           EQU $01
EXPORT DEF ROUTE22_RIVAL2                           EQU $02
EXPORT DEF ROUTE24_COOLTRAINER_M1                   EQU $01
EXPORT DEF ROUTE24_TM_THUNDER_WAVE                  EQU $08
EXPORT DEF ROUTE25_TM_SEISMIC_TOSS                  EQU $0a
EXPORT DEF ROUTE4_TM_WHIRLWIND                      EQU $03
EXPORT DEF ROUTE9_TM_TELEPORT                       EQU $0a
EXPORT DEF SAFARIZONECENTER_NUGGET                  EQU $01
EXPORT DEF SAFARIZONEEAST_FULL_RESTORE              EQU $01
EXPORT DEF SAFARIZONEEAST_MAX_RESTORE               EQU $02
EXPORT DEF SAFARIZONEEAST_CARBOS                    EQU $03
EXPORT DEF SAFARIZONEEAST_TM_EGG_BOMB               EQU $04
EXPORT DEF SAFARIZONENORTH_PROTEIN                  EQU $01
EXPORT DEF SAFARIZONENORTH_TM_SKULL_BASH            EQU $02
EXPORT DEF SAFARIZONEWEST_MAX_POTION                EQU $01
EXPORT DEF SAFARIZONEWEST_TM_DOUBLE_TEAM            EQU $02
EXPORT DEF SAFARIZONEWEST_MAX_REVIVE                EQU $03
EXPORT DEF SAFARIZONEWEST_GOLD_TEETH                EQU $04
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
EXPORT DEF SEAFOAMISLANDS1F_BOULDER1                EQU $01
EXPORT DEF SEAFOAMISLANDS1F_BOULDER2                EQU $02
EXPORT DEF SEAFOAMISLANDSB1F_BOULDER1               EQU $01
EXPORT DEF SEAFOAMISLANDSB1F_BOULDER2               EQU $02
EXPORT DEF SEAFOAMISLANDSB2F_BOULDER1               EQU $01
EXPORT DEF SEAFOAMISLANDSB2F_BOULDER2               EQU $02
EXPORT DEF SEAFOAMISLANDSB3F_BOULDER2               EQU $02
EXPORT DEF SEAFOAMISLANDSB3F_BOULDER3               EQU $03
EXPORT DEF SEAFOAMISLANDSB3F_BOULDER5               EQU $05
EXPORT DEF SEAFOAMISLANDSB3F_BOULDER6               EQU $06
EXPORT DEF SEAFOAMISLANDSB4F_BOULDER1               EQU $01
EXPORT DEF SEAFOAMISLANDSB4F_BOULDER2               EQU $02
EXPORT DEF SEAFOAMISLANDSB4F_ARTICUNO               EQU $03
EXPORT DEF SILPHCO10F_ROCKET                        EQU $01
EXPORT DEF SILPHCO10F_SCIENTIST                     EQU $02
EXPORT DEF SILPHCO10F_SILPH_WORKER_F                EQU $03
EXPORT DEF SILPHCO10F_TM_EARTHQUAKE                 EQU $04
EXPORT DEF SILPHCO10F_RARE_CANDY                    EQU $05
EXPORT DEF SILPHCO10F_CARBOS                        EQU $06
EXPORT DEF SILPHCO11F_GIOVANNI                      EQU $03
EXPORT DEF SILPHCO11F_JAMES                         EQU $04
EXPORT DEF SILPHCO11F_ROCKET                        EQU $05
EXPORT DEF SILPHCO11F_JESSIE                        EQU $06
EXPORT DEF SILPHCO1F_LINK_RECEPTIONIST              EQU $01
EXPORT DEF SILPHCO2F_SILPH_WORKER_F                 EQU $01
EXPORT DEF SILPHCO2F_SCIENTIST1                     EQU $02
EXPORT DEF SILPHCO2F_SCIENTIST2                     EQU $03
EXPORT DEF SILPHCO2F_ROCKET1                        EQU $04
EXPORT DEF SILPHCO2F_ROCKET2                        EQU $05
EXPORT DEF SILPHCO3F_ROCKET                         EQU $02
EXPORT DEF SILPHCO3F_SCIENTIST                      EQU $03
EXPORT DEF SILPHCO3F_HYPER_POTION                   EQU $04
EXPORT DEF SILPHCO4F_ROCKET1                        EQU $02
EXPORT DEF SILPHCO4F_SCIENTIST                      EQU $03
EXPORT DEF SILPHCO4F_ROCKET2                        EQU $04
EXPORT DEF SILPHCO4F_FULL_HEAL                      EQU $05
EXPORT DEF SILPHCO4F_MAX_REVIVE                     EQU $06
EXPORT DEF SILPHCO4F_ESCAPE_ROPE                    EQU $07
EXPORT DEF SILPHCO5F_ROCKET1                        EQU $02
EXPORT DEF SILPHCO5F_SCIENTIST                      EQU $03
EXPORT DEF SILPHCO5F_ROCKER                         EQU $04
EXPORT DEF SILPHCO5F_ROCKET2                        EQU $05
EXPORT DEF SILPHCO5F_TM_TAKE_DOWN                   EQU $06
EXPORT DEF SILPHCO5F_PROTEIN                        EQU $07
EXPORT DEF SILPHCO5F_CARD_KEY                       EQU $08
EXPORT DEF SILPHCO6F_ROCKET1                        EQU $06
EXPORT DEF SILPHCO6F_SCIENTIST                      EQU $07
EXPORT DEF SILPHCO6F_ROCKET2                        EQU $08
EXPORT DEF SILPHCO6F_HP_UP                          EQU $09
EXPORT DEF SILPHCO6F_X_ACCURACY                     EQU $0a
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
EXPORT DEF VIRIDIANCITY_OLD_MAN_SLEEPY              EQU $05
EXPORT DEF VIRIDIANCITY_OLD_MAN                     EQU $07
EXPORT DEF VIRIDIANCITY_OLD_MAN2                    EQU $08
EXPORT DEF VIRIDIANFOREST_POTION1                   EQU $07
EXPORT DEF VIRIDIANFOREST_POTION2                   EQU $08
EXPORT DEF VIRIDIANFOREST_POKE_BALL                 EQU $09
EXPORT DEF VIRIDIANGYM_GIOVANNI                     EQU $01
EXPORT DEF VIRIDIANGYM_REVIVE                       EQU $0b
EXPORT DEF WARDENSHOUSE_RARE_CANDY                  EQU $02

EXPORT DEF SCRIPT_SEAFOAMISLANDSB3F_MOVE_OBJECT EQU 2
EXPORT DEF SCRIPT_SEAFOAMISLANDSB4F_MOVE_OBJECT EQU 2

INCLUDE "main.asm"


SECTION "rom6", ROMX[$4000], BANK[6]
; ROM $06 : $18000 - $1BFFF

	dr PlayerStepOutFromDoor, $64ea
	dr _EndNPCMovementScript, $6527
	dr PalletMovementScriptPointerTable, $654c
	dr PewterMuseumGuyMovementScriptPointerTable, $6622
	dr PewterGymGuyMovementScriptPointerTable, $6685
	dr PewterGuys, $66e5
	dr IsPlayerStandingOnDoorTile, $6785
	dr HandleLedges, $67f4


SECTION "rom7", ROMX[$4000], BANK[7]
; ROM $07 : $1C000 - $1FFFF

	dr DoClearSaveDialogue, $421e
	dr DisplayElevatorFloorMenu, $4264
	dr OpenOaksPC, $62b1
	dr SafariZoneCheck, $6324
	dr SafariZoneCheckSteps, $6333
	dr PrintSafariGameOverText, $6388
	dr UpdateCinnabarGymGateTileBlocks_, $64c2


SECTION "rom14", ROMX[$4000], BANK[14]
; ROM $0e : $38000 - $3BFFF

	dr Moves, $4000
	dr BaseStats, $43de
	dr CryData, $5462
	dr TrainerPicAndMoneyPointers, $5893
	dr TrainerNames, $597e
	dr FormatMovesString, $5b09
	dr InitList, $5b57
	dr ReadTrainer, $5bb9
	dr DrawAllPokeballs, $68e2
	dr SetupPlayerAndEnemyPokeballs, $69ec
	dr PokeballTileGraphics, $6a2b
	dr TryEvolvingMon, $6dbb
	dr EvolutionAfterBattle, $6dc9
	dr LearnMoveFromLevelUp, $700f
	dr Func_3b10f, $7112
	dr WriteMonMoves, $7142
	dr EvosMovesPointerTable, $71e8


SECTION "rom15", ROMX[$4000], BANK[15]
; ROM $0f : $3C000 - $3FFFF
BattleCore::
DisplayBattleMenu::

	dr SlidePlayerAndEnemySilhouettesOnScreen, $404c
	dr StartBattle, $4127
	dr AnyPartyAlive, $4ae8
	dr ReadPlayerMonCurHPAndStatus, $4e08
	dr DrawHUDsAndHPBars, $4e1f
	dr DrawPlayerHUDAndHPBar, $4e25
	dr DrawEnemyHUDAndHPBar, $4eb1
	dr MoveSelectionMenu, $5323
	dr IsGhostBattle, $59c2
	dr PrintDoesntAffectText, $5dd9
	dr MoveHitTest, $6707
	dr LoadEnemyMonData, $6c9d
	dr DoBattleTransitionAndInitBattleVariables, $6dce
	dr DoubleOrHalveSelectedStats, $6ea4
	dr QuarterSpeedDueToParalysis, $6ec9
	dr LoadHudTilePatterns, $6ffd
	dr JumpMoveEffect, $70bd
	dr StatModifierUpEffect, $73f4
	dr PrintButItFailedText_, $7b30
	dr PrintDidntAffectText, $7b3b
	dr PrintMayNotAttackText, $7b4b
	dr PlayCurrentMoveAnimation, $7b85


SECTION "rom16", ROMX[$4000], BANK[16]
; ROM $10 : $40000 - $43FFF

	dr ShowPokedexMenu, $4000
	dr ShowPokedexData, $4310
	dr PokedexEntryPointers, $4508
	dr IndexToPokedex, $5022
	dr EmotionBubble, $50f4
	dr InternalClockTradeAnim, $536a
	dr ExternalClockTradeAnim, $537b
	dr PlayIntro, $591c
	dr DisplayOptionMenu_, $5bf5


SECTION "rom17", ROMX[$4000], BANK[17]
; ROM $11 : $44000 - $47FFF

	dr DisplayDexRating, $4169
	dr LoadSpinnerArrowTiles, $5077


;SECTION "rom18", ROMX[$4000], BANK[18]
; ROM $12 : $48000 - $4BFFF


;SECTION "rom19", ROMX[$4000], BANK[19]
; ROM $13 : $4C000 - $4FFFF


SECTION "rom20", ROMX[$4000], BANK[20]
; ROM $14 : $50000 - $53FFF

	dr PrintCardKeyText, $65db
	dr CeladonPrizeMenu, $6680


SECTION "Trainer Sight", ROMX[$4000], BANK[21]
SECTION "rom21", ROMX[$4000], BANK[21]
; ROM $15 : $54000 - $57FFF

	dr _GetSpritePosition1, $6745
	dr _GetSpritePosition2, $6765
	dr _SetSpritePosition1, $6789
	dr _SetSpritePosition2, $67a9
	dr TrainerWalkUpToPlayer, $67cd
	dr TrainerEngage, $685b


SECTION "rom22", ROMX[$4000], BANK[22]
; ROM $16 : $58000 - $5BFFF

	dr CalcLevelFromExperience, $4d99
	dr CalcExperience, $4dc0
	dr PrintStatusAilment, $4e8b
	dr OaksAideScript, $4ecc


SECTION "rom23", ROMX[$4000], BANK[23]
; ROM $17 : $5C000 - $5FFFF

	dr StarterDex, $40d4
	dr SetPartyMonTypes, $5b87


;SECTION "rom24", ROMX[$4000], BANK[24]
; ROM $18 : $60000 - $63FFF


SECTION "rom29", ROMX[$4000], BANK[29]
; ROM $1d : $74000 - $77FFF

	dr HiddenItemNear, $405c
	dr VendingMachineMenu, $4721
	dr PKMNLeaguePC, $5df3


;SECTION "rom32", ROMX[$4000], BANK[32]
; ROM $20 : $80000 - $83FFF


SECTION "rom47", ROMX[$7450], BANK[47]
; ROM $2f : $BC000 - $BFFFF

    dr LoadBGMapAttributes, $7450


SECTION "rom58", ROMX[$4000], BANK[58]
; ROM $3a : $E8000 - $EBFFF

	dr MonsterNames, $4000
	dr IsPlayerJustOutsideMap, $476c
	dr PrinterSerial_, $4a5e
	dr PrintPCBox, $4d35
	dr PrinterDebug, $4e79
	dr SetEnemyTrainerToStayAndFaceAnyDirection, $69d5


SECTION "rom60", ROMX[$4f12], BANK[60]
; ROM $3c : $F0000 - $F3FFF

	dr HallOfFamePC, $4f26
	dr CheckForHiddenEvent, $653a


;SECTION "rom62", ROMX[$4000], BANK[62]
; ROM $3e : $F8000 - $FBFFF


SECTION "rom63", ROMX[$4000], BANK[63]
; ROM $3f : $FC000 - $FFFFF

	dr MapSongBanks, $4000
	dr MapHeaderPointers, $41f2
	dr MapHeaderBanks, $43e4
	dr SchedulePikachuSpawnForAfterText, $44fa
	dr SetPikachuSpawnOutside, $45fa
	dr SetPikachuSpawnWarpPad, $465b
	dr SetPikachuSpawnBackOutside, $469a
	dr SpawnPikachu_, $46d5
	dr IsPikachuRightNextToPlayer, $4b01
	dr GetPikachuFacingDirectionAndReturnToE, $4b4d
	dr RefreshPikachuFollow, $4ba1
	dr Func_fcc08, $4c08
	dr IsStarterPikachuAliveInOurParty, $4db8
	dr IsThisBoxMonStarterPikachu, $4e0d
	dr IsThisPartyMonStarterPikachu, $4e18
	dr UpdatePikachuMoodAfterBattle, $4e5a
	dr IsPlayerTalkingToPikachu, $4f0c
	dr PlaySpecificPikachuEmotion, $5001
	dr TalkToPikachu, $5004
	dr PikachuEmotionTable, $5019
	dr PikachuEmotion26_id, $504d
	dr IsPlayerPikachuAsleepInParty, $50d0
	dr PikachuWalksToNurseJoy, $5252
	dr ApplyPikachuMovementData_, $52a1
	dr LoadPikachuShadowIntoVRAM, $5831
