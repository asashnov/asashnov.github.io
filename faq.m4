m4_include(m4lib.inc)

_HEADER({{FAQ}},
	{{FAQ}},
	{{Sashnov FAQ}})

_NAV

_H2({{Frequently asked questions (not really)}})

m4_define({{_QUESTION}}, {{<p>Q: _STRONG($1)</p>}})


_QUESTION({{For why this page?}})
_TEXT({{
A: This page exist for publish my creative in one place in network.
Most usefull and pupular projects will be placed to separate sites
if it becomes necessary.
}})

_QUESTION({{How this site generated?}})
_TEXT({{
A: For a long time (2008-2014) HTML appearance was build from
macroses with GNU m4 macro processor plus few tiny shell scripts.
This idea came from the article in Linux Journal:
_SELFLINK(http://www.linuxjournal.com/article.php?sid=2393)
}})

_TEXT({{
Hovewer in 2015 I decided to switch to Jekyll for few reasons:
(1) my static HTML hosting at hosting.qip.ru stopped working
(2) github.com offers free hosting on its github.io site and
(3) I wanted to learn a bit of MarkDown format.
}})

_FOOTER
