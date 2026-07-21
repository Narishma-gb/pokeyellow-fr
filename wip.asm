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


INCLUDE "main.asm"


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
