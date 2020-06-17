evaluate-commands %sh{
	bg_sec='rgb:303030'
	whitespace='rgb:444444'

	now='bright-yellow'
	is='bright-green'
	not='red'
	cursor="${now}"
	cursor_sec='white'

	echo "
		# Code highlighting
		face global value         bright-magenta
		face global type          bright-yellow
		face global variable      bright-blue
		face global module        green
		face global function      bright-white
		face global string        bright-green
		face global keyword       bright-red
		face global operator      bright-white
		face global attribute     yellow
		face global comment       bright-black+i
		face global documentation comment
		face global meta          cyan
		face global builtin       bright-white+b

		# Markdown highlighting
		face global title     bright-green+b
		face global header    yellow
		face global mono      white+b
		face global block     cyan
		face global link      bright-blue+u
		face global bullet    bright-yellow
		face global list      bright-white

		## builtin
		face global Default default,default
		face global PrimarySelection black,bright-black+fg
		face global SecondarySelection PrimarySelection
		face global PrimaryCursor black,${cursor}+fg
		face global SecondaryCursor black,${cursor_sec}+fg
		face global PrimaryCursorEol PrimaryCursor
		face global SecondaryCursorEol SecondaryCursor
		face global LineNumbers bright-black,black
		face global LineNumberCursor PrimaryCursor
		face global LineNumbersWrapped black,black+i
		face global MenuForeground black,${cursor}
		face global MenuBackground bright-white,${bg_sec}
		face global MenuInfo ${is}
		face global Information black,${now}
		face global Error black,${not}
		face global StatusLine bright-white,black
		face global StatusLineMode ${now}
		face global StatusLineInfo ${now}
		face global StatusLineValue ${is}
		face global StatusCursor PrimaryCursor
		face global Prompt black,${now}
		face global MatchingChar default,default+r
		face global BufferPadding bright-black
		face global Whitespace ${whitespace}+f
		face global WrapMarker Whitespace
	"
}
