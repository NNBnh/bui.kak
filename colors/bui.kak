#     ____  __  ______
#    / __ )/ / / /  _/
#   / __  / / / // /
#  / /_/ / /_/ // /
# /_____/\____/___/

# File:         bui.kak
# Description:  Kakoune colorscheme that SuperB
# Author:       NNB
#               └─ https://github.com/NNBnh
# URL:          https://github.com/NNBnh/bui.kak
# License:      GPLv3

#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.


evaluate-commands %sh{
	# Values
	i='0'

	while [ "$i" -le 22 ]; do
		case $i in
			'0')  element='base00'        ; check=${BUI_COLOR_BASE00:-black}                ;;
			'1')  element='base01'        ; check=${BUI_COLOR_BASE01:-black}                ;;
			'2')  element='base02'        ; check=${BUI_COLOR_BASE02:-black}                ;;
			'3')  element='base03'        ; check=${BUI_COLOR_BASE03:-bright-black}         ;;
			'4')  element='base04'        ; check=${BUI_COLOR_BASE04:-white}                ;;
			'5')  element='base05'        ; check=${BUI_COLOR_BASE05:-bright-white}         ;;
			'6')  element='base06'        ; check=${BUI_COLOR_BASE06:-bright-white}         ;;
			'7')  element='base07'        ; check=${BUI_COLOR_BASE07:-bright-white}         ;;
			'8')  element='base08'        ; check=${BUI_COLOR_BASE08:-red}                  ;;
			'9')  element='base09'        ; check=${BUI_COLOR_BASE09:-yellow}               ;;
			'10') element='base0A'        ; check=${BUI_COLOR_BASE0A:-yellow}               ;;
			'11') element='base0B'        ; check=${BUI_COLOR_BASE0B:-green}                ;;
			'12') element='base0C'        ; check=${BUI_COLOR_BASE0C:-cyan}                 ;;
			'13') element='base0D'        ; check=${BUI_COLOR_BASE0D:-blue}                 ;;
			'14') element='base0E'        ; check=${BUI_COLOR_BASE0E:-magenta}              ;;
			'15') element='base0F'        ; check=${BUI_COLOR_BASE0F:-red}                  ;;
			'16') element='foreground'    ; check=${BUI_COLOR_FOREGROUND:-default}          ;;
			'17') element='background'    ; check=${BUI_COLOR_BACKGROUND:-default}          ;;
			'18') element='foreground_alt'; check=${BUI_COLOR_FOREGROUND_ALT:-bright-black} ;;
			'19') element='background_alt'; check=${BUI_COLOR_BACKGROUND_ALT:-black}        ;;
			'20') element='cursor'        ; check=${BUI_COLOR_CURSOR:-bright-white}         ;;
			'21') element='cursor_alt'    ; check=${BUI_COLOR_CURSOR_ALT:-white}            ;;
			'22') element='selection'     ; check=${BUI_COLOR_SELECTION:-bright-black}      ;;
		esac

		case $check in
			"$BUI_COLOR_FOREGROUND")
				$element='default'
				${element}_compatible='bright-white'
			;;
			"$BUI_COLOR_BACKGROUND")
				$element='default'
				${element}_compatible='black'
			;;
			"$BUI_COLOR_COLOR0")     $element='black'           ;;
			"$BUI_COLOR_COLOR1")     $element='red'             ;;
			"$BUI_COLOR_COLOR2")     $element='green'           ;;
			"$BUI_COLOR_COLOR3")     $element='yellow'          ;;
			"$BUI_COLOR_COLOR4")     $element='blue'            ;;
			"$BUI_COLOR_COLOR5")     $element='magenta'         ;;
			"$BUI_COLOR_COLOR6")     $element='cyan'            ;;
			"$BUI_COLOR_COLOR7")     $element='white'           ;;
			"$BUI_COLOR_COLOR8")     $element='bright-black'    ;;
			"$BUI_COLOR_COLOR9")     $element='bright-red'      ;;
			"$BUI_COLOR_COLOR10")    $element='bright-green'    ;;
			"$BUI_COLOR_COLOR11")    $element='bright-yellow'   ;;
			"$BUI_COLOR_COLOR12")    $element='bright-blue'     ;;
			"$BUI_COLOR_COLOR13")    $element='bright-magenta'  ;;
			"$BUI_COLOR_COLOR14")    $element='bright-cyan'     ;;
			"$BUI_COLOR_COLOR15")    $element='bright-white'    ;;
			*)                       $element="rgb:${check#\#}" ;;
		esac

		i=$(( i + 1 ))
	done


	# Start
		# UI
		echo "
			# Normal
			face global Default             $foreground,$background
			face global PrimarySelection    $background_compatible,$selection+fg
			face global SecondarySelection  PrimarySelection
			face global PrimaryCursor       $background_compatible,$cursor+fg
			face global SecondaryCursor     $background_compatible,$cursor_alt+fg
			face global PrimaryCursorEol    PrimaryCursor
			face global SecondaryCursorEol  SecondaryCursor

			# Line number
			face global LineNumbers         $foreground_alt,$background_alt
			face global LineNumberCursor    $cursor,$background_alt
			face global LineNumbersWrapped  $background_alt,$background_alt

			# Status bar
			face global StatusLine          $foreground,$background_alt
			face global StatusLineInfo      $cursor
			face global StatusLineMode      StatusLineInfo
			face global StatusLineValue     StatusLineInfo
			face global MenuForeground      $cursor_primary_foreground,$cursor_primary
			face global MenuBackground      $foreground_primary,$ui_background
			face global MenuInfo            $background_secondary
			face global Information         $main_foreground,$main
			face global Prompt              Information
			face global StatusCursor        PrimaryCursor

			# Other
			face global Error               $base08,default+rfg
			face global MatchingChar        $foreground,$background_alt
			face global BufferPadding       $background_alt,$background_alt
			face global Whitespace          $background_alt+f
			face global WrapMarker          Whitespace
		"

		# Syntax
		echo "
			# Code
			face global value               $base09+b
			face global type                $base0A
			face global variable            $base08
			face global module              $base0B
			face global function            $base0D
			face global string              $base0B
			face global keyword             $base0E+b
			face global operator            $base0D
			face global attribute           $base09
			face global comment             $base03+i
			face global documentation       comment
			face global meta                $base0A
			face global builtin             $foreground+b

			# Markdown
			face global title               $foreground+b
			face global header              $base0D
			face global mono                $base0B
			face global block               $base09
			face global link                $base0C+u
			face global bullet              $base08
			face global list                $base08
		"
}
