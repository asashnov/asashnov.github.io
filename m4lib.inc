m4_divert(-1)

m4_changecom({{[[[[}})

m4_changequote({{, }})



m4_dnl -------- items ---------------

m4_define(_EMAIL_ADDRESS, {{sashnov@ngs.ru}})

m4_define(_MAILTO, {{ <a href="mailto:$1">$2</a> }})

m4_define(_MAILME, _MAILTO(_EMAIL_ADDRESS,$1))

m4_define(_CURRENT_YEAR, m4_esyscmd({{date '+%Y'}}))

m4_define(_COPYRIGHT, {{<div class="copyright">
Copyright @ 2001 - _CURRENT_YEAR() Alexander Sashnov
</div>}})

m4_define(_COUNTER, {{<br /><img src="http://counter.co.kz/counter.cgi?page=www.sashnov.chat.ru_index.html" alt="Counter CO.KZ" />}})


m4_define(_CODEQUOTE, {{<div class="code"><pre><code>$1</code></pre></div>}})

m4_define(_EM, {{<em>$1</em>}})

m4_define(_STRONG, {{<strong>$1</strong>}})

m4_define(_PRE, {{<BLOCKQUOTE><PRE>$1</PRE></BLOCKQUOTE>}})

m4_define(_CODE, {{<CODE>$1</CODE>}})

m4_define(_ALT, m4_pushdef({{_tmp}}, {{$2}})m4_ifdef({{_tmp}}, {{alt="[$2]"}}, {{alt="[$1]"}})m4_popdef({{_tmp}}))

m4_define(_IMAGE, {{<img class="pict" src="img/$1" m4_esyscmd({{sh imgsize.sh img/$1}})
      _ALT({{$1}}, {{$2}}) /> }})

m4_define(_H1, {{$1
-
}})

m4_define(_H2, {{$1
--
}})

m4_define(_H3, {{$1
---
}})

m4_define(_TEXT, {{ $1 }})

m4_define(_LINK, {{<a href="$1">$2</a>}})

m4_define(_SELFLINK, _LINK($1,$1))

m4_define(_LABEL, {{<a name="$1"><h2>$1</h2></a>}})

m4_dnl _LINK_TO_FILE(filename, comment)
m4_define(_LINK_TO_FILE, {{<a href="files/$1">$1
  (m4_esyscmd(sh filesize.sh files/$1) Kb)</a> $2 }})

m4_define(_LINK_TO_PAGE, {{ m4_esyscmd(sh pagelink.sh $1)}})

m4_define(_LAST_UPDATE, {{Last update: m4_esyscmd(LANG=C date '+%d %b %Y') }})



m4_dnl  -------- boxes -------

m4_define(_DOWNLOADS_BEGIN,<div class="downloads">_H2(Downloads))
m4_define(_DOWNLOADS_ITEM, {{_LINK_TO_FILE($1) - $2<br />}})
m4_define(_DOWNLOADS_END, {{</div>}})

m4_define(_LINKS_BEGIN, {{<div class="links">_H2(Links) }})
m4_define(_LINKS_ITEM, {{_SELFLINK($1) - $2 <br /><br /> }})
m4_define(_LINKS_END, {{</div> }})



m4_dnl  -------- page layout -------

m4_dnl _HEADER(title, description, keywords)
m4_define(_HEADER, {{---
title: $1 - The Sashnov Alexander's home page
description: $2
keywords: $3
layout: default
---

}})


m4_define(_NAV, {{ }})
m4_define(_FOOTER, {{ }})




m4_dnl ------ banners --------

m4_define(_VALID, {{
  {% include valid.html %}
 }})


m4_define(_LINUX_REGISTERED, {{
  {% include linux_registered.html %}
 }})


m4_define(_SDL_NOW, {{
  {% include sdl_now.html %}
 }})


m4_define(_GET_FIREFOX, {{
  {% include get_firefox.html %}
}})


m4_define(_GET_OPENOFFICE, {{
  {% include get_openoffice.html %}
 }})

m4_divert
