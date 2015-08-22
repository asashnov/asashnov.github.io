m4_include(m4lib.inc)

_HEADER({{FAQ}},
	{{FAQ}},
	{{Sashnov FAQ}})

_NAV

_H2({{(not really) Frequently asked questions}})

m4_define({{_QUESTION}}, {{<p>Q: _STRONG($1)</p>}})


_QUESTION({{For why this page?}})
_TEXT({{
A: This page exist for publish my creative in one place in network.
Most usefull and pupular projects will be placed to separate sites
if it becomes necessary.
}})

_QUESTION({{How this site generated?}})
_TEXT({{
A: with m4 macro processor and some bash scripts for make links to
files, images and pages on my site. Scripts alse check generated links
for presense. This idea is arrive from article in Linux Journal:
_SELFLINK(http://www.linuxjournal.com/article.php?sid=2393)
}})

_FOOTER
