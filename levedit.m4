m4_include(m4lib.inc)

_HEADER({{level editor}},
	{{Редактор уровней Level Editor}},
	{{LevelEditor Level Editor Сашнов game develop редактор уровней}})

_NAV

_H2(Level Editor)

_IMAGE(levedit.png,{{Level Editor screenshot}})

_TEXT({{
My first serious project on PC written in 2000.
So I just migrate from speccy, I not think about cross platform
compatibility, so I store levels in bad (my grown) file format:
it directly dumps C-structure object to disk with <i>write()</i>
call so it no check byte order and depends on compiller-specific
structure alligment in memory.
}})

_TEXT({{
Platform: Windows
}})

_TEXT({{
Now I find good file format (standard and portable) for store
tile map and objects on it with initial possitions and other properties
which fit for games like Dizzy, LodeRunner and other 2D actions.
If you know such format please let me know.
}})

_DOWNLOADS_BEGIN
_DOWNLOADS_ITEM(leveditor.zip, Windows executable and help file)
_DOWNLOADS_ITEM(levedit-src.zip, Source for C++ builder)
_DOWNLOADS_END

_LINKS_BEGIN

_LINKS_ITEM(http://tilestudio.sourceforge.net/,
  {{ Tile Studio is a complete development utility for
  graphics of tile-based games. The application contains a bitmap
  editor for creating tiles and sprites and a map editor for designing
  level maps.  }})

_LINKS_ITEM(http://rpgmapper.sourceforge.net/,
  {{ RPG Mapper is the good tile map editor whitch have objects, crossplatform (java)  }})

_LINKS_ITEM(http://cleangl.sourceforge.net,
  {{ The Clean Game Library is a complete development system for 2D
  games (arcade, side scrollers, platform games), using the functional
  language Clean. Allthough Clean is not easy to learn (it's very
  different from imperative languages, such as Pascal and C), once you
  have mastered programming in Clean, you can easily create games with
  the Clean Game Library.  }})

_LINKS_END

_FOOTER
