m4_include(m4lib.inc)

_HEADER({{libayemu}},
	{{My AY/YM music cross-platform syntezer}},
	{{ZX AY/YM free software AY YM spectrum music vtx}})

_NAV

_H2(libayemu)

_IMAGE(xmms-vtx.png, xmms vtx format plugin)

_TEXT({{
  libayemu - is AY/YM sound chip emulation library written in (ANSI?) C,
so can be ported to any OS with minimal changes. AY/YM sound chip
was used in wide range of old popular machines such as Sinclair
ZX Spectrum 128, Commodore Atari and others.
}})

_TEXT({{
This library have:
}})

<ul>
<li>doxygen API documentation;
<li>autotools build system;
<li>sample: xmms plug-in (on the picture);
<li>sample: console player for *nix;
</ul>


_TEXT({{
You can contribute by:
}})

<ul>
<li>create build of libayemu and player for Windows;
<li>write input plugin for any existing sound player;
<li>create Python binding;
</ul>


_H2(History)

_TEXT({{
_MAILTO(v_soft@microfor.ru, Roman Sherbakov) is original author of
Winamp plugin (in_vtx.dll) for playing AY/YM music in VTX format.
It was open source, but in Delphi and asm :-(  So I can't directly
port it to Linux and start rewritting it in C. Month after I drop
mail to Roman for request help and following develop we do in pair:
I was responceable for code, Roman for synthezer algoritm.
His site is _SELFLINK(http://vtx.microfor.ru).
}})


_H2(Downloads)

_TEXT({{
Visit the project's download page on 
 _LINK(http://sourceforge.net/project/showfiles.php?group_id=107596, SourceForge)
}})

_LINKS_BEGIN

_LINKS_ITEM(http://trd.speccy.cz/,
  {{ Virtual TR-DOS }})

_LINKS_ITEM(http://www.worldofspectrum.org/,
  {{ World of Spectrum }})

_LINKS_ITEM(http://www.worldofspectrum.org/projectay/,
  {{ Project AY on <b>World of Spectrum</b> }})

_LINKS_ITEM(http://vtx.microfor.ru,
  {{ V_Soft Home Page }})

_LINKS_ITEM(http://zxdimsla.chat.ru/WINAMP/winamp.htm,
   {{ The ways to listen &amp; to convert ZX-Spectrum music modules}})

_LINKS_ITEM(http://oldcomputers.com/,
  {{ Old computers museum }})

_LINKS_END

_FOOTER
