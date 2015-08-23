m4_include(m4lib.inc)

_HEADER({{danger dungeon}},
	{{Loderunner type game}},
	{{danger dungeon lode runner game}})

_NAV

_H2(Danger Dungeon)

_IMAGE(ddungeon.png, Danger dungeon screenshot)

_TEXT({{
This is my second playeble game. It written under Borland C++
as Galaxian too but with NukeDX wrapper. The game is simplefer
Loderunner clone (without floor breaking).

I use separate application for create levels-
_LINK_TO_PAGE(levedit) which I wrote long before of write this game.
Level format is ugle (no check byte order, depends on compiller-specific
structure alligment in memory).
}})

_TEXT({{
Platform: Windows, DirectX
}})

_TEXT({{
NOTE: runs only in 16-bit display color mode.
}})

_DOWNLOADS_BEGIN
_DOWNLOADS_ITEM(ddungeon-exe.zip, Windows executable and data)
_DOWNLOADS_ITEM(ddungeon-src.zip, Source and project for Borland C++ Builder 5)
_DOWNLOADS_END

_FOOTER
