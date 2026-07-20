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


EXPORT DEF FoundHiddenItemText EQU $6045
EXPORT DEF HiddenItemBagFullText EQU $607e
EXPORT DEF FoundHiddenCoinsText EQU $6138
EXPORT DEF DroppedHiddenCoinsText EQU $613e

EXPORT DEF CELADONMANSION_ROOF_HOUSE_EEVEE_POKEBALL EQU $02
EXPORT DEF CERULEANCAVE1F_RARE_CANDY                EQU $01
EXPORT DEF CERULEANCAVE1F_MAX_ELIXER                EQU $02
EXPORT DEF CERULEANCAVE1F_MAX_REVIVE                EQU $03
EXPORT DEF CERULEANCAVE1F_ULTRA_BALL                EQU $04
EXPORT DEF CERULEANMELANIESHOUSE_BULBASAUR          EQU $02
EXPORT DEF CHAMPIONSROOM_OAK                        EQU $02
EXPORT DEF POKEMONMANSION1F_ESCAPE_ROPE             EQU $02
EXPORT DEF POKEMONMANSION1F_CARBOS                  EQU $03
EXPORT DEF POKEMONMANSION2F_CALCIUM                 EQU $02
EXPORT DEF VICTORYROAD3F_MAX_REVIVE                 EQU $05
EXPORT DEF VICTORYROAD3F_TM_EXPLOSION               EQU $06
EXPORT DEF VICTORYROAD3F_BOULDER4                   EQU $0a
EXPORT DEF VIRIDIANGYM_GIOVANNI                     EQU $01
EXPORT DEF VIRIDIANGYM_REVIVE                       EQU $0b
EXPORT DEF WARDENSHOUSE_RARE_CANDY                  EQU $02

EXPORT DEF SCRIPT_SAFARIZONEGATE_PLAYER_MOVING      EQU 3
EXPORT DEF SCRIPT_SAFARIZONEGATE_PLAYER_MOVING_DOWN EQU 4
EXPORT DEF SCRIPT_SAFARIZONEGATE_LEAVING_SAFARI     EQU 5


INCLUDE "main.asm"


SECTION "rom29", ROMX[$4000], BANK[29]
; ROM $1d : $74000 - $77FFF

	dr HiddenItemNear, $405c
	dr CeruleanHideRocket, $40af
	dr VendingMachineMenu, $4721
	dr PKMNLeaguePC, $5df3
	dr ShakeElevator, $5efc


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
	dr DisplayDiplomaTop, $59ee
	dr SetEnemyTrainerToStayAndFaceAnyDirection, $69d5


SECTION "rom60", ROMX[$653a], BANK[60]
; ROM $3c : $F0000 - $F3FFF

	dr CheckForHiddenEvent, $653a
	dr Yellow_SampleSecondTrashCan, $6c4e


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
