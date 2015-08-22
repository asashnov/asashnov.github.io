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

m4_define(_H1, {{<h1>$1</h1>}})

m4_define(_H2, {{<h2>$1</h2>}})

m4_define(_H3, {{<h3>$1</h3>}})

m4_define(_TEXT, {{<p>$1</p>}})

m4_define(_LINK, {{<a href="$1">$2</a>}})

m4_define(_SELFLINK, _LINK($1,$1))

m4_define(_LABEL, {{<a name="$1"><h2>$1</h2></a>}})

m4_dnl _LINK_TO_FILE(filename, comment)
m4_define(_LINK_TO_FILE, {{<a href="files/$1">$1
  (m4_esyscmd(sh filesize.sh files/$1) Kb)</a> $2 }})

m4_define(_LINK_TO_PAGE, {{ m4_esyscmd(sh pagelink.sh $1)}})

m4_define(_LAST_UPDATE, {{Last update: m4_esyscmd(LANG=C date '+%d %b %Y') }})





m4_dnl ----------- tables --------------

m4_dnl _Start_Table(Columns,TABLE parameters)
m4_dnl defaults are border=1 cellpadding="1"
m4_dnl width="n" pixels or "n%" of screen width
m4_define({{_Start_Table}},{{<table $1>}})
m4_define({{_Table_Hdr_Item}}, {{<th>$1</th>m4_ifelse($#,1,,{{_Table_Hdr_Item(m4_shift($@))}})}})
m4_define({{_Table_Row_Item}}, {{<td>$1</td>m4_ifelse($#,1,,{{_Table_Row_Item(m4_shift($@))}})}})
m4_define({{_Table_Hdr}},{{<tr>_Table_Hdr_Item($@)</tr>}})
m4_define({{_Table_Row}},{{<tr>_Table_Row_Item($@)</tr>}})
m4_define({{_End_Table}},</table>)






m4_dnl  -------- boxes -------

m4_define(_DOWNLOADS_BEGIN,<div class="downloads">_H2(Downloads))
m4_define(_DOWNLOADS_ITEM, {{_LINK_TO_FILE($1) - $2<br />}})
m4_define(_DOWNLOADS_END, {{</div>}})

m4_define(_LINKS_BEGIN, {{<div class="links">_H2(Links) }})
m4_define(_LINKS_ITEM, {{_SELFLINK($1) - $2 <br /><br /> }})
m4_define(_LINKS_END, {{</div> }})






m4_dnl  -------- page layout -------

m4_dnl _HEADER(title, description, keywords)
m4_define(_HEADER, {{<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <title>$1 - The Sashnov Alexander's home page</title>
    <style type="text/css" media="all">@import "style/default.css";</style>
    <link rel="shortcut icon" href="img/icon.png" />
    <link rel="Alternate StyleSheet" href="style/black.css" type="text/css" title="Black" />
    <meta name="keywords" content="Sashnov, develop, programming, $3" />
    <meta http-equiv="Content-Type" content="text/html; charset=KOI8-R" />
    <meta name="author" content="Sashnov Alexander" />
    <meta name="description" content="$2" />
  </head>
<body>
_H1(Sashnov Alexander's home page)
}})


m4_define(_NAV, {{<div id="nav">
 <ul class="menu">
  <li>_LINK_TO_PAGE(index) </li>
<!--  <li>_LINK_TO_PAGE(resume)</li> -->
<!--  <li>_LINK_TO_PAGE(faq)</li> -->
  <li>_LINK_TO_PAGE(aboutru)</li>
  <li>_LINK_TO_PAGE(development)</li>
  <li>_LINK_TO_PAGE(linux)</li>
  <li>_LINK_TO_PAGE(internet)</li>
  <li>_LINK_TO_PAGE(windows)</li>
  <li>_LINK_TO_PAGE(palm)</li>

  <li class="linkgroup">Projects</li>

  <li>_LINK_TO_PAGE(libayemu)</li>
  <li>_LINK_TO_PAGE(galaxian)</li>
  <li>_LINK_TO_PAGE(ddungeon)</li>
  <li>_LINK_TO_PAGE(levedit)</li>
  <li>_LINK_TO_PAGE(palmano)</li>
  <li>_LINK_TO_PAGE(i8080emu)</li>
  <li>_LINK_TO_PAGE(other)</li>

  <li class="linkgroup">Links</li>

  <li>_LINK_TO_PAGE(books)</li>
  <li>_LINK_TO_PAGE(homepages)</li>
 </ul>
</div>
<div id="main">
}})


m4_define(_FOOTER, {{
  </div>
  <div id="footer">
    <hr />
    _VALID
    _COPYRIGHT
    _LAST_UPDATE
  </div>
</body>
</html>
<!-- mailto:spm111@yandex.ru -->}})







m4_dnl ------ banners --------

m4_define(_VALID, {{
  <div style="float: right">
    <a href="http://validator.w3.org/check/referer">
      <img style="border:0;width:88px;height:31px"
       src="img/valid_xhtml.png"
       alt="Valid XHTML 1.0!" height="31" width="88" /></a>

    <a href="http://jigsaw.w3.org/css-validator/">
       <img style="border:0;width:88px;height:31px"
            src="img/valid_css.png" 
            alt="Valid CSS!" />
    </a>
  </div>
 }})


m4_define(_LINUX_REGISTERED, {{
  <a class="pict" href="http://counter.li.org/">
    <img style="border:0" alt="Registered User #364777"
         title="I am the registered Linux user since Nov 2003"
         src="img/linux_registered.png" />
  </a>
 }})


m4_define(_SDL_NOW, {{
  <a href="http://www.libsdl.org">
    <img style="border:0" alt="SDL logo" title="SDL now!"
         src="../images/sdlnow.gif" />
  </a>
 }})


m4_define(_GET_FIREFOX, {{
  <a href="http://www.spreadfirefox.com/?q=affiliates&amp;id=0&amp;t=70">
    <img style="border:0" alt="Get Firefox!" title="Get Firefox!" 
         src="img/get_firefox.gif" />
  </a>
 }})


m4_define(_GET_OPENOFFICE, {{
  <a href="http://www.openoffice.org">
    <img style="border:0" alt="Get OpenOffice.org!" title="Get OpenOffice.org!"
         src="img/get_openoffice.png" />
  </a>
 }})


m4_divert
