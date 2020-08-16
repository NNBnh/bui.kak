evaluate-commands %sh{
	orange=${kak_opt_bcolor_orange-'yellow'}
	main=${kak_opt_bcolor_main-'bright-blue'}
	cursor_primary=${kak_opt_bcolor_cursor_primary-$main}
	cursor_secondary=${kak_opt_bcolor_cursor_secondary-'white'}
	background_secondary=${kak_opt_background_secondary-'black'}
	whitespace=${kak_opt_bcolor_whitespace-'bright-black'}

	echo "
		# Code
		face global value              $orange+b
		face global type               bright-yellow
		face global variable           bright-red
		face global module             bright-green
		face global function           bright-blue
		face global string             bright-green
		face global keyword            bright-magenta+b
		face global operator           bright-blue
		face global attribute          $orange
		face global comment            bright-black+i
		face global documentation      comment
		face global meta               bright-yellow
		face global builtin            default+b

		# Markdown
		face global title              default+b
		face global header             bright-blue
		face global mono               bright-green
		face global block              $orange
		face global link               bright-cyan+u
		face global bullet             bright-red
		face global list               bright-red

		# Builtin
		face global Default            default,default
		face global PrimarySelection   black,bright-black+fg
		face global SecondarySelection PrimarySelection
		face global PrimaryCursor      black,$cursor_primary+fg
		face global SecondaryCursor    black,$cursor_secondary+fg
		face global PrimaryCursorEol   PrimaryCursor
		face global SecondaryCursorEol SecondaryCursor
		face global LineNumbers        bright-black,black
		face global LineNumberCursor   $cursor_primary,black
		face global LineNumbersWrapped black,black
		face global MenuForeground     black,$cursor_primary
		face global MenuBackground     bright-white,$background_secondary
		face global MenuInfo           bright-black
		face global Information        black,$main
		face global Error              black,red
		face global StatusLine         bright-white,black
		face global StatusLineMode     $main
		face global StatusLineInfo     $main
		face global StatusLineValue    $main
		face global StatusCursor       PrimaryCursor
		face global Prompt             black,$main
		face global MatchingChar       default,$background_secondary
		face global BufferPadding      black,black
		face global Whitespace         $whitespace+f
		face global WrapMarker         Whitespace
	"
}
