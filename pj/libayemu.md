---
title: libayemu
description: AY/YM music cross-platform syntezer
keywords: ZX AY/YM free software AY YM spectrum music vtx
layout: default
category: projects
---
 
libayemu
--

![xmms vtx format plugin](img/xmms-vtx.png) 

libayemu - is AY/YM sound chip emulation library written in ANSI C,
so it can be ported to any OS with little or no change.

AY/YM sound chip was used in wide variety of popular machines in the past
such as Sinclair ZX Spectrum 128, Commodore Atari and others.

Initial goal of this project was to have in Linux a replacement of
Winamp + in_vtx.dll plugin for playing a collection of .vtx files.

This library has: 
 - doxygen API documentation;
 - autotools build system;
 - sample: xmms plug-in (on the picture);
 - sample: console player for *nix;

 
Downloads
--
 
Visit the project's download page on 
 <a href="http://sourceforge.net/project/showfiles.php?group_id=107596">SourceForge</a>


Contribution
---

Contributors are welcome on
[projects GitHub page](https://github.com/asashnov/libayemu)

You can contribute by:
 - create build of libayemu and player for Windows;
 - write input plugin for any existing sound player;
 - create Python binding;

Currently the library is used in
[DeadBeef](http://deadbeef.sourceforge.net/) cross-platform music player.


History
--
 
<a href="mailto:v_soft@nm.ru">Roman Sherbakov</a> is original author of
Winamp plugin (in_vtx.dll) for playing AY/YM music in VTX format.
It was open source, but in Delphi and asm :-(  So I can't directly
port it to Linux and start rewritting it in C. Month after I drop
mail to Roman for request help and following develop we do in pair:
I was responceable for code, Roman for synthezer algoritm.
His site is <a href="http://vtx.microfor.ru">http://vtx.microfor.ru</a>.


## Links

[AY-3-8910 wiki page](https://ru.wikipedia.org/wiki/AY-3-8910)

[AY-3-8910, AY-3-8912, YM2149 Homepage](http://bulba.untergrund.net/)

[AyEmul from Bulba](http://bulba.untergrund.net/emulator_e.htm)

[AYFly](http://code.google.com/p/ayfly) - (unavailable now)

[ZX Tune cross-platform player](http://zxtune.bitbucket.org/)
Available platforms: Android, Windows, MacOS_X, Linux, Raspberry_Pi

[Music archive at Bulba's page](http://bulba.untergrund.net/music_e.htm)

[ZX Tunes.com: listen online or download](http://zxtunes.com/)

[Hacker KAY](http://kay27.narod.ru/) - Music writter, AY/YM chips researcher

[ZX-Spectrum sound kit](https://sourceforge.net/projects/zxssk/)
Project core is fast and accurate resampler, based on FIR-filter, heavily optimized for piecewise-constant functions. Above this is clock-precise AY-3-8910 (YM2149F) emulator. Front-ends are win32 console app, Winamp and GSPlayer plugins

[VGMRips](https://vgmrips.net/)
The biggest and most active site for retro Video Game Music rips

[Buffers Evolution by Pixelated Audio podcast](http://pixelatedaudio.com/buffers-evolution/)

[V_Soft Home Page (web.archive.org, dec 2004](http://web.archive.org/web/20041202182909/http://vtx.microfor.ru/)

 - <a href="http://trd.speccy.cz/">http://trd.speccy.cz/</a> -  Virtual TR-DOS
 - <a href="http://www.worldofspectrum.org/">http://www.worldofspectrum.org/</a> -  World of Spectrum
 - <a href="http://www.worldofspectrum.org/projectay/">http://www.worldofspectrum.org/projectay/</a> -  Project AY on <b>World of Spectrum</b>
 - <a href="http://zxdimsla.chat.ru/WINAMP/winamp.htm">http://zxdimsla.chat.ru/WINAMP/winamp.htm</a> -  The ways to listen &amp; to convert ZX-Spectrum music modules
 - <a href="http://oldcomputers.com/">http://oldcomputers.com/</a> -  Old computers museum

 - [AY Fly !](https://github.com/l29ah/ayfly)
    Supports VTX and all formats wich Bulba support and more
