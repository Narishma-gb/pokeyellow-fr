# Pokémon Version Jaune

This is a WIP disassembly of Pokémon Version Jaune : Edition Spéciale Pikachu.

It builds the following ROMs:

- Pokemon - Version Jaune (F) [C][!].gbc  `sha1: 0aceec0ef7aa2ca5aa831554598d91f61a925591`
- ~~DMGAPSF0.J16.patch `sha1: 5e60445d4df2b955d07cfd173c61b53b7494711d`~~

To set up the repository, see [**INSTALL.md**](INSTALL.md).

## Credits

- The whole repository structure, most ASM files, tools and build scripts originate from pret [**pokeyellow**][pokeyellow].
- [**Emulicious**][emulicious] debugger features have been invaluable, navigating the ROM to look for differences with the US release.
- Brianum's [**pokeyellow-de**][pokeyellow-de] made this considerably easier, having documented every place where a code/data translation change is likely to occur, and providing the final WRAM layout.
- einstein95's [**pokered-fr**][pokered-fr] provided insight on metric unit formatting in the Pokédex, that was copied in this project

## Note

A base ROM is required to build, it should be placed at the top-level directory: `baserom.bin`.

## See also

- **Wiki** (WIP)

[emulicious]: https://www.emulicious.net
[pokeyellow]: https://github.com/pret/pokeyellow
[pokeyellow-de]: https://github.com/Brianum/pokeyellow-de
[pokered-fr]: https://github.com/einstein95/pokered-fr
