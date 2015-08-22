m4_include(m4lib.inc)

_HEADER({{Overhearer}},
	{{�������������}},
	{{overhearer sound record ������ ����� � ���������}})

_NAV

_H2(Overhearer)

_IMAGE(over_h.gif, {{OverHearer in tray icon}})

_TEXT({{
�������������. ��� ������� ����� ������ ���� ���� � �������� ���� ������ �� 
������ ����� � ������. ��� ��������� ������ �� ��� �������� ������ � ��������� 
� ���� � ������ �������� �� ������ ��� ��������� ����, ��� ������ ��������. 
��� ��������� ��������� ������ �� ������ ������ ����������� � ��������� �����������
}})

_TEXT({{
�� ������ ������ ������� �� ������ ���������� ����, �� �������� ����� ������� ������ 
������ ( �� ��������� ������� �������� ��� ������) � �����, � ������� ����� 
������������� ������ (���������� ������� ����, �� ������� ������ �����, �.�. 
�������� ���� ��������). ��������� �������� � ���� ��� ������ ������, �.�. ���� 
������ ��� ���� � �� �������� ���������, �� ������� ������ ��� �� ��������.
}})


_DOWNLOADS_BEGIN
_DOWNLOADS_ITEM(overhearer-exe.zip, executable for win32)
_DOWNLOADS_ITEM(overhearer-src.zip, source code for Builder C++ 5)
_DOWNLOADS_END

_TEXT({{
Executable is big because standard VCL library is staticaly compiled.
If you have Builder C++ 5 installed it is better to download and compile
from source for safe your internet traffic.
}})

_TEXT({{
Under Linux you can easily use 'sox' programm for it:
}})

<pre>
# your ~/.bashrc:
alias rec="sox -t ossdsp /dev/dsp ~/snd/date.gsm &amp;"
alias stoprec="killall sox"
</pre>

_TEXT({{
Do command 'rec' for start recording and 'stoprec' for stopping.
You can run this command in console or, the better, in applet in KPannel
or by Alt+F2 (in KDE).
}})


_LINKS_BEGIN

_LINKS_ITEM(http://virtualsoft.narod.ru,
  {{MiniRecorder- similar programm but executable is ~40 kb,
    works fine under WinXP and write data directly to mp3.}})

_LINKS_END

_FOOTER
