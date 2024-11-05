# BSD 3-Clause License
#
# Copyright 2024 Piyush Kumar, Da Eun Shim, Azad Naeemi, or Georgia Institute of Technology
#
# Redistribution and use in source and binary forms, with or without 
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice, 
# this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice, 
# this list of conditions and the following disclaimer in the documentation 
# and/or other materials provided with the distribution.
#
# 3. Neither the name of the copyright holder nor the names of its contributors 
# may be used to endorse or promote products derived from this software without 
# specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” 
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, 
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE 
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES 
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; 
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND 
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS 
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


#DisplayResourceTcl
set display_object [db::getNext [dr::getDisplays -filter "%name == {display}"]]
if {$display_object == ""} {
	set display_object [dr::createDisplay display -maxColors 256 -maxStipples 256 -maxLineStyles 256 ]
}
set symDisplay_object [db::getNext [dr::getDisplays -filter "%name == {symDisplay}"]]
if {$symDisplay_object == ""} {
	set symDisplay_object [dr::createDisplay symDisplay -maxColors 256 -maxStipples 256 -maxLineStyles 256 ]
}
set psc_object [db::getNext [dr::getDisplays -filter "%name == {psc}"]]
if {$psc_object == ""} {
	set psc_object [dr::createDisplay psc -maxColors 0 -maxStipples 0 -maxLineStyles 0 ]
}
set psb_object [db::getNext [dr::getDisplays -filter "%name == {psb}"]]
if {$psb_object == ""} {
	set psb_object [dr::createDisplay psb -maxColors 0 -maxStipples 0 -maxLineStyles 0 ]
}
# Colors definition
dr::createColor yellow -display $display_object -red 255 -green 227 -blue 0
dr::createColor white -display $display_object -red 255 -green 255 -blue 255
dr::createColor black -display $display_object -red 0 -green 0 -blue 0
dr::createColor silver -display $display_object -red 217 -green 230 -blue 255
dr::createColor cream -display $display_object -red 255 -green 255 -blue 204
dr::createColor pink -display $display_object -red 255 -green 191 -blue 242
dr::createColor magenta -display $display_object -red 255 -green 0 -blue 255
dr::createColor darkMagenta -display $display_object -red 128 -green 0 -blue 128
dr::createColor salmon -display $display_object -red 250 -green 128 -blue 114
dr::createColor lime -display $display_object -red 0 -green 255 -blue 0
dr::createColor darkLime -display $display_object -red 0 -green 238 -blue 0
dr::createColor tan -display $display_object -red 255 -green 230 -blue 191
dr::createColor cyan -display $display_object -red 0 -green 255 -blue 255
dr::createColor cadetBlue -display $display_object -red 57 -green 191 -blue 255
dr::createColor orange -display $display_object -red 255 -green 128 -blue 0
dr::createColor webOrange -display $display_object -red 255 -green 165 -blue 0
dr::createColor red -display $display_object -red 255 -green 0 -blue 0
dr::createColor purple -display $display_object -red 153 -green 0 -blue 230
dr::createColor green -display $display_object -red 0 -green 204 -blue 102
dr::createColor brown -display $display_object -red 191 -green 64 -blue 38
dr::createColor blue -display $display_object -red 0 -green 0 -blue 255
dr::createColor slate -display $display_object -red 140 -green 140 -blue 166
dr::createColor gold -display $display_object -red 217 -green 204 -blue 0
dr::createColor maroon -display $display_object -red 230 -green 31 -blue 13
dr::createColor violet -display $display_object -red 94 -green 0 -blue 230
dr::createColor forest -display $display_object -red 38 -green 140 -blue 107
dr::createColor chocolate -display $display_object -red 128 -green 38 -blue 38
dr::createColor navy -display $display_object -red 51 -green 51 -blue 153
dr::createColor gray -display $display_object -red 204 -green 204 -blue 217
dr::createColor lightWhite -display $display_object -red 248 -green 248 -blue 248
dr::createColor lightYellow -display $display_object -red 255 -green 255 -blue 224
dr::createColor lightRed -display $display_object -red 240 -green 128 -blue 128
dr::createColor lightPurple -display $display_object -red 186 -green 85 -blue 211
dr::createColor lightGreen -display $display_object -red 144 -green 238 -blue 144
dr::createColor lightGray -display $display_object -red 211 -green 211 -blue 211
dr::createColor lightGold -display $display_object -red 238 -green 220 -blue 130
dr::createColor lightMaroon -display $display_object -red 238 -green 180 -blue 180
dr::createColor lightCyan -display $display_object -red 224 -green 255 -blue 255
dr::createColor lightBlue -display $display_object -red 173 -green 216 -blue 230
dr::createColor winColor1 -display $display_object -red 166 -green 166 -blue 166
dr::createColor winColor2 -display $display_object -red 115 -green 115 -blue 115
dr::createColor winColor3 -display $display_object -red 189 -green 204 -blue 204
dr::createColor winColor4 -display $display_object -red 204 -green 204 -blue 204
dr::createColor winColor5 -display $display_object -red 199 -green 199 -blue 199
dr::createColor blinkRed -display $display_object -red 255 -green 0 -blue 0 -blink true
dr::createColor blinkYellow -display $display_object -red 255 -green 255 -blue 0 -blink true
dr::createColor blinkWhite -display $display_object -red 255 -green 255 -blue 255 -blink true
dr::createColor TrueColorBright -display $display_object -red 166 -green 176 -blue 186
dr::createColor TrueColorGhost -display $display_object -red 160 -green 200 -blue 240
dr::createColor plotcolor0 -display $display_object -red 255 -green 0 -blue 0
dr::createColor plotcolor1 -display $display_object -red 204 -green 0 -blue 255
dr::createColor plotcolor2 -display $display_object -red 0 -green 255 -blue 102
dr::createColor plotcolor3 -display $display_object -red 204 -green 255 -blue 0
dr::createColor plotcolor4 -display $display_object -red 0 -green 102 -blue 255
dr::createColor plotcolor5 -display $display_object -red 255 -green 153 -blue 0
dr::createColor plotcolor6 -display $display_object -red 255 -green 0 -blue 153
dr::createColor plotcolor7 -display $display_object -red 0 -green 255 -blue 255
dr::createColor plotcolor8 -display $display_object -red 51 -green 255 -blue 0
dr::createColor plotcolor9 -display $display_object -red 51 -green 0 -blue 255
dr::createColor plotcolor10 -display $display_object -red 255 -green 153 -blue 153
dr::createColor plotcolor11 -display $display_object -red 235 -green 153 -blue 255
dr::createColor plotcolor12 -display $display_object -red 153 -green 255 -blue 194
dr::createColor plotcolor13 -display $display_object -red 235 -green 255 -blue 153
dr::createColor plotcolor14 -display $display_object -red 153 -green 194 -blue 255
dr::createColor plotcolor15 -display $display_object -red 255 -green 214 -blue 153
dr::createColor plotcolor16 -display $display_object -red 255 -green 153 -blue 214
dr::createColor plotcolor17 -display $display_object -red 153 -green 255 -blue 255
dr::createColor plotcolor18 -display $display_object -red 173 -green 255 -blue 153
dr::createColor plotcolor19 -display $display_object -red 173 -green 153 -blue 255
dr::createColor plotpacketrefcolor -display $display_object -red 255 -green 217 -blue 78
dr::createColor ICC2_color0 -display $display_object -red 0 -green 0 -blue 0
dr::createColor ICC2_color1 -display $display_object -red 70 -green 70 -blue 70
dr::createColor ICC2_color2 -display $display_object -red 0 -green 255 -blue 100
dr::createColor ICC2_color3 -display $display_object -red 120 -green 190 -blue 200
dr::createColor ICC2_color4 -display $display_object -red 255 -green 0 -blue 255
dr::createColor ICC2_color5 -display $display_object -red 0 -green 175 -blue 150
dr::createColor ICC2_color6 -display $display_object -red 0 -green 0 -blue 190
dr::createColor ICC2_color7 -display $display_object -red 0 -green 255 -blue 255
dr::createColor ICC2_color8 -display $display_object -red 177 -green 244 -blue 118
dr::createColor ICC2_color9 -display $display_object -red 180 -green 175 -blue 100
dr::createColor ICC2_color10 -display $display_object -red 150 -green 150 -blue 150
dr::createColor ICC2_color11 -display $display_object -red 0 -green 80 -blue 0
dr::createColor ICC2_color12 -display $display_object -red 90 -green 0 -blue 100
dr::createColor ICC2_color13 -display $display_object -red 90 -green 255 -blue 190
dr::createColor ICC2_color14 -display $display_object -red 212 -green 80 -blue 0
dr::createColor ICC2_color15 -display $display_object -red 255 -green 127 -blue 0
dr::createColor ICC2_color16 -display $display_object -red 0 -green 80 -blue 190
dr::createColor ICC2_color17 -display $display_object -red 90 -green 0 -blue 255
dr::createColor ICC2_color18 -display $display_object -red 180 -green 0 -blue 0
dr::createColor ICC2_color19 -display $display_object -red 200 -green 200 -blue 200
dr::createColor ICC2_color20 -display $display_object -red 255 -green 149 -blue 169
dr::createColor ICC2_color21 -display $display_object -red 90 -green 175 -blue 100
dr::createColor ICC2_color22 -display $display_object -red 90 -green 80 -blue 100
dr::createColor ICC2_color23 -display $display_object -red 145 -green 66 -blue 252
dr::createColor ICC2_color24 -display $display_object -red 180 -green 255 -blue 255
dr::createColor ICC2_color25 -display $display_object -red 255 -green 253 -blue 123
dr::createColor ICC2_color26 -display $display_object -red 0 -green 175 -blue 190
dr::createColor ICC2_color27 -display $display_object -red 90 -green 80 -blue 255
dr::createColor ICC2_color28 -display $display_object -red 180 -green 80 -blue 0
dr::createColor ICC2_color29 -display $display_object -red 255 -green 0 -blue 100
dr::createColor ICC2_color30 -display $display_object -red 255 -green 255 -blue 190
dr::createColor ICC2_color31 -display $display_object -red 29 -green 192 -blue 12
dr::createColor ICC2_color32 -display $display_object -red 235 -green 250 -blue 170
dr::createColor ICC2_color33 -display $display_object -red 219 -green 112 -blue 147
dr::createColor ICC2_color34 -display $display_object -red 190 -green 140 -blue 60
dr::createColor ICC2_color35 -display $display_object -red 0 -green 0 -blue 100
dr::createColor ICC2_color36 -display $display_object -red 0 -green 255 -blue 190
dr::createColor ICC2_color37 -display $display_object -red 90 -green 175 -blue 255
dr::createColor ICC2_color38 -display $display_object -red 180 -green 175 -blue 0
dr::createColor ICC2_color39 -display $display_object -red 255 -green 190 -blue 175
dr::createColor ICC2_color40 -display $display_object -red 0 -green 125 -blue 212
dr::createColor ICC2_color41 -display $display_object -red 90 -green 0 -blue 0
dr::createColor ICC2_color42 -display $display_object -red 90 -green 255 -blue 100
dr::createColor ICC2_color43 -display $display_object -red 180 -green 175 -blue 190
dr::createColor ICC2_color44 -display $display_object -red 213 -green 141 -blue 251
dr::createColor ICC2_color45 -display $display_object -red 0 -green 80 -blue 100
dr::createColor ICC2_color46 -display $display_object -red 90 -green 0 -blue 190
dr::createColor ICC2_color47 -display $display_object -red 90 -green 255 -blue 255
dr::createColor ICC2_color48 -display $display_object -red 180 -green 255 -blue 0
dr::createColor ICC2_color49 -display $display_object -red 150 -green 200 -blue 150
dr::createColor ICC2_color50 -display $display_object -red 0 -green 80 -blue 255
dr::createColor ICC2_color51 -display $display_object -red 90 -green 80 -blue 0
dr::createColor ICC2_color52 -display $display_object -red 180 -green 0 -blue 100
dr::createColor ICC2_color53 -display $display_object -red 180 -green 255 -blue 190
dr::createColor ICC2_color54 -display $display_object -red 255 -green 175 -blue 255
dr::createColor ICC2_color55 -display $display_object -red 0 -green 175 -blue 100
dr::createColor ICC2_color56 -display $display_object -red 90 -green 80 -blue 190
dr::createColor ICC2_color57 -display $display_object -red 255 -green 228 -blue 225
dr::createColor ICC2_color58 -display $display_object -red 245 -green 9 -blue 9
dr::createColor ICC2_color59 -display $display_object -red 255 -green 255 -blue 100
dr::createColor ICC2_color60 -display $display_object -red 0 -green 175 -blue 255
dr::createColor ICC2_color61 -display $display_object -red 140 -green 175 -blue 0
dr::createColor ICC2_color62 -display $display_object -red 180 -green 80 -blue 100
dr::createColor ICC2_color63 -display $display_object -red 255 -green 188 -blue 109
dr::createColor ICC2_color64 -display $display_object -red 139 -green 218 -blue 255
dr::createColor density0 -display $display_object -red 0 -green 0 -blue 255
dr::createColor density2 -display $display_object -red 0 -green 10 -blue 255
dr::createColor density4 -display $display_object -red 0 -green 20 -blue 255
dr::createColor density6 -display $display_object -red 0 -green 30 -blue 255
dr::createColor density8 -display $display_object -red 0 -green 40 -blue 255
dr::createColor density10 -display $display_object -red 0 -green 60 -blue 255
dr::createColor density12 -display $display_object -red 0 -green 70 -blue 255
dr::createColor density14 -display $display_object -red 0 -green 80 -blue 255
dr::createColor density16 -display $display_object -red 0 -green 90 -blue 255
dr::createColor density18 -display $display_object -red 0 -green 100 -blue 255
dr::createColor density20 -display $display_object -red 0 -green 110 -blue 255
dr::createColor density22 -display $display_object -red 0 -green 120 -blue 255
dr::createColor density24 -display $display_object -red 0 -green 128 -blue 255
dr::createColor density26 -display $display_object -red 10 -green 140 -blue 250
dr::createColor density28 -display $display_object -red 20 -green 150 -blue 240
dr::createColor density30 -display $display_object -red 30 -green 160 -blue 230
dr::createColor density32 -display $display_object -red 40 -green 170 -blue 220
dr::createColor density34 -display $display_object -red 50 -green 180 -blue 210
dr::createColor density36 -display $display_object -red 60 -green 190 -blue 200
dr::createColor density38 -display $display_object -red 70 -green 200 -blue 190
dr::createColor density40 -display $display_object -red 80 -green 210 -blue 180
dr::createColor density42 -display $display_object -red 90 -green 220 -blue 170
dr::createColor density44 -display $display_object -red 100 -green 230 -blue 160
dr::createColor density46 -display $display_object -red 110 -green 240 -blue 150
dr::createColor density48 -display $display_object -red 120 -green 250 -blue 140
dr::createColor density50 -display $display_object -red 128 -green 255 -blue 128
dr::createColor density52 -display $display_object -red 140 -green 250 -blue 120
dr::createColor density54 -display $display_object -red 150 -green 240 -blue 110
dr::createColor density56 -display $display_object -red 160 -green 230 -blue 100
dr::createColor density58 -display $display_object -red 170 -green 220 -blue 90
dr::createColor density60 -display $display_object -red 180 -green 210 -blue 80
dr::createColor density62 -display $display_object -red 190 -green 200 -blue 70
dr::createColor density64 -display $display_object -red 200 -green 190 -blue 60
dr::createColor density66 -display $display_object -red 210 -green 180 -blue 50
dr::createColor density68 -display $display_object -red 220 -green 170 -blue 40
dr::createColor density70 -display $display_object -red 230 -green 160 -blue 30
dr::createColor density72 -display $display_object -red 240 -green 150 -blue 20
dr::createColor density74 -display $display_object -red 250 -green 140 -blue 10
dr::createColor density76 -display $display_object -red 255 -green 130 -blue 0
dr::createColor density78 -display $display_object -red 255 -green 128 -blue 0
dr::createColor density80 -display $display_object -red 255 -green 110 -blue 0
dr::createColor density82 -display $display_object -red 255 -green 100 -blue 0
dr::createColor density84 -display $display_object -red 255 -green 90 -blue 0
dr::createColor density86 -display $display_object -red 255 -green 80 -blue 0
dr::createColor density88 -display $display_object -red 255 -green 70 -blue 0
dr::createColor density90 -display $display_object -red 255 -green 60 -blue 0
dr::createColor density92 -display $display_object -red 255 -green 50 -blue 0
dr::createColor density94 -display $display_object -red 255 -green 40 -blue 0
dr::createColor density96 -display $display_object -red 255 -green 30 -blue 0
dr::createColor density98 -display $display_object -red 255 -green 20 -blue 0
dr::createColor density100 -display $display_object -red 255 -green 0 -blue 0
dr::createColor SR_lightWhite -display $display_object -red 170 -green 170 -blue 170
dr::createColor SR_orange -display $display_object -red 255 -green 128 -blue 0
dr::createColor SR_white -display $display_object -red 255 -green 255 -blue 255
dr::createColor emegreen -display $display_object -red 0 -green 201 -blue 87
dr::createColor indigo -display $display_object -red 75 -green 0 -blue 130
dr::createColor leather -display $display_object -red 192 -green 128 -blue 64
dr::createColor lightpink -display $display_object -red 255 -green 196 -blue 209
dr::createColor teal -display $display_object -red 0 -green 128 -blue 128
dr::createColor volorange -display $display_object -red 255 -green 164 -blue 0
dr::createColor winBack -display $display_object -red 224 -green 224 -blue 224
dr::createColor winFore -display $display_object -red 128 -green 0 -blue 0
dr::createColor winText -display $display_object -red 51 -green 51 -blue 51
# Stipples definition
dr::createStipple blank -display $display_object -pattern [ list \
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple solid -display $display_object -pattern [ list \
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple dots -display $display_object -pattern [ list \
                                                              { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple dots1 -display $display_object -pattern [ list \
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  } ]
dr::createStipple hLine -display $display_object -pattern [ list \
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple vLine -display $display_object -pattern [ list \
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  } ]
dr::createStipple cross -display $display_object -pattern [ list \
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  } ]
dr::createStipple grid -display $display_object -pattern [ list \
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                              { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple slash -display $display_object -pattern [ list \
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  } ]
dr::createStipple backSlash -display $display_object -pattern [ list \
                                                                   { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                   { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                   { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                   { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                   { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                   { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                   { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                   { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                   { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                   { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                   { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                   { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                   { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                   { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                   { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                   { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  } ]
dr::createStipple hZigZag -display $display_object -pattern [ list \
                                                                 { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                                 { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                 { 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0  }\
                                                                 { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                 { 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1  }\
                                                                 { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                                 { 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                                 { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                                 { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                                 { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                                 { 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1  }\
                                                                 { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                                 { 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0  }\
                                                                 { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                                 { 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0  }\
                                                                 { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  } ]
dr::createStipple vZigZag -display $display_object -pattern [ list \
                                                                 { 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0  }\
                                                                 { 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                                 { 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0  }\
                                                                 { 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0  }\
                                                                 { 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0  }\
                                                                 { 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                                 { 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0  }\
                                                                 { 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1  }\
                                                                 { 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0  }\
                                                                 { 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                                 { 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0  }\
                                                                 { 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0  }\
                                                                 { 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0  }\
                                                                 { 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                                 { 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0  }\
                                                                 { 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1  } ]
dr::createStipple hCurb -display $display_object -pattern [ list \
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple vCurb -display $display_object -pattern [ list \
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  } ]
dr::createStipple brick -display $display_object -pattern [ list \
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  } ]
dr::createStipple dagger -display $display_object -pattern [ list \
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                { 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0  }\
                                                                { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                                { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  } ]
dr::createStipple triangle -display $display_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0  }\
                                                                  { 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                                  { 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple x -display $display_object -pattern [ list \
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  } ]
dr::createStipple dots25 -display $display_object -pattern [ list \
                                                                { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple density1 -display $display_object -pattern [ list \
                                                                  { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                                  { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                                  { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                                  { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                  { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                                  { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                  { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                                  { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                                  { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                                  { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                  { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                                  { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                  { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                                  { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                                  { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                                  { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                  { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                                  { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                  { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                                  { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                                  { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                                  { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                  { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                                  { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  } ]
dr::createStipple density2 -display $display_object -pattern [ list \
                                                                  { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                                  { 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                                  { 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0  }\
                                                                  { 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0  }\
                                                                  { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                                  { 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0  }\
                                                                  { 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1  }\
                                                                  { 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1  }\
                                                                  { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                                  { 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                                  { 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0  }\
                                                                  { 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0  }\
                                                                  { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                                  { 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0  }\
                                                                  { 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1  }\
                                                                  { 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1  }\
                                                                  { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                                  { 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                                  { 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0  }\
                                                                  { 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0  }\
                                                                  { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                                  { 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0  }\
                                                                  { 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1  }\
                                                                  { 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1  }\
                                                                  { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                                  { 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                                  { 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0  }\
                                                                  { 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0  }\
                                                                  { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                                  { 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0  }\
                                                                  { 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1  }\
                                                                  { 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1  } ]
dr::createStipple density3 -display $display_object -pattern [ list \
                                                                  { 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0  }\
                                                                  { 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0  }\
                                                                  { 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0  }\
                                                                  { 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0  }\
                                                                  { 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0  }\
                                                                  { 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1  }\
                                                                  { 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1  }\
                                                                  { 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1  }\
                                                                  { 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0  }\
                                                                  { 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0  }\
                                                                  { 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0  }\
                                                                  { 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0  }\
                                                                  { 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0  }\
                                                                  { 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1  }\
                                                                  { 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1  }\
                                                                  { 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1  }\
                                                                  { 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0  }\
                                                                  { 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0  }\
                                                                  { 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0  }\
                                                                  { 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0  }\
                                                                  { 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0  }\
                                                                  { 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1  }\
                                                                  { 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1  }\
                                                                  { 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1  }\
                                                                  { 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0  }\
                                                                  { 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0  }\
                                                                  { 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0  }\
                                                                  { 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0  }\
                                                                  { 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0  }\
                                                                  { 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1  }\
                                                                  { 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1  }\
                                                                  { 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1  } ]
dr::createStipple density4 -display $display_object -pattern [ list \
                                                                  { 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0  }\
                                                                  { 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0  }\
                                                                  { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                                  { 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0  }\
                                                                  { 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1  }\
                                                                  { 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1  }\
                                                                  { 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1  }\
                                                                  { 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1  }\
                                                                  { 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0  }\
                                                                  { 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0  }\
                                                                  { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                                  { 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0  }\
                                                                  { 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1  }\
                                                                  { 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1  }\
                                                                  { 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1  }\
                                                                  { 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1  }\
                                                                  { 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0  }\
                                                                  { 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0  }\
                                                                  { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                                  { 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0  }\
                                                                  { 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1  }\
                                                                  { 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1  }\
                                                                  { 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1  }\
                                                                  { 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1  }\
                                                                  { 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0  }\
                                                                  { 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0  }\
                                                                  { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                                  { 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0  }\
                                                                  { 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1  }\
                                                                  { 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1  }\
                                                                  { 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1  }\
                                                                  { 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1  } ]
dr::createStipple density5 -display $display_object -pattern [ list \
                                                                  { 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0  }\
                                                                  { 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0  }\
                                                                  { 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0  }\
                                                                  { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                                  { 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1  }\
                                                                  { 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1  }\
                                                                  { 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1  }\
                                                                  { 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1  }\
                                                                  { 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0  }\
                                                                  { 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0  }\
                                                                  { 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0  }\
                                                                  { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                                  { 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1  }\
                                                                  { 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1  }\
                                                                  { 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1  }\
                                                                  { 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1  }\
                                                                  { 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0  }\
                                                                  { 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0  }\
                                                                  { 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0  }\
                                                                  { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                                  { 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1  }\
                                                                  { 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1  }\
                                                                  { 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1  }\
                                                                  { 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1  }\
                                                                  { 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0  }\
                                                                  { 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0  }\
                                                                  { 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0  }\
                                                                  { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                                  { 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1  }\
                                                                  { 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1  }\
                                                                  { 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1  }\
                                                                  { 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1  } ]
dr::createStipple density6 -display $display_object -pattern [ list \
                                                                  { 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0  }\
                                                                  { 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0  }\
                                                                  { 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1  }\
                                                                  { 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1  }\
                                                                  { 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1  }\
                                                                  { 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1  }\
                                                                  { 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1  }\
                                                                  { 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1  }\
                                                                  { 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0  }\
                                                                  { 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0  }\
                                                                  { 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1  }\
                                                                  { 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1  }\
                                                                  { 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1  }\
                                                                  { 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1  }\
                                                                  { 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1  }\
                                                                  { 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1  }\
                                                                  { 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0  }\
                                                                  { 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0  }\
                                                                  { 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1  }\
                                                                  { 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1  }\
                                                                  { 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1  }\
                                                                  { 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1  }\
                                                                  { 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1  }\
                                                                  { 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1  }\
                                                                  { 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0  }\
                                                                  { 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0  }\
                                                                  { 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1  }\
                                                                  { 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1  }\
                                                                  { 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1  }\
                                                                  { 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1  }\
                                                                  { 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1  }\
                                                                  { 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1  } ]
dr::createStipple density7 -display $display_object -pattern [ list \
                                                                  { 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0  }\
                                                                  { 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1  }\
                                                                  { 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1  }\
                                                                  { 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1  }\
                                                                  { 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1  }\
                                                                  { 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1  }\
                                                                  { 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1  }\
                                                                  { 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1  }\
                                                                  { 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0  }\
                                                                  { 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1  }\
                                                                  { 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1  }\
                                                                  { 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1  }\
                                                                  { 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1  }\
                                                                  { 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1  }\
                                                                  { 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1  }\
                                                                  { 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1  }\
                                                                  { 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0  }\
                                                                  { 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1  }\
                                                                  { 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1  }\
                                                                  { 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1  }\
                                                                  { 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1  }\
                                                                  { 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1  }\
                                                                  { 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1  }\
                                                                  { 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1  }\
                                                                  { 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0  }\
                                                                  { 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1  }\
                                                                  { 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1  }\
                                                                  { 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1  }\
                                                                  { 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1  }\
                                                                  { 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1  }\
                                                                  { 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1  }\
                                                                  { 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1  } ]
dr::createStipple density8 -display $display_object -pattern [ list \
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple density9 -display $display_object -pattern [ list \
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple density10 -display $display_object -pattern [ list \
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                   { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple dots25TextClump -display $display_object -pattern [ list \
                                                                         { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                         { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                         { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                         { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                         { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                         { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                         { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                         { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                         { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                         { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                         { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                         { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                         { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                         { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                         { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                         { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  } ]
dr::createStipple SR_cross -display $display_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple hLine2 -display $display_object -pattern [ list \
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple vLine2 -display $display_object -pattern [ list \
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                { 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  } ]
dr::createStipple miniHatch -display $display_object -pattern [ list \
                                                                   { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                   { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                                   { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                   { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                   { 1 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0  }\
                                                                   { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                                   { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                   { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                   { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                   { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                                   { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                   { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                   { 1 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0  }\
                                                                   { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                                   { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                   { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple halfslash -display $display_object -pattern [ list \
                                                                   { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                                   { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                   { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                                   { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                                   { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                   { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                                   { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                   { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                                   { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                                   { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                   { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                                   { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                                   { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                                   { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                                   { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                   { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  } ]
dr::createStipple rvZigZag -display $display_object -pattern [ list \
                                                                  { 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1  }\
                                                                  { 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1  }\
                                                                  { 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0  }\
                                                                  { 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0  }\
                                                                  { 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0  }\
                                                                  { 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0  }\
                                                                  { 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                                  { 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0  }\
                                                                  { 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1  }\
                                                                  { 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1  }\
                                                                  { 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0  }\
                                                                  { 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0  }\
                                                                  { 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0  }\
                                                                  { 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0  }\
                                                                  { 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                                  { 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0  } ]
dr::createStipple dot1 -display $display_object -pattern [ list \
                                                              { 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple dot2 -display $display_object -pattern [ list \
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple dot3 -display $display_object -pattern [ list \
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple dot4 -display $display_object -pattern [ list \
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple checker -display $display_object -pattern [ list \
                                                                 { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                                 { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                                 { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                                 { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                                 { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                                 { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                                 { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                                 { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  }\
                                                                 { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  }\
                                                                 { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  }\
                                                                 { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  }\
                                                                 { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  }\
                                                                 { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  }\
                                                                 { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  }\
                                                                 { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  } ]
dr::createStipple viap -display $display_object -pattern [ list \
                                                              { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1  } ]
dr::createStipple metal1S -display $display_object -pattern [ list \
                                                                 { 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1  } ]
dr::createStipple metal2S -display $display_object -pattern [ list \
                                                                 { 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                                 { 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1  } ]
dr::createStipple gnd2S -display $display_object -pattern [ list \
                                                               { 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1  }\
                                                               { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                               { 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0  }\
                                                               { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1  }\
                                                               { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                               { 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0  }\
                                                               { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  } ]
dr::createStipple vcc2S -display $display_object -pattern [ list \
                                                               { 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0  }\
                                                               { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1  }\
                                                               { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                               { 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0  }\
                                                               { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1  }\
                                                               { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                               { 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  } ]
dr::createStipple vcc1S -display $display_object -pattern [ list \
                                                               { 1 0 0 1 1 0 0 0 1 0 0 1 1 0 0 0  }\
                                                               { 0 1 0 0 1 0 0 0 0 1 0 0 1 0 0 0  }\
                                                               { 0 0 1 0 0 1 1 0 0 0 1 0 0 1 1 0  }\
                                                               { 0 0 0 1 0 0 1 0 0 0 0 1 0 0 1 0  }\
                                                               { 1 0 0 0 1 0 0 1 1 0 0 0 1 0 0 1  }\
                                                               { 1 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0  }\
                                                               { 0 1 1 0 0 0 1 0 0 1 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 0 1 0 0 1 0 0 0 0 1  }\
                                                               { 1 0 0 1 1 0 0 0 1 0 0 1 1 0 0 0  }\
                                                               { 0 1 0 0 1 0 0 0 0 1 0 0 1 0 0 0  }\
                                                               { 0 0 1 0 0 1 1 0 0 0 1 0 0 1 1 0  }\
                                                               { 0 0 0 1 0 0 1 0 0 0 0 1 0 0 1 0  }\
                                                               { 1 0 0 0 1 0 0 1 1 0 0 0 1 0 0 1  }\
                                                               { 1 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0  }\
                                                               { 0 1 1 0 0 0 1 0 0 1 1 0 0 0 1 0  }\
                                                               { 0 0 1 0 0 0 0 1 0 0 1 0 0 0 0 1  } ]
dr::createStipple poly2p -display $display_object -pattern [ list \
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 1 1 1 0 0 0 0 0 1 1 0 0 0 0  }\
                                                                { 0 0 1 0 0 1 0 0 0 1 0 0 1 0 0 0  }\
                                                                { 0 0 1 0 0 1 0 0 0 0 0 0 1 0 0 0  }\
                                                                { 0 0 1 1 1 0 0 0 0 0 0 1 0 0 0 0  }\
                                                                { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                { 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                                { 0 0 1 0 0 0 0 0 0 1 1 1 1 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple contp -display $display_object -pattern [ list \
                                                               { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                               { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                               { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                               { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                               { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple pplusp -display $display_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple wellp -display $display_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple checker1 -display $display_object -pattern [ list \
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  } ]
dr::createStipple checker2 -display $display_object -pattern [ list \
                                                                  { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                                  { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                                  { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                                  { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                                  { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                                  { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                                  { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                                  { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                                  { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                                  { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                                  { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                                  { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                                  { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                                  { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                                  { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                                  { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  } ]
dr::createStipple invCross -display $display_object -pattern [ list \
                                                                  { 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                  { 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                  { 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                  { 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                  { 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                  { 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                  { 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                                  { 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1  }\
                                                                  { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  } ]
dr::createStipple wellBp -display $display_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 0 0 0 1 1 1 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 1 1 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 1 1 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 1 0 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 1 1 1 0 0 1 1 0 1 1 0 0 1 1 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 1 1 0 0 1 1 0 1 1 0 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 1 1 0 0 1 1 0 1 1 0 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 1 1 0 0 1 1 0 1 1 0 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 1 1 0 0 1 0 0 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple wellvtl -display $display_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple wellvth -display $display_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple thickox -display $display_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple cwellBp -display $display_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple capID -display $display_object -pattern [ list \
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0  }\
                                                               { 0 0 0 0 1 0 0 1 1 0 0 1 0 0 0 0  }\
                                                               { 0 0 0 1 0 0 0 1 1 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple resID -display $display_object -pattern [ list \
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 1 1 0 1 0 0 1 1 1 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple diodeID -display $display_object -pattern [ list \
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 1 1 0 0 0 1 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 1 0 1 0 0 1 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 1 0 0 1 0 1 0 0 0 0  }\
                                                                 { 0 0 0 1 1 1 1 0 0 0 1 1 1 1 0 0  }\
                                                                 { 0 0 0 0 0 0 1 0 0 1 0 1 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 1 0 1 0 0 1 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 1 1 0 0 0 1 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
# LineStyles definition
dr::createLineStyle solid -display $display_object -width 1 -pattern [ list 1 1 1 ]
dr::createLineStyle dashed -display $display_object -width 1 -pattern [ list 1 1 1 1 0 0 ]
dr::createLineStyle dots -display $display_object -width 1 -pattern [ list 1 0 0 ]
dr::createLineStyle dashDot -display $display_object -width 1 -pattern [ list 1 1 1 0 0 1 0 0 ]
dr::createLineStyle shortDash -display $display_object -width 1 -pattern [ list 1 1 0 0 ]
dr::createLineStyle doubleDash -display $display_object -width 1 -pattern [ list 1 1 1 1 0 0 1 1 0 0 ]
dr::createLineStyle longDash -display $display_object -width 1 -pattern [ list 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 ]
dr::createLineStyle hidden -display $display_object -width 1 -pattern [ list 1 0 0 0 ]
dr::createLineStyle hidden1 -display $display_object -width 1 -pattern [ list 1 0 0 0 0 0 0 0 ]
dr::createLineStyle mediumLine -display $display_object -width 2 -pattern [ list 1 1 1 ]
dr::createLineStyle mediumDashed -display $display_object -width 2 -pattern [ list 1 1 1 1 0 0 ]
dr::createLineStyle mediumDoubleDash -display $display_object -width 2 -pattern [ list 1 1 1 1 0 0 1 1 0 0 ]
dr::createLineStyle thickLine -display $display_object -width 3 -pattern [ list 1 1 1 ]
dr::createLineStyle thickDashed -display $display_object -width 3 -pattern [ list 1 1 1 1 0 0 ]
dr::createLineStyle thickDotted -display $display_object -width 3 -pattern [ list 1 1 1 0 0 0 ]
dr::createLineStyle alignLine -display $display_object -width 3 -pattern [ list 1 1 1 ]
dr::createLineStyle SRthickLine2 -display $display_object -width 2 -pattern [ list 1 1 1 ]
dr::createLineStyle SRthickLine3 -display $display_object -width 3 -pattern [ list 1 1 1 ]
dr::createLineStyle mLine -display $display_object -width 2 -pattern [ list 1 1 1 ]
# Packets definition
dr::createPacket measurePathFirstObject -display $display_object -stipple blank \
                                  -lineStyle thickLine -fill green -outline green -fillStyle outline
dr::createPacket measurePathSecondObject -display $display_object -stipple blank \
                                       -lineStyle thickLine -fill red -outline red -fillStyle outline
dr::createPacket measurePathShortestPath -display $display_object -stipple blank \
                                 -lineStyle thickDashed -fill white -outline white -fillStyle outline
dr::createPacket measurePathCenterline -display $display_object -stipple blank \
                             -lineStyle thickLine -fill magenta -outline magenta -fillStyle outline
dr::createPacket alignModeTarget -display $display_object -stipple blank \
                           -lineStyle alignLine -fill white -outline white
dr::createPacket alignModeRef -display $display_object -stipple blank \
                          -lineStyle alignLine -fill lime -outline lime
dr::createPacket alignModeInstMember -display $display_object -stipple blank \
                     -lineStyle alignLine -fill plotcolor4 -outline plotcolor4
dr::createPacket alignEdge -display $display_object -stipple blank \
                       -lineStyle alignLine -fill pink -outline pink
dr::createPacket angleAuxLine -display $display_object -stipple blank \
-lineStyle mediumDoubleDash -fill plotpacketrefcolor -outline plotpacketrefcolor
dr::createPacket angleEdge -display $display_object -stipple blank \
    -lineStyle mediumDoubleDash -fill plotcolor2 -outline plotcolor2
dr::createPacket distributeTrapzoid -display $display_object -stipple blank \
                               -lineStyle longDash -fill white -outline white
dr::createPacket angleArc -display $display_object -stipple blank \
             -lineStyle mediumDoubleDash -fill white -outline white
dr::createPacket tapHighlight -display $display_object -stipple blank \
                          -lineStyle alignLine -fill lime -outline lime
dr::createPacket defaultTermName -display $display_object -stipple inherited \
                       -lineStyle inherited -fill inherited -outline inherited
dr::createPacket background -display $display_object -stipple blank \
                          -lineStyle solid -fill black -outline black
dr::createPacket grid -display $display_object -stipple blank \
                    -lineStyle solid -fill slate -outline slate
dr::createPacket grid1 -display $display_object -stipple blank \
                     -lineStyle solid -fill white -outline white
dr::createPacket axis -display $display_object -stipple blank \
                    -lineStyle solid -fill white -outline white
dr::createPacket defaultInstance -display $display_object -stipple blank \
                                   -lineStyle solid -fill red -outline red
dr::createPacket instanceLbl -display $display_object -stipple blank \
                             -lineStyle solid -fill gold -outline gold
dr::createPacket prBoundary -display $display_object -stipple blank \
                        -lineStyle solid -fill purple -outline purple
dr::createPacket prBoundaryBnd -display $display_object -stipple blank \
                               -lineStyle solid -fill cyan -outline cyan
dr::createPacket prBoundaryLbl -display $display_object -stipple blank \
                           -lineStyle solid -fill purple -outline purple
dr::createPacket row -display $display_object -stipple blank \
           -lineStyle solid -fill webOrange -outline webOrange
dr::createPacket rowSite -display $display_object -stipple blank \
               -lineStyle solid -fill webOrange -outline webOrange
dr::createPacket areaBoundaryPrefDir -display $display_object -stipple blank \
                     -lineStyle thickDashed -fill webOrange -outline webOrange
dr::createPacket track -display $display_object -stipple blank \
               -lineStyle mediumLine -fill white -outline salmon
dr::createPacket trackPatternDefaultPrefDir -display $display_object -stipple inherited \
                                       -lineStyle dots -fill inherited -outline inherited
dr::createPacket trackPatternDefaultNonPrefDir -display $display_object -stipple inherited \
                                       -lineStyle hidden1 -fill inherited -outline inherited
dr::createPacket trackPatternReservedPrefDir -display $display_object -stipple inherited \
                                -lineStyle mediumDashed -fill inherited -outline inherited
dr::createPacket trackPatternReservedNonPrefDir -display $display_object -stipple inherited \
                                      -lineStyle shortDash -fill inherited -outline inherited
dr::createPacket trackPatternNonReservedPrefDir -display $display_object -stipple inherited \
                                      -lineStyle thickLine -fill inherited -outline inherited
dr::createPacket trackPatternNonReservedNonPrefDir -display $display_object -stipple inherited \
                                             -lineStyle solid -fill inherited -outline inherited
dr::createPacket color1 -display $display_object -stipple inherited \
                    -lineStyle inherited -fill inherited -outline red
dr::createPacket color2 -display $display_object -stipple inherited \
                   -lineStyle inherited -fill inherited -outline blue
dr::createPacket color3 -display $display_object -stipple inherited \
                  -lineStyle inherited -fill inherited -outline green
dr::createPacket color4 -display $display_object -stipple inherited \
                 -lineStyle inherited -fill inherited -outline yellow
dr::createPacket color5 -display $display_object -stipple inherited \
                  -lineStyle inherited -fill inherited -outline white
dr::createPacket color6 -display $display_object -stipple inherited \
                 -lineStyle inherited -fill inherited -outline silver
dr::createPacket colorSame -display $display_object -stipple inherited \
                    -lineStyle inherited -fill inherited -outline orange
dr::createPacket color1Locked -display $display_object -stipple inherited \
                          -lineStyle thickLine -fill inherited -outline red
dr::createPacket color2Locked -display $display_object -stipple inherited \
                         -lineStyle thickLine -fill inherited -outline blue
dr::createPacket color3Locked -display $display_object -stipple inherited \
                        -lineStyle thickLine -fill inherited -outline green
dr::createPacket color4Locked -display $display_object -stipple inherited \
                       -lineStyle thickLine -fill inherited -outline yellow
dr::createPacket color5Locked -display $display_object -stipple inherited \
                        -lineStyle thickLine -fill inherited -outline white
dr::createPacket color6Locked -display $display_object -stipple inherited \
                       -lineStyle thickLine -fill inherited -outline silver
dr::createPacket colorSameLocked -display $display_object -stipple inherited \
                          -lineStyle thickLine -fill inherited -outline orange
dr::createPacket align -display $display_object -stipple blank \
                         -lineStyle solid -fill tan -outline tan
dr::createPacket alignAssist -display $display_object -stipple blank \
                            -lineStyle solid -fill tan -outline yellow -fillStyle outline
dr::createPacket alignAssistGuideline -display $display_object -stipple blank \
                       -lineStyle dashed -fill plotcolor11 -outline plotcolor11 -fillStyle outline
dr::createPacket alignAssistTarget -display $display_object -stipple blank \
                             -lineStyle alignLine -fill white -outline white
dr::createPacket reassignNet -display $display_object -stipple inherited \
                       -lineStyle thickLine -fill inherited -outline white
dr::createPacket blockageWiring -display $display_object -stipple blank \
                                  -lineStyle solid -fill red -outline red
dr::createPacket blockageFill -display $display_object -stipple blank \
                          -lineStyle solid -fill silver -outline silver
dr::createPacket blockageSlot -display $display_object -stipple blank \
                            -lineStyle solid -fill white -outline white
dr::createPacket blockageScreen -display $display_object -stipple blank \
                             -lineStyle solid -fill white -outline orange
dr::createPacket blockageFeedthru -display $display_object -stipple blank \
                                -lineStyle solid -fill white -outline green
dr::createPacket hardFence -display $display_object -stipple blank \
                       -lineStyle solid -fill yellow -outline yellow
dr::createPacket softFence -display $display_object -stipple blank \
                         -lineStyle solid -fill green -outline green
dr::createPacket partialFence -display $display_object -stipple slash \
                            -lineStyle solid -fill white -outline white
dr::createPacket text -display $display_object -stipple blank \
                    -lineStyle solid -fill white -outline white
dr::createPacket text1 -display $display_object -stipple blank \
                    -lineStyle dashed -fill white -outline white
dr::createPacket text2 -display $display_object -stipple solid \
                     -lineStyle solid -fill white -outline white
dr::createPacket border -display $display_object -stipple blank \
                          -lineStyle solid -fill tan -outline tan
dr::createPacket area -display $display_object -stipple blank \
                        -lineStyle solid -fill tan -outline tan -fillStyle outline
dr::createPacket device -display $display_object -stipple blank \
                      -lineStyle solid -fill green -outline green
dr::createPacket device2 -display $display_object -stipple blank \
                      -lineStyle dashed -fill green -outline green
dr::createPacket device1 -display $display_object -stipple solid \
                       -lineStyle solid -fill green -outline green
dr::createPacket wire -display $display_object -stipple solid \
            -lineStyle solid -fill cadetBlue -outline cadetBlue
dr::createPacket wireLbl -display $display_object -stipple solid \
               -lineStyle solid -fill cadetBlue -outline cadetBlue
dr::createPacket wireFlt -display $display_object -stipple blank \
                          -lineStyle dashed -fill red -outline red
dr::createPacket annotateIncomplete -display $display_object -stipple X \
                                -lineStyle solid -fill pink -outline pink
dr::createPacket deviceAnt -display $display_object -stipple blank \
                       -lineStyle solid -fill yellow -outline yellow
dr::createPacket deviceLbl -display $display_object -stipple blank \
                         -lineStyle solid -fill green -outline green
dr::createPacket pinLbl -display $display_object -stipple blank \
                          -lineStyle solid -fill red -outline red
dr::createPacket pin -display $display_object -stipple solid \
                       -lineStyle solid -fill red -outline red
dr::createPacket inputPin -display $display_object -stipple solid \
                -lineStyle solid -fill lightBlue -outline lightBlue
dr::createPacket outputPin -display $display_object -stipple solid \
                   -lineStyle solid -fill lightRed -outline lightRed
dr::createPacket inputOutputPin -display $display_object -stipple solid \
                    -lineStyle solid -fill lightGreen -outline lightGreen
dr::createPacket switchPin -display $display_object -stipple solid \
             -lineStyle solid -fill lightYellow -outline lightYellow
dr::createPacket tristatePin -display $display_object -stipple solid \
                   -lineStyle solid -fill lightCyan -outline lightCyan
dr::createPacket pinAnt -display $display_object -stipple blank \
                          -lineStyle solid -fill red -outline red
dr::createPacket annotate -display $display_object -stipple blank \
                      -lineStyle solid -fill orange -outline orange
dr::createPacket annotate1 -display $display_object -stipple blank \
                           -lineStyle solid -fill pink -outline pink
dr::createPacket annotate2 -display $display_object -stipple blank \
                           -lineStyle solid -fill lime -outline lime
dr::createPacket annotate3 -display $display_object -stipple blank \
                           -lineStyle solid -fill cyan -outline cyan
dr::createPacket annotate4 -display $display_object -stipple blank \
                       -lineStyle solid -fill yellow -outline yellow
dr::createPacket annotate5 -display $display_object -stipple blank \
                         -lineStyle solid -fill white -outline white
dr::createPacket annotate6 -display $display_object -stipple blank \
                       -lineStyle solid -fill silver -outline silver
dr::createPacket annotate7 -display $display_object -stipple blank \
                             -lineStyle solid -fill red -outline red
dr::createPacket annotate8 -display $display_object -stipple blank \
                             -lineStyle solid -fill tan -outline tan
dr::createPacket annotate9 -display $display_object -stipple blank \
                         -lineStyle solid -fill green -outline green
dr::createPacket edgeLayer -display $display_object -stipple blank \
                 -lineStyle solid -fill winColor5 -outline winColor5
dr::createPacket edgeLayerPin -display $display_object -stipple blank \
                          -lineStyle solid -fill yellow -outline yellow
dr::createPacket snap -display $display_object -stipple blank \
                  -lineStyle solid -fill yellow -outline yellow
dr::createPacket stretch -display $display_object -stipple blank \
                     -lineStyle solid -fill yellow -outline yellow
dr::createPacket y0 -display $display_object -stipple blank \
                -lineStyle solid -fill yellow -outline yellow
dr::createPacket y1 -display $display_object -stipple blank \
                      -lineStyle solid -fill red -outline red
dr::createPacket y2 -display $display_object -stipple blank \
                  -lineStyle solid -fill green -outline green
dr::createPacket y3 -display $display_object -stipple blank \
              -lineStyle solid -fill magenta -outline magenta
dr::createPacket y4 -display $display_object -stipple blank \
                    -lineStyle solid -fill cyan -outline cyan
dr::createPacket y5 -display $display_object -stipple blank \
                -lineStyle solid -fill purple -outline purple
dr::createPacket y6 -display $display_object -stipple blank \
                -lineStyle solid -fill orange -outline orange
dr::createPacket y7 -display $display_object -stipple blank \
                    -lineStyle solid -fill gold -outline gold
dr::createPacket y8 -display $display_object -stipple blank \
                    -lineStyle solid -fill blue -outline blue
dr::createPacket y9 -display $display_object -stipple blank \
                -lineStyle solid -fill silver -outline silver
dr::createPacket y0Flt -display $display_object -stipple blank \
                  -lineStyle dashed -fill yellow -outline yellow
dr::createPacket y0Flt_bold -display $display_object -stipple blank \
                    -lineStyle thickLine -fill yellow -outline yellow
dr::createPacket y0Top -display $display_object -stipple blank \
                   -lineStyle solid -fill yellow -outline yellow
dr::createPacket y1Flt -display $display_object -stipple blank \
                        -lineStyle dashed -fill red -outline red
dr::createPacket y1Flt_bold -display $display_object -stipple blank \
                          -lineStyle thickLine -fill red -outline red
dr::createPacket y1Top -display $display_object -stipple blank \
                         -lineStyle solid -fill red -outline red
dr::createPacket y2Flt -display $display_object -stipple blank \
                    -lineStyle dashed -fill green -outline green
dr::createPacket y2Flt_bold -display $display_object -stipple blank \
                      -lineStyle thickLine -fill green -outline green
dr::createPacket y2Top -display $display_object -stipple blank \
                     -lineStyle solid -fill green -outline green
dr::createPacket y3Flt -display $display_object -stipple blank \
                -lineStyle dashed -fill magenta -outline magenta
dr::createPacket y3Flt_bold -display $display_object -stipple blank \
                  -lineStyle thickLine -fill magenta -outline magenta
dr::createPacket y3Top -display $display_object -stipple blank \
                 -lineStyle solid -fill magenta -outline magenta
dr::createPacket y4Flt -display $display_object -stipple blank \
                      -lineStyle dashed -fill cyan -outline cyan
dr::createPacket y4Flt_bold -display $display_object -stipple blank \
                        -lineStyle thickLine -fill cyan -outline cyan
dr::createPacket y4Top -display $display_object -stipple blank \
                       -lineStyle solid -fill cyan -outline cyan
dr::createPacket y5Flt -display $display_object -stipple blank \
                  -lineStyle dashed -fill purple -outline purple
dr::createPacket y5Flt_bold -display $display_object -stipple blank \
                    -lineStyle thickLine -fill purple -outline purple
dr::createPacket y5Top -display $display_object -stipple blank \
                   -lineStyle solid -fill purple -outline purple
dr::createPacket y6Flt -display $display_object -stipple blank \
                  -lineStyle dashed -fill orange -outline orange
dr::createPacket y6Flt_bold -display $display_object -stipple blank \
                    -lineStyle thickLine -fill orange -outline orange
dr::createPacket y6Top -display $display_object -stipple blank \
                   -lineStyle solid -fill orange -outline orange
dr::createPacket y7Flt -display $display_object -stipple blank \
                      -lineStyle dashed -fill gold -outline gold
dr::createPacket y7Flt_bold -display $display_object -stipple blank \
                        -lineStyle thickLine -fill gold -outline gold
dr::createPacket y7Top -display $display_object -stipple blank \
                       -lineStyle solid -fill gold -outline gold
dr::createPacket y8Flt -display $display_object -stipple blank \
                      -lineStyle dashed -fill blue -outline blue
dr::createPacket y8Flt_bold -display $display_object -stipple blank \
                        -lineStyle thickLine -fill blue -outline blue
dr::createPacket y8Top -display $display_object -stipple blank \
                       -lineStyle solid -fill blue -outline blue
dr::createPacket y9Flt -display $display_object -stipple blank \
                  -lineStyle dashed -fill silver -outline silver
dr::createPacket y9Flt_bold -display $display_object -stipple blank \
                    -lineStyle thickLine -fill silver -outline silver
dr::createPacket y9Top -display $display_object -stipple blank \
                   -lineStyle solid -fill silver -outline silver
dr::createPacket y0r -display $display_object -stipple blank \
             -lineStyle thickLine -fill yellow -outline yellow
dr::createPacket y1r -display $display_object -stipple blank \
                   -lineStyle thickLine -fill red -outline red
dr::createPacket y2r -display $display_object -stipple blank \
               -lineStyle thickLine -fill green -outline green
dr::createPacket y3r -display $display_object -stipple blank \
           -lineStyle thickLine -fill magenta -outline magenta
dr::createPacket y4r -display $display_object -stipple blank \
                 -lineStyle thickLine -fill cyan -outline cyan
dr::createPacket y5r -display $display_object -stipple blank \
             -lineStyle thickLine -fill purple -outline purple
dr::createPacket y6r -display $display_object -stipple blank \
             -lineStyle thickLine -fill orange -outline orange
dr::createPacket y7r -display $display_object -stipple blank \
                 -lineStyle thickLine -fill gold -outline gold
dr::createPacket y8r -display $display_object -stipple blank \
                 -lineStyle thickLine -fill blue -outline blue
dr::createPacket y9r -display $display_object -stipple blank \
             -lineStyle thickLine -fill silver -outline silver
dr::createPacket hilite -display $display_object -stipple blank \
                      -lineStyle solid -fill white -outline white
dr::createPacket hilite1 -display $display_object -stipple blank \
                   -lineStyle solid -fill magenta -outline magenta
dr::createPacket hilite2 -display $display_object -stipple blank \
                           -lineStyle solid -fill tan -outline tan
dr::createPacket hilite3 -display $display_object -stipple blank \
                         -lineStyle solid -fill cyan -outline cyan
dr::createPacket hilite4 -display $display_object -stipple blank \
                     -lineStyle solid -fill orange -outline orange
dr::createPacket hilite5 -display $display_object -stipple blank \
                         -lineStyle solid -fill lime -outline lime
dr::createPacket hilite6 -display $display_object -stipple blank \
                     -lineStyle solid -fill orange -outline orange
dr::createPacket hilite7 -display $display_object -stipple blank \
                       -lineStyle solid -fill cream -outline cream
dr::createPacket hilite8 -display $display_object -stipple blank \
                   -lineStyle solid -fill magenta -outline magenta
dr::createPacket hilite9 -display $display_object -stipple blank \
                         -lineStyle solid -fill pink -outline pink
dr::createPacket select -display $display_object -stipple blank \
                      -lineStyle thickLine -fill tan -outline tan
dr::createPacket drive -display $display_object -stipple blank \
                       -lineStyle solid -fill blue -outline blue
dr::createPacket hiz -display $display_object -stipple blank \
                 -lineStyle solid -fill orange -outline orange
dr::createPacket resist -display $display_object -stipple blank \
                        -lineStyle solid -fill cyan -outline cyan
dr::createPacket spike -display $display_object -stipple blank \
                   -lineStyle solid -fill purple -outline purple
dr::createPacket supply -display $display_object -stipple blank \
                        -lineStyle solid -fill lime -outline lime
dr::createPacket unknown -display $display_object -stipple blank \
                     -lineStyle solid -fill yellow -outline yellow
dr::createPacket unset -display $display_object -stipple blank \
                   -lineStyle solid -fill forest -outline forest
dr::createPacket designFlow -display $display_object -stipple dots \
                           -lineStyle solid -fill blue -outline blue
dr::createPacket designFlow1 -display $display_object -stipple dots \
                        -lineStyle solid -fill purple -outline purple
dr::createPacket designFlow2 -display $display_object -stipple dots \
                      -lineStyle solid -fill magenta -outline magenta
dr::createPacket designFlow3 -display $display_object -stipple dots \
                            -lineStyle solid -fill cyan -outline cyan
dr::createPacket designFlow4 -display $display_object -stipple dots \
                        -lineStyle solid -fill forest -outline forest
dr::createPacket designFlow5 -display $display_object -stipple dots \
                          -lineStyle solid -fill green -outline green
dr::createPacket designFlow6 -display $display_object -stipple dots \
                        -lineStyle solid -fill orange -outline orange
dr::createPacket designFlow7 -display $display_object -stipple dots \
                        -lineStyle solid -fill yellow -outline yellow
dr::createPacket designFlow8 -display $display_object -stipple dots \
                          -lineStyle solid -fill brown -outline brown
dr::createPacket designFlow9 -display $display_object -stipple dots \
                              -lineStyle solid -fill red -outline red
dr::createPacket changedLayerTl0 -display $display_object -stipple blank \
                                   -lineStyle solid -fill red -outline red
dr::createPacket changedLayerTl1 -display $display_object -stipple blank \
                             -lineStyle solid -fill yellow -outline yellow
dr::createPacket markerAno -display $display_object -stipple X \
                       -lineStyle solid -fill blue -outline blue
dr::createPacket markerInf -display $display_object -stipple X \
                     -lineStyle solid -fill green -outline green
dr::createPacket markerAck -display $display_object -stipple X \
                   -lineStyle solid -fill yellow -outline yellow
dr::createPacket markerWarn -display $display_object -stipple X \
          -lineStyle solid -fill blinkYellow -outline blinkYellow
dr::createPacket markerSer -display $display_object -stipple X \
                   -lineStyle solid -fill orange -outline orange
dr::createPacket markerErr -display $display_object -stipple X \
           -lineStyle solid -fill blinkWhite -outline blinkWhite
dr::createPacket markerScr -display $display_object -stipple X \
                         -lineStyle solid -fill red -outline red
dr::createPacket markerCrt -display $display_object -stipple X \
                         -lineStyle solid -fill red -outline red
dr::createPacket markerFat -display $display_object -stipple X \
               -lineStyle solid -fill blinkRed -outline blinkRed
dr::createPacket Row -display $display_object -stipple blank \
                     -lineStyle solid -fill cyan -outline cyan
dr::createPacket RowBnd -display $display_object -stipple blank \
                        -lineStyle solid -fill cyan -outline cyan
dr::createPacket RowLbl -display $display_object -stipple blank \
                        -lineStyle solid -fill cyan -outline cyan
dr::createPacket Group -display $display_object -stipple dots \
                    -lineStyle solid -fill green -outline green
dr::createPacket GroupLbl -display $display_object -stipple blank \
                        -lineStyle solid -fill green -outline green
dr::createPacket GroupBnd -display $display_object -stipple blank \
                        -lineStyle solid -fill green -outline green
dr::createPacket Cannotoccupy -display $display_object -stipple X \
                            -lineStyle solid -fill red -outline red
dr::createPacket CannotoccupyBnd -display $display_object -stipple blank \
                                   -lineStyle solid -fill red -outline red
dr::createPacket Canplace -display $display_object -stipple blank \
                          -lineStyle solid -fill cyan -outline cyan
dr::createPacket Unrouted -display $display_object -stipple blank \
               -lineStyle dashed -fill winColor5 -outline winColor5
dr::createPacket UnroutedTrk -display $display_object -stipple blank \
                        -lineStyle dashed -fill yellow -outline yellow
dr::createPacket Unrouted1 -display $display_object -stipple blank \
                        -lineStyle dashed -fill brown -outline brown
dr::createPacket Unrouted2 -display $display_object -stipple blank \
                            -lineStyle dashed -fill red -outline red
dr::createPacket Unrouted3 -display $display_object -stipple blank \
                          -lineStyle dashed -fill pink -outline pink
dr::createPacket Unrouted4 -display $display_object -stipple blank \
                      -lineStyle dashed -fill orange -outline orange
dr::createPacket Unrouted5 -display $display_object -stipple blank \
                        -lineStyle dashed -fill green -outline green
dr::createPacket Unrouted6 -display $display_object -stipple blank \
                          -lineStyle dashed -fill blue -outline blue
dr::createPacket Unrouted7 -display $display_object -stipple blank \
                      -lineStyle dashed -fill purple -outline purple
dr::createPacket Unrouted8 -display $display_object -stipple blank \
                          -lineStyle dashed -fill gold -outline gold
dr::createPacket Unrouted9 -display $display_object -stipple blank \
                      -lineStyle dashed -fill silver -outline silver
dr::createPacket stroke_white -display $display_object -stipple blank \
                            -lineStyle solid -fill white -outline white
dr::createPacket select1_yellow -display $display_object -stipple blank \
                        -lineStyle thickLine -fill yellow -outline yellow
dr::createPacket select2_red -display $display_object -stipple blank \
                               -lineStyle solid -fill red -outline red
dr::createPacket select3_blue -display $display_object -stipple blank \
                              -lineStyle solid -fill blue -outline blue
dr::createPacket select4_purple -display $display_object -stipple blank \
                            -lineStyle solid -fill purple -outline purple
dr::createPacket select1_shadow -display $display_object -stipple inherited \
                             -lineStyle solid -fill inherited -outline yellow
dr::createPacket highlight_island1 -display $display_object -stipple inherited \
                             -lineStyle mediumLine -fill inherited -outline cyan
dr::createPacket highlight_island2 -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline white
dr::createPacket highlight1_yellow -display $display_object -stipple inherited \
                           -lineStyle mediumLine -fill inherited -outline yellow
dr::createPacket highlight2_red -display $display_object -stipple inherited \
                           -lineStyle mediumLine -fill inherited -outline red
dr::createPacket highlight3_green -display $display_object -stipple inherited \
                           -lineStyle mediumLine -fill inherited -outline green
dr::createPacket highlight4_blue -display $display_object -stipple inherited \
                           -lineStyle mediumLine -fill inherited -outline blue
dr::createPacket highlight5_purple -display $display_object -stipple inherited \
                           -lineStyle mediumLine -fill inherited -outline purple
dr::createPacket highlight6_cyan -display $display_object -stipple inherited \
                           -lineStyle mediumLine -fill inherited -outline cyan
dr::createPacket highlight7_white -display $display_object -stipple inherited \
                           -lineStyle mediumLine -fill inherited -outline white
dr::createPacket highlight8_gold -display $display_object -stipple inherited \
                           -lineStyle mediumLine -fill inherited -outline gold
dr::createPacket highlight9_maroon -display $display_object -stipple inherited \
                           -lineStyle mediumLine -fill inherited -outline maroon
dr::createPacket highlight10_gray -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline gray
dr::createPacket highlight11_magenta -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline magenta
dr::createPacket highlight12_orange -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline orange
dr::createPacket highlight13_cadetBlue -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline cadetBlue
dr::createPacket highlight14_lime -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline lime
dr::createPacket highlight15_pink -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline pink
dr::createPacket highlight16_salmon -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline salmon
dr::createPacket highlight17_tan -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline tan
dr::createPacket highlight18_violet -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline violet
dr::createPacket highlight19_slate -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline slate
dr::createPacket highlight20_forest -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline forest
dr::createPacket highlight21_silver -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline silver
dr::createPacket highlight22_navy -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline navy
dr::createPacket highlight23_chocolate -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline chocolate
dr::createPacket highlight24_violet -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline violet
dr::createPacket highlight25_darkMagenta -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline darkMagenta
dr::createPacket highlight26_lightBlue -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline lightBlue
dr::createPacket highlight27_lightGreen -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline lightGreen
dr::createPacket highlight28_lightMaroon -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline lightMaroon
dr::createPacket highlight29_lightPurple -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline lightPurple
dr::createPacket highlight30_lightRed -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill inherited -outline lightRed
dr::createPacket fixingGuide -display $display_object -stipple inherited \
                     -lineStyle mediumLine -fill inherited -outline yellow
dr::createPacket fixingGuide1 -display $display_object -stipple inherited \
                         -lineStyle mediumLine -fill inherited -outline red
dr::createPacket fixingGuide2 -display $display_object -stipple inherited \
                       -lineStyle mediumLine -fill inherited -outline green
dr::createPacket fixingGuide3 -display $display_object -stipple inherited \
                        -lineStyle mediumLine -fill inherited -outline blue
dr::createPacket fixingGuide4 -display $display_object -stipple inherited \
                      -lineStyle mediumLine -fill inherited -outline purple
dr::createPacket fixingGuide5 -display $display_object -stipple inherited \
                        -lineStyle mediumLine -fill inherited -outline cyan
dr::createPacket fixingGuide6 -display $display_object -stipple inherited \
                       -lineStyle mediumLine -fill inherited -outline white
dr::createPacket fixingGuide7 -display $display_object -stipple inherited \
                        -lineStyle mediumLine -fill inherited -outline gold
dr::createPacket fixingGuide8 -display $display_object -stipple inherited \
                      -lineStyle mediumLine -fill inherited -outline maroon
dr::createPacket fixingGuide9 -display $display_object -stipple inherited \
                        -lineStyle mediumLine -fill inherited -outline gray
dr::createPacket pveHighlight1 -display $display_object -stipple inherited \
                                -lineStyle mediumLine -fill red -outline red
dr::createPacket pveHighlight2 -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill white -outline white
dr::createPacket pveHighlight3 -display $display_object -stipple inherited \
                            -lineStyle mediumLine -fill green -outline green
dr::createPacket pveHighlight4 -display $display_object -stipple inherited \
                              -lineStyle mediumLine -fill blue -outline blue
dr::createPacket pveHighlight5 -display $display_object -stipple inherited \
                        -lineStyle mediumLine -fill magenta -outline magenta
dr::createPacket pveHighlight6 -display $display_object -stipple inherited \
                              -lineStyle mediumLine -fill cyan -outline cyan
dr::createPacket pveHighlight7 -display $display_object -stipple inherited \
                          -lineStyle mediumLine -fill yellow -outline yellow
dr::createPacket pveHighlight8 -display $display_object -stipple inherited \
                          -lineStyle mediumLine -fill orange -outline orange
dr::createPacket pveHighlight9 -display $display_object -stipple inherited \
                          -lineStyle mediumLine -fill purple -outline purple
dr::createPacket pveHighlight10 -display $display_object -stipple inherited \
                             -lineStyle mediumLine -fill brown -outline brown
dr::createPacket routeTrunk -display $display_object -stipple blank \
                   -lineStyle mediumLine -fill yellow -outline yellow
dr::createPacket routeTrunk1 -display $display_object -stipple blank \
                          -lineStyle mediumLine -fill red -outline red
dr::createPacket routeTrunk2 -display $display_object -stipple blank \
                      -lineStyle mediumLine -fill green -outline green
dr::createPacket routeTrunk3 -display $display_object -stipple blank \
                  -lineStyle mediumLine -fill magenta -outline magenta
dr::createPacket routeTrunk4 -display $display_object -stipple blank \
                        -lineStyle mediumLine -fill cyan -outline cyan
dr::createPacket routeTrunk5 -display $display_object -stipple blank \
                    -lineStyle mediumLine -fill purple -outline purple
dr::createPacket routeTrunk6 -display $display_object -stipple blank \
                    -lineStyle mediumLine -fill orange -outline orange
dr::createPacket routeTrunk7 -display $display_object -stipple blank \
                        -lineStyle mediumLine -fill gold -outline gold
dr::createPacket routeTrunk8 -display $display_object -stipple blank \
                        -lineStyle mediumLine -fill blue -outline blue
dr::createPacket routeTrunk9 -display $display_object -stipple blank \
                    -lineStyle mediumLine -fill silver -outline silver
dr::createPacket routeTapoff -display $display_object -stipple blank \
                  -lineStyle mediumDashed -fill yellow -outline yellow
dr::createPacket routeTapoff1 -display $display_object -stipple blank \
                         -lineStyle mediumDashed -fill red -outline red
dr::createPacket routeTapoff2 -display $display_object -stipple blank \
                     -lineStyle mediumDashed -fill green -outline green
dr::createPacket routeTapoff3 -display $display_object -stipple blank \
                 -lineStyle mediumDashed -fill magenta -outline magenta
dr::createPacket routeTapoff4 -display $display_object -stipple blank \
                       -lineStyle mediumDashed -fill cyan -outline cyan
dr::createPacket routeTapoff5 -display $display_object -stipple blank \
                   -lineStyle mediumDashed -fill purple -outline purple
dr::createPacket routeTapoff6 -display $display_object -stipple blank \
                   -lineStyle mediumDashed -fill orange -outline orange
dr::createPacket routeTapoff7 -display $display_object -stipple blank \
                       -lineStyle mediumDashed -fill gold -outline gold
dr::createPacket routeTapoff8 -display $display_object -stipple blank \
                       -lineStyle mediumDashed -fill blue -outline blue
dr::createPacket routeTapoff9 -display $display_object -stipple blank \
                   -lineStyle mediumDashed -fill silver -outline silver
dr::createPacket highlight1_yellow_dim -display $display_object -stipple inherited \
                          -lineStyle mediumLine -fill inherited -outline lightYellow
dr::createPacket highlight2_red_dim -display $display_object -stipple inherited \
                          -lineStyle mediumLine -fill inherited -outline lightRed
dr::createPacket highlight3_green_dim -display $display_object -stipple inherited \
                          -lineStyle mediumLine -fill inherited -outline lightGreen
dr::createPacket highlight4_blue_dim -display $display_object -stipple inherited \
                          -lineStyle mediumLine -fill inherited -outline lightBlue
dr::createPacket highlight5_purple_dim -display $display_object -stipple inherited \
                          -lineStyle mediumLine -fill inherited -outline lightPurple
dr::createPacket highlight6_cyan_dim -display $display_object -stipple inherited \
                          -lineStyle mediumLine -fill inherited -outline lightCyan
dr::createPacket highlight7_white_dim -display $display_object -stipple inherited \
                          -lineStyle mediumLine -fill inherited -outline lightWhite
dr::createPacket highlight8_gold_dim -display $display_object -stipple inherited \
                          -lineStyle mediumLine -fill inherited -outline lightGold
dr::createPacket highlight9_maroon_dim -display $display_object -stipple inherited \
                          -lineStyle mediumLine -fill inherited -outline lightMaroon
dr::createPacket highlight10_gray_dim -display $display_object -stipple inherited \
                           -lineStyle mediumLine -fill inherited -outline lightGray
dr::createPacket ruler_white -display $display_object -stipple blank \
                           -lineStyle solid -fill white -outline white
dr::createPacket active_TrueColorBright -display $display_object -stipple blank \
            -lineStyle thickDashed -fill TrueColorBright -outline TrueColorBright
dr::createPacket runtime_TrueColorGhost -display $display_object -stipple blank \
                    -lineStyle solid -fill TrueColorGhost -outline TrueColorGhost
dr::createPacket cursor_white -display $display_object -stipple blank \
                            -lineStyle solid -fill white -outline white
dr::createPacket major_grid -display $display_object -stipple blank \
                      -lineStyle shortDash -fill white -outline white
dr::createPacket minor_grid -display $display_object -stipple blank \
                           -lineStyle dots -fill slate -outline slate
dr::createPacket route_grid_via -display $display_object -stipple blank \
                              -lineStyle solid -fill white -outline white
dr::createPacket route_grid_point -display $display_object -stipple blank \
                                -lineStyle solid -fill slate -outline slate
dr::createPacket yellow_white -display $display_object -stipple blank \
                           -lineStyle solid -fill yellow -outline white
dr::createPacket transparent_white -display $display_object -stipple blank \
                                -lineStyle solid -fill yellow -outline white -fillStyle outline
dr::createPacket pinUnc -display $display_object -stipple X \
                      -lineStyle solid -fill red -outline red
dr::createPacket wireUnrt -display $display_object -stipple blank \
               -lineStyle dashed -fill cadetBlue -outline cadetBlue
dr::createPacket inherited -display $display_object -stipple inherited \
                 -lineStyle inherited -fill inherited -outline inherited
dr::createPacket plotpacket0 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor0
dr::createPacket plotpacket1 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor1
dr::createPacket plotpacket2 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor2
dr::createPacket plotpacket3 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor3
dr::createPacket plotpacket4 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor4
dr::createPacket plotpacket5 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor5
dr::createPacket plotpacket6 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor6
dr::createPacket plotpacket7 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor7
dr::createPacket plotpacket8 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor8
dr::createPacket plotpacket9 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor9
dr::createPacket plotpacket10 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor10
dr::createPacket plotpacket11 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor11
dr::createPacket plotpacket12 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor12
dr::createPacket plotpacket13 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor13
dr::createPacket plotpacket14 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor14
dr::createPacket plotpacket15 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor15
dr::createPacket plotpacket16 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor16
dr::createPacket plotpacket17 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor17
dr::createPacket plotpacket18 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor18
dr::createPacket plotpacket19 -display $display_object -stipple inherited \
                 -lineStyle mediumLine -fill inherited -outline plotcolor19
dr::createPacket plotpacketref -display $display_object -stipple inherited \
           -lineStyle mediumLine -fill inherited -outline plotpacketrefcolor
dr::createPacket LE_preview -display $display_object -stipple inherited \
                       -lineStyle dots -fill inherited -outline inherited
dr::createPacket LE_hole -display $display_object -stipple blank \
                     -lineStyle solid -fill yellow -outline yellow -fillStyle outline
dr::createPacket pinConn -display $display_object -stipple blank \
                           -lineStyle solid -fill red -outline red -fillStyle stipple
dr::createPacket ruler0 -display $display_object -stipple blank \
                    -lineStyle solid -fill yellow -outline yellow
dr::createPacket ruler1 -display $display_object -stipple blank \
                          -lineStyle solid -fill red -outline red
dr::createPacket ruler2 -display $display_object -stipple blank \
                      -lineStyle solid -fill green -outline green
dr::createPacket ruler3 -display $display_object -stipple blank \
                  -lineStyle solid -fill magenta -outline magenta
dr::createPacket ruler4 -display $display_object -stipple blank \
                        -lineStyle solid -fill cyan -outline cyan
dr::createPacket ruler5 -display $display_object -stipple blank \
                    -lineStyle solid -fill purple -outline purple
dr::createPacket ruler6 -display $display_object -stipple blank \
                    -lineStyle solid -fill orange -outline orange
dr::createPacket ruler7 -display $display_object -stipple blank \
                        -lineStyle solid -fill gold -outline gold
dr::createPacket ruler8 -display $display_object -stipple blank \
                        -lineStyle solid -fill blue -outline blue
dr::createPacket ruler9 -display $display_object -stipple blank \
                    -lineStyle solid -fill silver -outline silver
dr::createPacket distance -display $display_object -stipple blank \
-lineStyle mediumDoubleDash -fill plotpacketrefcolor -outline plotpacketrefcolor
dr::createPacket distance_ref_line -display $display_object -stipple blank \
            -lineStyle mediumDoubleDash -fill plotcolor2 -outline plotcolor2
dr::createPacket distance_ext -display $display_object -stipple blank \
       -lineStyle mediumDoubleDash -fill plotcolor4 -outline plotcolor4
dr::createPacket lineSelect -display $display_object -stipple inherited \
               -lineStyle thickDashed -fill inherited -outline plotcolor4
dr::createPacket SelectUnderCursor1 -display $display_object -stipple blank \
                                -lineStyle hidden -fill yellow -outline white
dr::createPacket SelectUnderCursor2 -display $display_object -stipple blank \
                                 -lineStyle solid -fill white -outline yellow
dr::createPacket SelectUnderCursor3 -display $display_object -stipple blank \
                                    -lineStyle solid -fill gray -outline gray
dr::createPacket split -display $display_object -stipple blank \
               -lineStyle thickDashed -fill green -outline green
dr::createPacket splitArray -display $display_object -stipple blank \
       -lineStyle mediumDashed -fill plotcolor18 -outline plotcolor18
dr::createPacket invisibleLabel -display $display_object -stipple blank \
                           -lineStyle dashed -fill purple -outline purple
dr::createPacket steiner -display $display_object -stipple dots1 \
                  -lineStyle longDash -fill silver -outline silver
dr::createPacket routeSource -display $display_object -stipple blank \
                       -lineStyle thickLine -fill green -outline green
dr::createPacket firstRouteSource -display $display_object -stipple blank \
                  -lineStyle thickLine -fill lightGreen -outline lightGreen
dr::createPacket routeDest -display $display_object -stipple blank \
                   -lineStyle thickLine -fill purple -outline purple
dr::createPacket firstRouteDest -display $display_object -stipple blank \
              -lineStyle thickLine -fill lightPurple -outline lightPurple
dr::createPacket routingRegion -display $display_object -stipple brick \
                         -lineStyle solid -fill slate -outline lightGray
dr::createPacket SE_runtime_wire -display $display_object -stipple inherited \
                          -lineStyle dashed -fill inherited -outline inherited
dr::createPacket inferenceLine -display $display_object -stipple blank \
                              -lineStyle dots -fill slate -outline slate
dr::createPacket inferencePoint -display $display_object -stipple blank \
                              -lineStyle solid -fill slate -outline slate
dr::createPacket defaultVoltageArea -display $display_object -stipple blank \
                      -lineStyle thickDotted -fill black -outline darkMagenta
dr::createPacket defaultGuardband -display $display_object -stipple blank \
                               -lineStyle dots -fill yellow -outline yellow
dr::createPacket defaultCorridor -display $display_object -stipple blank \
                             -lineStyle solid -fill salmon -outline salmon
dr::createPacket hardMacro -display $display_object -stipple X \
                       -lineStyle solid -fill cyan -outline cyan
dr::createPacket core -display $display_object -stipple blank \
              -lineStyle solid -fill darkLime -outline darkLime
dr::createPacket genericCellType -display $display_object -stipple blank \
                                 -lineStyle solid -fill cyan -outline cyan
dr::createPacket clumps -display $display_object -stipple dots25 \
                                -fill inherited -outline inherited
dr::createPacket FinGrid -display $display_object -stipple dots1 \
               -lineStyle solid -fill chocolate -outline chocolate
dr::createPacket cellBoundary -display $display_object -stipple blank \
         -lineStyle mediumDoubleDash -fill cadetBlue -outline cadetBlue
dr::createPacket textOrigin -display $display_object -stipple inherited \
                      -lineStyle solid -fill inherited -outline inherited
dr::createPacket rubberBand -display $display_object -stipple blank \
                     -lineStyle solid -fill inherited -outline yellow
dr::createPacket rubberBand2 -display $display_object -stipple blank \
               -lineStyle inherited -fill inherited -outline inherited
dr::createPacket highlightParent -display $display_object -stipple blank \
                   -lineStyle mediumDashed -fill inherited -outline yellow
dr::createPacket dynamicNetName -display $display_object -stipple blank \
                                  -lineStyle solid -fill tan -outline tan
dr::createPacket dynamicPinName -display $display_object -stipple blank \
                            -lineStyle solid -fill salmon -outline salmon
dr::createPacket net_highlight -display $display_object -stipple dots25 \
                                   -lineStyle dots -fill red -outline red
dr::createPacket net_flightline -display $display_object -stipple dots25 \
                              -lineStyle dots -fill salmon -outline salmon
dr::createPacket net_highlight2 -display $display_object -stipple dots25 \
                              -lineStyle dots -fill orange -outline orange
dr::createPacket uddSelected -display $display_object -stipple blank \
                       -lineStyle thickLine -fill white -outline white
dr::createPacket uddSelectted2 -display $display_object -stipple blank \
             -lineStyle thickLine -fill plotcolor17 -outline plotcolor17
dr::createPacket uddGenerated -display $display_object -stipple blank \
            -lineStyle thickLine -fill plotcolor19 -outline plotcolor19
dr::createPacket uddReference -display $display_object -stipple blank \
                          -lineStyle thickLine -fill lime -outline lime
dr::createPacket uddSelectedCopy -display $display_object -stipple blank \
                        -lineStyle mediumDashed -fill white -outline white
dr::createPacket uddReferenceCopy -display $display_object -stipple blank \
                           -lineStyle mediumDashed -fill lime -outline lime
dr::createPacket uddSelectted2Copy -display $display_object -stipple blank \
              -lineStyle mediumDashed -fill plotcolor17 -outline plotcolor17
dr::createPacket uddGeneratedCopy -display $display_object -stipple blank \
             -lineStyle mediumDashed -fill plotcolor19 -outline plotcolor19
dr::createPacket trackGridLine -display $display_object -stipple inherited \
                        -lineStyle dashed -fill inherited -outline inherited
dr::createPacket FinGridA -display $display_object -stipple dots1 \
                -lineStyle solid -fill chocolate -outline chocolate
dr::createPacket FinGridB -display $display_object -stipple dots1 \
          -lineStyle solid -fill ICC2_color11 -outline ICC2_color11
dr::createPacket hierarchicalCopySource -display $display_object -stipple blank \
                                    -lineStyle thickLine -fill pink -outline pink
dr::createPacket hierarchicalCopyTarget -display $display_object -stipple blank \
                                    -lineStyle thickLine -fill lime -outline lime
dr::createPacket hierarchicalCopyTargetCandidate -display $display_object -stipple blank \
                                           -lineStyle thickDashed -fill lime -outline lime
dr::createPacket fillTiling -display $display_object -stipple blank \
                       -lineStyle longDash -fill green -outline green -fillStyle outline
dr::createPacket directionIndicator -display $display_object -stipple blank \
                                  -lineStyle solid -fill white -outline white
dr::createPacket trackRegionTile -display $display_object -stipple dots1 \
                             -lineStyle thickDashed -fill red -outline red
dr::createPacket partition_highlight_unknown -display $display_object -stipple blank \
                                      -lineStyle mediumLine -fill green -outline green
dr::createPacket partition_highlight_analog -display $display_object -stipple blank \
                                       -lineStyle mediumLine -fill cyan -outline cyan
dr::createPacket partition_highlight_digital -display $display_object -stipple blank \
                                      -lineStyle mediumLine -fill white -outline white
dr::createPacket partition_highlight_AMS -display $display_object -stipple blank \
                                -lineStyle mediumLine -fill maroon -outline maroon
dr::createPacket partition_highlight_verilogA -display $display_object -stipple blank \
                                     -lineStyle mediumLine -fill purple -outline purple
dr::createPacket partition_highlight_mixed -display $display_object -stipple blank \
                          -lineStyle mediumDashed -fill inherited -outline inherited
dr::createPacket partition_highlight_mixed_analog -display $display_object -stipple blank \
                                           -lineStyle mediumDashed -fill cyan -outline cyan
dr::createPacket partition_highlight_mixed_digital -display $display_object -stipple blank \
                                          -lineStyle mediumDashed -fill white -outline white
dr::createPacket partition_highlight_mixed_AMS -display $display_object -stipple blank \
                                    -lineStyle mediumDashed -fill maroon -outline maroon
dr::createPacket partition_highlight_mixed_verilogA -display $display_object -stipple blank \
                                         -lineStyle mediumDashed -fill purple -outline purple
dr::createPacket highlight1_dots -display $display_object -stipple blank \
                       -lineStyle thickDotted -fill yellow -outline yellow
dr::createPacket highlight2_dots -display $display_object -stipple blank \
                             -lineStyle thickDotted -fill red -outline red
dr::createPacket highlight3_dots -display $display_object -stipple blank \
                         -lineStyle thickDotted -fill green -outline green
dr::createPacket highlight4_dots -display $display_object -stipple blank \
                           -lineStyle thickDotted -fill blue -outline blue
dr::createPacket highlight5_dots -display $display_object -stipple blank \
                       -lineStyle thickDotted -fill purple -outline purple
dr::createPacket highlight6_dots -display $display_object -stipple blank \
                           -lineStyle thickDotted -fill cyan -outline cyan
dr::createPacket highlight7_dots -display $display_object -stipple blank \
                         -lineStyle thickDotted -fill white -outline white
dr::createPacket highlight8_dots -display $display_object -stipple blank \
                           -lineStyle thickDotted -fill gold -outline gold
dr::createPacket highlight9_dots -display $display_object -stipple blank \
                       -lineStyle thickDotted -fill maroon -outline maroon
dr::createPacket highlight10_dots -display $display_object -stipple blank \
                            -lineStyle thickDotted -fill gray -outline gray
dr::createPacket highlight1_dashed -display $display_object -stipple blank \
                        -lineStyle mediumDashed -fill yellow -outline yellow
dr::createPacket highlight2_dashed -display $display_object -stipple blank \
                              -lineStyle mediumDashed -fill red -outline red
dr::createPacket highlight3_dashed -display $display_object -stipple blank \
                          -lineStyle mediumDashed -fill green -outline green
dr::createPacket highlight4_dashed -display $display_object -stipple blank \
                            -lineStyle mediumDashed -fill blue -outline blue
dr::createPacket highlight5_dashed -display $display_object -stipple blank \
                        -lineStyle mediumDashed -fill purple -outline purple
dr::createPacket highlight6_dashed -display $display_object -stipple blank \
                            -lineStyle mediumDashed -fill cyan -outline cyan
dr::createPacket highlight7_dashed -display $display_object -stipple blank \
                          -lineStyle mediumDashed -fill white -outline white
dr::createPacket highlight8_dashed -display $display_object -stipple blank \
                            -lineStyle mediumDashed -fill gold -outline gold
dr::createPacket highlight9_dashed -display $display_object -stipple blank \
                        -lineStyle mediumDashed -fill maroon -outline maroon
dr::createPacket highlight10_dashed -display $display_object -stipple blank \
                             -lineStyle mediumDashed -fill gray -outline gray
dr::createPacket density0 -display $display_object -stipple density4 \
                     -lineStyle solid -fill density0 -outline density0
dr::createPacket density2 -display $display_object -stipple density4 \
                     -lineStyle solid -fill density2 -outline density2
dr::createPacket density4 -display $display_object -stipple density4 \
                     -lineStyle solid -fill density4 -outline density4
dr::createPacket density6 -display $display_object -stipple density4 \
                     -lineStyle solid -fill density6 -outline density6
dr::createPacket density8 -display $display_object -stipple density4 \
                     -lineStyle solid -fill density8 -outline density8
dr::createPacket density10 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density10 -outline density10
dr::createPacket density12 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density12 -outline density12
dr::createPacket density14 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density14 -outline density14
dr::createPacket density16 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density16 -outline density16
dr::createPacket density18 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density18 -outline density18
dr::createPacket density20 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density20 -outline density20
dr::createPacket density22 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density22 -outline density22
dr::createPacket density24 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density24 -outline density24
dr::createPacket density26 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density26 -outline density26
dr::createPacket density28 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density28 -outline density28
dr::createPacket density30 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density30 -outline density30
dr::createPacket density32 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density32 -outline density32
dr::createPacket density34 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density34 -outline density34
dr::createPacket density36 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density36 -outline density36
dr::createPacket density38 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density38 -outline density38
dr::createPacket density40 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density40 -outline density40
dr::createPacket density42 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density42 -outline density42
dr::createPacket density44 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density44 -outline density44
dr::createPacket density46 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density46 -outline density46
dr::createPacket density48 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density48 -outline density48
dr::createPacket density50 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density50 -outline density50
dr::createPacket density52 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density52 -outline density52
dr::createPacket density54 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density54 -outline density54
dr::createPacket density56 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density56 -outline density56
dr::createPacket density58 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density58 -outline density58
dr::createPacket density60 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density60 -outline density60
dr::createPacket density62 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density62 -outline density62
dr::createPacket density64 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density64 -outline density64
dr::createPacket density66 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density66 -outline density66
dr::createPacket density68 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density68 -outline density68
dr::createPacket density70 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density70 -outline density70
dr::createPacket density72 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density72 -outline density72
dr::createPacket density74 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density74 -outline density74
dr::createPacket density76 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density76 -outline density76
dr::createPacket density78 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density78 -outline density78
dr::createPacket density80 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density80 -outline density80
dr::createPacket density82 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density82 -outline density82
dr::createPacket density84 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density84 -outline density84
dr::createPacket density86 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density86 -outline density86
dr::createPacket density88 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density88 -outline density88
dr::createPacket density90 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density90 -outline density90
dr::createPacket density92 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density92 -outline density92
dr::createPacket density94 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density94 -outline density94
dr::createPacket density96 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density96 -outline density96
dr::createPacket density98 -display $display_object -stipple density4 \
                    -lineStyle solid -fill density98 -outline density98
dr::createPacket density100 -display $display_object -stipple density4 \
                   -lineStyle solid -fill density100 -outline density100
dr::createPacket textClumps -display $display_object -stipple dots25TextClump \
                                             -fill inherited -outline inherited
dr::createPacket SR_HighlightFound -display $display_object -stipple SR_cross \
                  -lineStyle SRthickLine2 -fill SR_white -outline SR_lightWhite
dr::createPacket SR_HighlightCurrent -display $display_object -stipple blank \
                    -lineStyle SRthickLine3 -fill SR_orange -outline SR_orange -fillStyle outline
dr::createPacket probe1 -display $display_object -stipple blank \
               -lineStyle mediumLine -fill yellow -outline yellow
dr::createPacket probe2 -display $display_object -stipple blank \
                     -lineStyle mediumLine -fill red -outline red
dr::createPacket probe3 -display $display_object -stipple blank \
                 -lineStyle mediumLine -fill green -outline green
dr::createPacket probe4 -display $display_object -stipple blank \
                   -lineStyle mediumLine -fill blue -outline blue
dr::createPacket probe5 -display $display_object -stipple blank \
               -lineStyle mediumLine -fill purple -outline purple
dr::createPacket probe6 -display $display_object -stipple blank \
                   -lineStyle mediumLine -fill cyan -outline cyan
dr::createPacket probe7 -display $display_object -stipple blank \
                 -lineStyle mediumLine -fill white -outline white
dr::createPacket probe8 -display $display_object -stipple blank \
                   -lineStyle mediumLine -fill gold -outline gold
dr::createPacket probe9 -display $display_object -stipple blank \
               -lineStyle mediumLine -fill maroon -outline maroon
dr::createPacket probe10 -display $display_object -stipple blank \
                    -lineStyle mediumLine -fill gray -outline gray
dr::createPacket probe11 -display $display_object -stipple blank \
              -lineStyle mediumLine -fill magenta -outline magenta
dr::createPacket probe12 -display $display_object -stipple blank \
                -lineStyle mediumLine -fill orange -outline orange
dr::createPacket probe13 -display $display_object -stipple blank \
          -lineStyle mediumLine -fill cadetBlue -outline cadetBlue
dr::createPacket probe14 -display $display_object -stipple blank \
                    -lineStyle mediumLine -fill lime -outline lime
dr::createPacket probe15 -display $display_object -stipple blank \
                    -lineStyle mediumLine -fill pink -outline pink
dr::createPacket probe16 -display $display_object -stipple blank \
                -lineStyle mediumLine -fill salmon -outline salmon
dr::createPacket probe17 -display $display_object -stipple blank \
                      -lineStyle mediumLine -fill tan -outline tan
dr::createPacket probe18 -display $display_object -stipple blank \
                -lineStyle mediumLine -fill violet -outline violet
dr::createPacket probe19 -display $display_object -stipple blank \
                  -lineStyle mediumLine -fill slate -outline slate
dr::createPacket probe20 -display $display_object -stipple blank \
                -lineStyle mediumLine -fill forest -outline forest
dr::createPacket probe21 -display $display_object -stipple blank \
                -lineStyle mediumLine -fill silver -outline silver
dr::createPacket probe22 -display $display_object -stipple blank \
                    -lineStyle mediumLine -fill navy -outline navy
dr::createPacket probe23 -display $display_object -stipple blank \
          -lineStyle mediumLine -fill chocolate -outline chocolate
dr::createPacket probe24 -display $display_object -stipple blank \
                -lineStyle mediumLine -fill violet -outline violet
dr::createPacket probe25 -display $display_object -stipple blank \
      -lineStyle mediumLine -fill darkMagenta -outline darkMagenta
dr::createPacket probe26 -display $display_object -stipple blank \
          -lineStyle mediumLine -fill lightBlue -outline lightBlue
dr::createPacket probe27 -display $display_object -stipple blank \
        -lineStyle mediumLine -fill lightGreen -outline lightGreen
dr::createPacket probe28 -display $display_object -stipple blank \
      -lineStyle mediumLine -fill lightMaroon -outline lightMaroon
dr::createPacket probe29 -display $display_object -stipple blank \
      -lineStyle mediumLine -fill lightPurple -outline lightPurple
dr::createPacket probe30 -display $display_object -stipple blank \
            -lineStyle mediumLine -fill lightRed -outline lightRed
dr::createPacket multipleProbes -display $display_object -stipple blank \
                         -lineStyle mediumLine -fill white -outline white
dr::createPacket probe1_fl -display $display_object -stipple blank \
                      -lineStyle dashed -fill yellow -outline yellow
dr::createPacket probe2_fl -display $display_object -stipple blank \
                            -lineStyle dashed -fill red -outline red
dr::createPacket probe3_fl -display $display_object -stipple blank \
                        -lineStyle dashed -fill green -outline green
dr::createPacket probe4_fl -display $display_object -stipple blank \
                          -lineStyle dashed -fill blue -outline blue
dr::createPacket probe5_fl -display $display_object -stipple blank \
                      -lineStyle dashed -fill purple -outline purple
dr::createPacket probe6_fl -display $display_object -stipple blank \
                          -lineStyle dashed -fill cyan -outline cyan
dr::createPacket probe7_fl -display $display_object -stipple blank \
                        -lineStyle dashed -fill white -outline white
dr::createPacket probe8_fl -display $display_object -stipple blank \
                          -lineStyle dashed -fill gold -outline gold
dr::createPacket probe9_fl -display $display_object -stipple blank \
                      -lineStyle dashed -fill maroon -outline maroon
dr::createPacket probe10_fl -display $display_object -stipple blank \
                           -lineStyle dashed -fill gray -outline gray
dr::createPacket probe11_fl -display $display_object -stipple blank \
                     -lineStyle dashed -fill magenta -outline magenta
dr::createPacket probe12_fl -display $display_object -stipple blank \
                       -lineStyle dashed -fill orange -outline orange
dr::createPacket probe13_fl -display $display_object -stipple blank \
                 -lineStyle dashed -fill cadetBlue -outline cadetBlue
dr::createPacket probe14_fl -display $display_object -stipple blank \
                           -lineStyle dashed -fill lime -outline lime
dr::createPacket probe15_fl -display $display_object -stipple blank \
                           -lineStyle dashed -fill pink -outline pink
dr::createPacket probe16_fl -display $display_object -stipple blank \
                       -lineStyle dashed -fill salmon -outline salmon
dr::createPacket probe17_fl -display $display_object -stipple blank \
                             -lineStyle dashed -fill tan -outline tan
dr::createPacket probe18_fl -display $display_object -stipple blank \
                       -lineStyle dashed -fill violet -outline violet
dr::createPacket probe19_fl -display $display_object -stipple blank \
                         -lineStyle dashed -fill slate -outline slate
dr::createPacket probe20_fl -display $display_object -stipple blank \
                       -lineStyle dashed -fill forest -outline forest
dr::createPacket probe21_fl -display $display_object -stipple blank \
                       -lineStyle dashed -fill silver -outline silver
dr::createPacket probe22_fl -display $display_object -stipple blank \
                           -lineStyle dashed -fill navy -outline navy
dr::createPacket probe23_fl -display $display_object -stipple blank \
                 -lineStyle dashed -fill chocolate -outline chocolate
dr::createPacket probe24_fl -display $display_object -stipple blank \
                       -lineStyle dashed -fill violet -outline violet
dr::createPacket probe25_fl -display $display_object -stipple blank \
             -lineStyle dashed -fill darkMagenta -outline darkMagenta
dr::createPacket probe26_fl -display $display_object -stipple blank \
                 -lineStyle dashed -fill lightBlue -outline lightBlue
dr::createPacket probe27_fl -display $display_object -stipple blank \
               -lineStyle dashed -fill lightGreen -outline lightGreen
dr::createPacket probe28_fl -display $display_object -stipple blank \
             -lineStyle dashed -fill lightMaroon -outline lightMaroon
dr::createPacket probe29_fl -display $display_object -stipple blank \
             -lineStyle dashed -fill lightPurple -outline lightPurple
dr::createPacket probe30_fl -display $display_object -stipple blank \
                   -lineStyle dashed -fill lightRed -outline lightRed
dr::createPacket SE_ClipMaskObjects -display $display_object -stipple blank \
                               -lineStyle dashed -fill orange -outline orange
dr::createPacket SE_MaskingObjects -display $display_object -stipple solid \
                                   -lineStyle solid -fill blue -outline blue
dr::createPacket SE_OverlayNewWires -display $display_object -stipple solid \
                                -lineStyle solid -fill orange -outline orange
dr::createPacket SE_OverlayNewDevices -display $display_object -stipple blank \
                                  -lineStyle solid -fill orange -outline orange
dr::createPacket SE_OverlayModifiedObjects -display $display_object -stipple blank \
                                       -lineStyle solid -fill purple -outline purple
dr::createPacket ACT -display $display_object -stipple contp \
                   -lineStyle solid -fill green -outline green
dr::createPacket ACTnet -display $display_object -stipple cross \
                      -lineStyle solid -fill green -outline green -fillStyle outline
dr::createPacket BPR -display $display_object -stipple cross \
                   -lineStyle solid -fill slate -outline slate
dr::createPacket BPRnet -display $display_object -stipple cross \
                      -lineStyle solid -fill slate -outline slate -fillStyle outline
dr::createPacket NW -display $display_object -stipple wellp \
                  -lineStyle solid -fill green -outline green
dr::createPacket GATE -display $display_object -stipple backSlash \
                            -lineStyle solid -fill red -outline red
dr::createPacket GATEnet -display $display_object -stipple cross \
                           -lineStyle solid -fill red -outline red -fillStyle outline
dr::createPacket GCUT -display $display_object -stipple cross \
                    -lineStyle thickLine -fill red -outline red -fillStyle outline
dr::createPacket DUMMY -display $display_object -stipple dot4 \
        -lineStyle solid -fill lightYellow -outline lightYellow
dr::createPacket NIM -display $display_object -stipple dot1 \
                  -lineStyle solid -fill green -outline green
dr::createPacket PIM -display $display_object -stipple dot1 \
                -lineStyle solid -fill orange -outline orange
dr::createPacket M0A -display $display_object -stipple checker2 \
                    -lineStyle solid -fill orange -outline orange
dr::createPacket M0Anet -display $display_object -stipple cross \
                    -lineStyle solid -fill orange -outline orange -fillStyle outline
dr::createPacket GCON -display $display_object -stipple gnd2S \
                  -lineStyle mLine -fill yellow -outline yellow
dr::createPacket GCONnet -display $display_object -stipple cross \
                     -lineStyle solid -fill yellow -outline yellow -fillStyle outline
dr::createPacket M0B -display $display_object -stipple checker1 \
                    -lineStyle solid -fill purple -outline purple
dr::createPacket M0Bnet -display $display_object -stipple cross \
                    -lineStyle solid -fill purple -outline purple -fillStyle outline
dr::createPacket VBPR -display $display_object -stipple X \
             -lineStyle dashed -fill yellow -outline yellow -fillStyle X
dr::createPacket VBPRnet -display $display_object -stipple cross \
                     -lineStyle solid -fill yellow -outline yellow -fillStyle outline
dr::createPacket V0A -display $display_object -stipple X \
             -lineStyle mLine -fill yellow -outline yellow -fillStyle X
dr::createPacket V0Anet -display $display_object -stipple cross \
                    -lineStyle solid -fill yellow -outline yellow -fillStyle outline
dr::createPacket V0B -display $display_object -stipple invCross \
              -lineStyle mLine -fill cadetBlue -outline cadetBlue -fillStyle X
dr::createPacket V0Bnet -display $display_object -stipple cross \
              -lineStyle solid -fill cadetBlue -outline cadetBlue -fillStyle outline
dr::createPacket M1 -display $display_object -stipple checker2 \
       -lineStyle solid -fill ICC2_color37 -outline ICC2_color37
dr::createPacket M1net -display $display_object -stipple cross \
                       -lineStyle solid -fill blue -outline blue -fillStyle outline
dr::createPacket M1_pattern1 -display $display_object -stipple metal1S \
                               -lineStyle solid -fill blue -outline blue
dr::createPacket M1_pattern2 -display $display_object -stipple metal2S \
                               -lineStyle solid -fill blue -outline blue
dr::createPacket V1 -display $display_object -stipple X \
          -lineStyle thickLine -fill cream -outline cream -fillStyle X
dr::createPacket V1net -display $display_object -stipple cross \
                     -lineStyle solid -fill cream -outline cream -fillStyle outline
dr::createPacket M2 -display $display_object -stipple density1 \
                       -lineStyle solid -fill cyan -outline cyan
dr::createPacket M2net -display $display_object -stipple cross \
                       -lineStyle solid -fill cyan -outline cyan -fillStyle outline
dr::createPacket M2_pattern1 -display $display_object -stipple metal1S \
                               -lineStyle solid -fill cyan -outline cyan
dr::createPacket M2_pattern2 -display $display_object -stipple metal2S \
                               -lineStyle solid -fill cyan -outline cyan
dr::createPacket V2 -display $display_object -stipple invCross \
                 -lineStyle thickLine -fill navy -outline indigo -fillStyle X
dr::createPacket V2net -display $display_object -stipple cross \
                   -lineStyle solid -fill indigo -outline indigo -fillStyle outline
dr::createPacket M3 -display $display_object -stipple density1 \
                       -lineStyle solid -fill pink -outline pink
dr::createPacket M3net -display $display_object -stipple cross \
                       -lineStyle solid -fill pink -outline pink -fillStyle outline
dr::createPacket M3_pattern1 -display $display_object -stipple metal1S \
                               -lineStyle solid -fill pink -outline pink
dr::createPacket M3_pattern2 -display $display_object -stipple metal2S \
                               -lineStyle solid -fill pink -outline pink
dr::createPacket V3 -display $display_object -stipple invCross \
         -lineStyle thickLine -fill winColor4 -outline winColor3 -fillStyle X
dr::createPacket V3net -display $display_object -stipple cross \
             -lineStyle solid -fill winColor3 -outline winColor3 -fillStyle outline
dr::createPacket M4 -display $display_object -stipple halfslash \
                -lineStyle thickLine -fill purple -outline purple
dr::createPacket M4net -display $display_object -stipple cross \
                   -lineStyle solid -fill purple -outline purple -fillStyle outline
dr::createPacket V4 -display $display_object -stipple invCross \
                     -lineStyle thickLine -fill tan -outline tan -fillStyle X
dr::createPacket V4net -display $display_object -stipple cross \
                         -lineStyle solid -fill tan -outline tan -fillStyle outline
dr::createPacket M5 -display $display_object -stipple checker2 \
         -lineStyle thickLine -fill lightpink -outline lightpink
dr::createPacket M5net -display $display_object -stipple cross \
             -lineStyle solid -fill lightpink -outline lightpink -fillStyle outline
dr::createPacket V5 -display $display_object -stipple invCross \
         -lineStyle thickLine -fill cadetBlue -outline cadetBlue -fillStyle X
dr::createPacket V5net -display $display_object -stipple cross \
             -lineStyle solid -fill cadetBlue -outline cadetBlue -fillStyle outline
dr::createPacket M6 -display $display_object -stipple gnd2S \
      -lineStyle thickLine -fill lightpink -outline lightpink
dr::createPacket M6net -display $display_object -stipple cross \
             -lineStyle solid -fill lightpink -outline lightpink -fillStyle outline
dr::createPacket V6 -display $display_object -stipple invCross \
                     -lineStyle thickLine -fill red -outline red -fillStyle X
dr::createPacket V6net -display $display_object -stipple cross \
                         -lineStyle solid -fill red -outline red -fillStyle outline
dr::createPacket M7 -display $display_object -stipple dot3 \
                 -lineStyle solid -fill cream -outline cream
dr::createPacket M7net -display $display_object -stipple cross \
                     -lineStyle solid -fill cream -outline cream -fillStyle outline
dr::createPacket M7_pattern1 -display $display_object -stipple metal1S \
                             -lineStyle solid -fill cream -outline cream
dr::createPacket M7_pattern2 -display $display_object -stipple metal2S \
                             -lineStyle solid -fill cream -outline cream
dr::createPacket V7 -display $display_object -stipple invCross \
                         -lineStyle solid -fill tan -outline tan -fillStyle X
dr::createPacket V7net -display $display_object -stipple cross \
                         -lineStyle solid -fill tan -outline tan -fillStyle outline
dr::createPacket M8 -display $display_object -stipple dot4 \
             -lineStyle solid -fill magenta -outline magenta
dr::createPacket M8net -display $display_object -stipple cross \
                 -lineStyle solid -fill magenta -outline magenta -fillStyle outline
dr::createPacket M8_pattern1 -display $display_object -stipple metal1S \
                         -lineStyle solid -fill magenta -outline magenta
dr::createPacket M8_pattern2 -display $display_object -stipple metal2S \
                         -lineStyle solid -fill magenta -outline magenta
dr::createPacket V8 -display $display_object -stipple invCross \
                         -lineStyle solid -fill tan -outline tan -fillStyle X
dr::createPacket V8net -display $display_object -stipple cross \
                         -lineStyle solid -fill tan -outline tan -fillStyle outline
dr::createPacket M9 -display $display_object -stipple dot4 \
               -lineStyle solid -fill orange -outline orange
dr::createPacket M9net -display $display_object -stipple cross \
                   -lineStyle solid -fill orange -outline orange -fillStyle outline
dr::createPacket M9_pattern1 -display $display_object -stipple metal1S \
                           -lineStyle solid -fill orange -outline orange
dr::createPacket M9_pattern2 -display $display_object -stipple metal2S \
                           -lineStyle solid -fill orange -outline orange
dr::createPacket V9 -display $display_object -stipple invCross \
                         -lineStyle solid -fill tan -outline tan -fillStyle X
dr::createPacket V9net -display $display_object -stipple cross \
                         -lineStyle solid -fill tan -outline tan -fillStyle outline
dr::createPacket M10 -display $display_object -stipple halfslash \
                 -lineStyle thickLine -fill forest -outline forest
dr::createPacket M10net -display $display_object -stipple cross \
                    -lineStyle solid -fill forest -outline forest -fillStyle outline
dr::createPacket V10 -display $display_object -stipple invCross \
                          -lineStyle solid -fill tan -outline tan -fillStyle X
dr::createPacket V10net -display $display_object -stipple cross \
                          -lineStyle solid -fill tan -outline tan -fillStyle outline
dr::createPacket M11 -display $display_object -stipple dot4 \
        -lineStyle thickLine -fill winBack -outline winColor4
dr::createPacket M11net -display $display_object -stipple cross \
              -lineStyle solid -fill winColor4 -outline winColor4 -fillStyle outline
dr::createPacket V11 -display $display_object -stipple invCross \
                          -lineStyle solid -fill tan -outline tan -fillStyle X
dr::createPacket V11net -display $display_object -stipple cross \
                          -lineStyle solid -fill tan -outline tan -fillStyle outline
dr::createPacket M12 -display $display_object -stipple checker2 \
            -lineStyle thickLine -fill winBack -outline winColor2
dr::createPacket M12net -display $display_object -stipple cross \
              -lineStyle solid -fill winColor2 -outline winColor2 -fillStyle outline
dr::createPacket V12 -display $display_object -stipple invCross \
                          -lineStyle solid -fill tan -outline tan -fillStyle X
dr::createPacket V12net -display $display_object -stipple cross \
                          -lineStyle solid -fill tan -outline tan -fillStyle outline
dr::createPacket M13 -display $display_object -stipple checker2 \
                  -lineStyle thickLine -fill cream -outline cream
dr::createPacket M13net -display $display_object -stipple cross \
                      -lineStyle solid -fill cream -outline cream -fillStyle outline
dr::createPacket VRDL -display $display_object -stipple invCross \
                           -lineStyle solid -fill tan -outline tan -fillStyle X
dr::createPacket VRDLnet -display $display_object -stipple cross \
                           -lineStyle solid -fill tan -outline tan -fillStyle outline
dr::createPacket RDL -display $display_object -stipple checker1 \
                -lineStyle thickLine -fill silver -outline silver
dr::createPacket RDLnet -display $display_object -stipple cross \
                    -lineStyle solid -fill silver -outline silver -fillStyle outline
dr::createPacket layer_0_drawing -display $display_object -stipple dots \
                          -lineStyle solid -fill chocolate -outline black
dr::createPacket layer_14_drawing -display $display_object -stipple vZigZag \
                                    -lineStyle solid -fill cyan -outline cyan
dr::createPacket layer_13_drawing -display $display_object -stipple hZigZag \
                                      -lineStyle solid -fill tan -outline tan
dr::createPacket BPR_drg -display $display_object -stipple backSlash \
                           -lineStyle solid -fill slate -outline slate
dr::createPacket ACT_drg -display $display_object -stipple dot3 \
            -lineStyle solid -fill lightGreen -outline plotcolor8
dr::createPacket NWELL_drg -display $display_object -stipple wellp \
               -lineStyle solid -fill lightGreen -outline lightGreen
dr::createPacket VBPR_drg -display $display_object -stipple blank \
       -lineStyle mediumLine -fill lightYellow -outline lightYellow -fillStyle X
dr::createPacket GATE_drg -display $display_object -stipple backSlash \
                                -lineStyle solid -fill red -outline red
dr::createPacket GCUT_drg -display $display_object -stipple blank \
                        -lineStyle thickLine -fill red -outline red -fillStyle outline
dr::createPacket DUMMY_drg -display $display_object -stipple SR_cross \
              -lineStyle solid -fill ICC2_color47 -outline ICC2_color47
dr::createPacket PO_drg -display $display_object -stipple slash \
        -lineStyle solid -fill ICC2_color58 -outline ICC2_color58
dr::createPacket FIN_drg -display $display_object -stipple dots25 \
                    -lineStyle solid -fill green -outline winColor3
dr::createPacket POCT_drg -display $display_object -stipple blank \
                 -lineStyle solid -fill white -outline ICC2_color58
dr::createPacket SDT_drg -display $display_object -stipple cross \
                         -lineStyle solid -fill pink -outline pink
dr::createPacket LISD_drg -display $display_object -stipple brick \
            -lineStyle solid -fill plotcolor13 -outline plotcolor13
dr::createPacket LIG_drg -display $display_object -stipple checker2 \
                -lineStyle mLine -fill plotcolor5 -outline plotcolor5
dr::createPacket V0_drg -display $display_object -stipple blank \
             -lineStyle mediumLine -fill magenta -outline magenta -fillStyle X
dr::createPacket M1_drg -display $display_object -stipple density1 \
                 -lineStyle solid -fill density24 -outline density24
dr::createPacket V1_drg -display $display_object -stipple blank \
                      -lineStyle mLine -fill brown -outline brown -fillStyle X
dr::createPacket M2_drg -display $display_object -stipple density1 \
               -lineStyle solid -fill plotcolor7 -outline plotcolor7
dr::createPacket V2_drg -display $display_object -stipple blank \
                        -lineStyle mLine -fill lime -outline lime -fillStyle X
dr::createPacket M3_drg -display $display_object -stipple density1 \
           -lineStyle solid -fill ICC2_color54 -outline ICC2_color54
dr::createPacket V3_drg -display $display_object -stipple blank \
                    -lineStyle mLine -fill yellow -outline yellow -fillStyle X
dr::createPacket M4_drg -display $display_object -stipple contp \
            -lineStyle solid -fill density100 -outline density100
dr::createPacket Dummy_drg -display $display_object -stipple SR_cross \
                                -lineStyle solid -fill tan -outline tan
dr::createPacket LVTP_drg -display $display_object -stipple blank \
                -lineStyle mLine -fill density22 -outline density22
dr::createPacket MSOT -display $display_object -stipple checker2 \
         -lineStyle solid -fill ICC2_color59 -outline ICC2_color59
dr::createPacket VM1SOT -display $display_object -stipple blank \
                        -lineStyle mLine -fill cyan -outline cyan -fillStyle X
dr::createPacket MTJ -display $display_object -stipple checker1 \
    -lineStyle mediumLine -fill plotcolor10 -outline ICC2_color23
dr::createPacket Melectrode -display $display_object -stipple checker2 \
                  -lineStyle solid -fill density32 -outline ICC2_color61
dr::createPacket VMTJM2 -display $display_object -stipple blank \
   -lineStyle mediumLine -fill ICC2_color46 -outline ICC2_color46 -fillStyle X
dr::createPacket SRAMDRC_drg -display $display_object -stipple blank \
                   -lineStyle alignLine -fill white -outline density54
dr::createPacket nselect_drg -display $display_object -stipple dot1 \
                  -lineStyle solid -fill ICC2_color57 -outline yellow
dr::createPacket icvVueHighlightyellowbrick -display $display_object -stipple brick \
                                        -lineStyle solid -fill yellow -outline yellow
dr::createPacket VSOTM2 -display $display_object -stipple blank \
   -lineStyle mediumLine -fill ICC2_color57 -outline ICC2_color57 -fillStyle X
dr::createPacket NW_pin -display $display_object -stipple wellp \
                     -lineStyle solid -fill white -outline yellow -fillStyle outline
dr::createPacket NW_drg -display $display_object -stipple wellp \
                     -lineStyle solid -fill white -outline yellow
dr::createPacket icvVueHighlightcyanbrick -display $display_object -stipple brick \
                                          -lineStyle solid -fill cyan -outline cyan
dr::createPacket pselect_drg -display $display_object -stipple pplusp \
                           -lineStyle solid -fill white -outline yellow
dr::createPacket SDCON -display $display_object -stipple checker1 \
                -lineStyle solid -fill density70 -outline density70
dr::createPacket VSD -display $display_object -stipple X \
        -lineStyle mediumLine -fill yellow -outline yellow
dr::createPacket VG -display $display_object -stipple gnd2S \
    -lineStyle mLine -fill ICC2_color14 -outline ICC2_color14 -fillStyle X
dr::createPacket M0 -display $display_object -stipple density2 \
         -lineStyle solid -fill plotcolor19 -outline plotcolor19
dr::createPacket V0 -display $display_object -stipple invCross \
             -lineStyle mLine -fill cadetBlue -outline cadetBlue -fillStyle X
dr::createPacket icvVueHighlightyellowdots -display $display_object -stipple dots \
                                      -lineStyle solid -fill yellow -outline yellow
dr::createPacket icvVueHighlightredslash -display $display_object -stipple slash \
                                           -lineStyle solid -fill red -outline red
dr::createPacket V4_drg -display $display_object -stipple blank \
              -lineStyle solid -fill density24 -outline density24 -fillStyle X
dr::createPacket M5_drg -display $display_object -stipple density1 \
                  -lineStyle solid -fill plotcolor18 -outline yellow
dr::createPacket SDCON_drg -display $display_object -stipple checker1 \
                  -lineStyle solid -fill ICC2_color4 -outline density70
dr::createPacket VSD_drg -display $display_object -stipple blank \
                -lineStyle mediumLine -fill yellow -outline yellow -fillStyle X
dr::createPacket VG_drg -display $display_object -stipple blank \
   -lineStyle mediumLine -fill ICC2_color40 -outline ICC2_color40 -fillStyle X
dr::createPacket M0_drg -display $display_object -stipple density1 \
             -lineStyle solid -fill plotcolor19 -outline plotcolor19
dr::createPacket PSEL_drg -display $display_object -stipple dot1 \
                     -lineStyle solid -fill orange -outline orange
dr::createPacket NSEL_drg -display $display_object -stipple dot1 \
                       -lineStyle solid -fill green -outline green
# PacketAliases definition
dr::createPacketAlias SE_runtime -packet inherited -display $display_object
dr::createPacketAlias LE_runtime -packet inherited -display $display_object
dr::createPacketAlias active -packet active_TrueColorBright -display $display_object
dr::createPacketAlias axis_white -packet axis -display $display_object
dr::createPacketAlias coordinate_mark -packet yellow_white -display $display_object
dr::createPacketAlias cursor -packet cursor_white -display $display_object
dr::createPacketAlias display_major_grid -packet major_grid -display $display_object
dr::createPacketAlias display_minor_grid -packet minor_grid -display $display_object
dr::createPacketAlias display_route_grid_via -packet route_grid_via -display $display_object
dr::createPacketAlias display_route_grid_point -packet route_grid_point -display $display_object
dr::createPacketAlias ghost_mark -packet transparent_white -display $display_object
dr::createPacketAlias core_box_spec_boundary -packet prBoundaryBnd -display $display_object
dr::createPacketAlias core_box_spec_row -packet row -display $display_object
dr::createPacketAlias core_box_spec_site -packet rowSite -display $display_object
dr::createPacketAlias routeGuidePrefDir -packet areaBoundaryPrefDir -display $display_object
dr::createPacketAlias displayTrackPatternDefaultPrefDir -packet trackPatternDefaultPrefDir -display $display_object
dr::createPacketAlias displayTrackPatternDefaultNonPrefDir -packet trackPatternDefaultNonPrefDir -display $display_object
dr::createPacketAlias displayTrackPatternReservedPrefDir -packet trackPatternReservedPrefDir -display $display_object
dr::createPacketAlias displayTrackPatternReservedNonPrefDir -packet trackPatternReservedNonPrefDir -display $display_object
dr::createPacketAlias displayTrackPatternNonReservedPrefDir -packet trackPatternNonReservedPrefDir -display $display_object
dr::createPacketAlias displayTrackPatternNonReservedNonPrefDir -packet trackPatternNonReservedNonPrefDir -display $display_object
dr::createPacketAlias highlight1 -packet highlight1_yellow -display $display_object
dr::createPacketAlias highlight2 -packet highlight2_red -display $display_object
dr::createPacketAlias highlight3 -packet highlight3_green -display $display_object
dr::createPacketAlias highlight4 -packet highlight4_blue -display $display_object
dr::createPacketAlias highlight5 -packet highlight5_purple -display $display_object
dr::createPacketAlias highlight6 -packet highlight6_cyan -display $display_object
dr::createPacketAlias highlight7 -packet highlight7_white -display $display_object
dr::createPacketAlias highlight8 -packet highlight8_gold -display $display_object
dr::createPacketAlias highlight9 -packet highlight9_maroon -display $display_object
dr::createPacketAlias highlight10 -packet highlight10_gray -display $display_object
dr::createPacketAlias highlight1dim -packet highlight1_yellow_dim -display $display_object
dr::createPacketAlias highlight2dim -packet highlight2_red_dim -display $display_object
dr::createPacketAlias highlight3dim -packet highlight3_green_dim -display $display_object
dr::createPacketAlias highlight4dim -packet highlight4_blue_dim -display $display_object
dr::createPacketAlias highlight5dim -packet highlight5_purple_dim -display $display_object
dr::createPacketAlias highlight6dim -packet highlight6_cyan_dim -display $display_object
dr::createPacketAlias highlight7dim -packet highlight7_white_dim -display $display_object
dr::createPacketAlias highlight8dim -packet highlight8_gold_dim -display $display_object
dr::createPacketAlias highlight9dim -packet highlight9_maroon_dim -display $display_object
dr::createPacketAlias highlight10dim -packet highlight10_gray_dim -display $display_object
dr::createPacketAlias highlight11 -packet highlight11_magenta -display $display_object
dr::createPacketAlias highlight12 -packet highlight12_orange -display $display_object
dr::createPacketAlias highlight13 -packet highlight13_cadetBlue -display $display_object
dr::createPacketAlias highlight14 -packet highlight14_lime -display $display_object
dr::createPacketAlias highlight15 -packet highlight15_pink -display $display_object
dr::createPacketAlias highlight16 -packet highlight16_salmon -display $display_object
dr::createPacketAlias highlight17 -packet highlight17_tan -display $display_object
dr::createPacketAlias highlight18 -packet highlight18_violet -display $display_object
dr::createPacketAlias highlight19 -packet highlight19_slate -display $display_object
dr::createPacketAlias highlight20 -packet highlight20_forest -display $display_object
dr::createPacketAlias highlight21 -packet highlight21_silver -display $display_object
dr::createPacketAlias highlight22 -packet highlight22_navy -display $display_object
dr::createPacketAlias highlight23 -packet highlight23_chocolate -display $display_object
dr::createPacketAlias highlight24 -packet highlight24_violet -display $display_object
dr::createPacketAlias highlight25 -packet highlight25_darkMagenta -display $display_object
dr::createPacketAlias highlight26 -packet highlight26_lightBlue -display $display_object
dr::createPacketAlias highlight27 -packet highlight27_lightGreen -display $display_object
dr::createPacketAlias highlight28 -packet highlight28_lightMaroon -display $display_object
dr::createPacketAlias highlight29 -packet highlight29_lightPurple -display $display_object
dr::createPacketAlias highlight30 -packet highlight30_lightRed -display $display_object
dr::createPacketAlias ruler -packet ruler_white -display $display_object
dr::createPacketAlias runtime -packet runtime_TrueColorGhost -display $display_object
dr::createPacketAlias stroke -packet stroke_white -display $display_object
dr::createPacketAlias select1 -packet select1_yellow -display $display_object
dr::createPacketAlias select2 -packet select2_red -display $display_object
dr::createPacketAlias select3 -packet select3_blue -display $display_object
dr::createPacketAlias select4 -packet select4_purple -display $display_object
dr::createPacketAlias textAttach -packet annotate5 -display $display_object
dr::createPacketAlias termName -packet defaultTermName -display $display_object
dr::createPacketAlias voltageArea -packet defaultVoltageArea -display $display_object
dr::createPacketAlias voltageAreaGB -packet defaultGuardband -display $display_object
dr::createPacketAlias corridorArea -packet defaultCorridor -display $display_object
dr::createPacketAlias instance -packet defaultInstance -display $display_object
dr::createPacketAlias instanceCore -packet core -display $display_object
dr::createPacketAlias instanceSoftMacro -packet genericCellType -display $display_object
dr::createPacketAlias instanceBlackBox -packet genericCellType -display $display_object
dr::createPacketAlias instancePhysicalOnly -packet genericCellType -display $display_object
dr::createPacketAlias instancePad -packet genericCellType -display $display_object
dr::createPacketAlias instanceCover -packet genericCellType -display $display_object
dr::createPacketAlias instanceCoverBump -packet genericCellType -display $display_object
dr::createPacketAlias blockage -packet hardFence -display $display_object
dr::createPacketAlias blockagePartial -packet partialFence -display $display_object
dr::createPacketAlias blockagePin -packet softFence -display $display_object
dr::createPacketAlias blockageRouting -packet hardFence -display $display_object
dr::createPacketAlias blockageSoft -packet softFence -display $display_object
dr::createPacketAlias blockageOther -packet softFence -display $display_object
dr::createPacketAlias connNavPartial -packet highlight1_yellow -display $display_object
dr::createPacketAlias connNavFull -packet highlight2_red -display $display_object
dr::createPacketAlias connNavNone -packet highlight3_green -display $display_object
dr::createPacketAlias SR_HighlightFound_alias -packet SR_HighlightFound -display $display_object
dr::createPacketAlias SR_HighlightCurrent_alias -packet SR_HighlightCurrent -display $display_object
# Text Packets definition
dr::createTextPacket active -display $display_object -color inherited \
	 -backgroundColor TrueColorBright
dr::createTextPacket block -display $display_object -color inherited \
	 -bold yes
dr::createTextPacket blockName -display $display_object -color green \
	 -bold yes
dr::createTextPacket blockPort -display $display_object -color cadetBlue \
	 -bold yes
dr::createTextPacket deviceName -display $display_object -color green \
	 -bold yes
dr::createTextPacket instanceName -display $display_object -color green
dr::createTextPacket unboundInstanceName -display $display_object -color red \
	 -italic yes -underline yes
dr::createTextPacket instanceBlock -display $display_object -color green
dr::createTextPacket instanceSignal -display $display_object -color cadetBlue
dr::createTextPacket signal -display $display_object -color cadetBlue
dr::createTextPacket comment -display $display_object -color yellow \
	 -italic yes
dr::createTextPacket identifier -display $display_object -color brown
dr::createTextPacket includeFile -display $display_object -color red \
	 -underline yes
dr::createTextPacket keyword -display $display_object -color gray \
	 -bold yes
dr::createTextPacket directive -display $display_object -color inherited
dr::createTextPacket whitespace -display $display_object -color inherited
dr::createTextPacket dspfNet -display $display_object -color red
dr::createTextPacket other -display $display_object -color inherited
dr::createTextPacket annotate -display $display_object -color tan
dr::createTextPacket multipleProbes -display $display_object -color black \
	 -backgroundColor white
dr::createTextPacket markerAno -display $display_object -color black \
	 -backgroundColor blue
dr::createTextPacket markerInf -display $display_object -color black \
	 -backgroundColor green
dr::createTextPacket markerAck -display $display_object -color black \
	 -backgroundColor orange
dr::createTextPacket markerWarn -display $display_object -color black \
	 -backgroundColor yellow
dr::createTextPacket markerSEr -display $display_object -color black \
	 -backgroundColor orange
dr::createTextPacket markerErr -display $display_object -color black \
	 -backgroundColor white
dr::createTextPacket markerScr -display $display_object -color black \
	 -backgroundColor red
dr::createTextPacket markerCrt -display $display_object -color black \
	 -backgroundColor red
dr::createTextPacket markerFat -display $display_object -color black \
	 -backgroundColor red
dr::createTextPacket select -display $display_object -color inherited \
	 -backgroundColor orange -underline yes
dr::createTextPacket foundText -display $display_object -color black \
	 -backgroundColor red
dr::createTextPacket lineNumbers -display $display_object -color white \
	 -italic yes
dr::createTextPacket rulerCoordinate -display $display_object -color white \
	 -backgroundColor black
dr::createTextPacket highlight1 -display $display_object -color black \
	 -backgroundColor yellow
dr::createTextPacket highlight2 -display $display_object -color black \
	 -backgroundColor red
dr::createTextPacket highlight3 -display $display_object -color black \
	 -backgroundColor green
dr::createTextPacket highlight4 -display $display_object -color black \
	 -backgroundColor blue
dr::createTextPacket highlight5 -display $display_object -color black \
	 -backgroundColor purple
dr::createTextPacket highlight6 -display $display_object -color black \
	 -backgroundColor cyan
dr::createTextPacket highlight7 -display $display_object -color black \
	 -backgroundColor white
dr::createTextPacket highlight8 -display $display_object -color black \
	 -backgroundColor gold
dr::createTextPacket highlight9 -display $display_object -color black \
	 -backgroundColor maroon
dr::createTextPacket highlight10 -display $display_object -color black \
	 -backgroundColor gray
dr::createTextPacket plotpacket0 -display $display_object -color black \
	 -backgroundColor plotcolor0
dr::createTextPacket plotpacket1 -display $display_object -color black \
	 -backgroundColor plotcolor1
dr::createTextPacket plotpacket2 -display $display_object -color black \
	 -backgroundColor plotcolor2
dr::createTextPacket plotpacket3 -display $display_object -color black \
	 -backgroundColor plotcolor3
dr::createTextPacket plotpacket4 -display $display_object -color black \
	 -backgroundColor plotcolor4
dr::createTextPacket plotpacket5 -display $display_object -color black \
	 -backgroundColor plotcolor5
dr::createTextPacket plotpacket6 -display $display_object -color black \
	 -backgroundColor plotcolor6
dr::createTextPacket plotpacket7 -display $display_object -color black \
	 -backgroundColor plotcolor7
dr::createTextPacket plotpacket8 -display $display_object -color black \
	 -backgroundColor plotcolor8
dr::createTextPacket plotpacket9 -display $display_object -color black \
	 -backgroundColor plotcolor9
dr::createTextPacket plotpacket10 -display $display_object -color black \
	 -backgroundColor plotcolor10
dr::createTextPacket plotpacket11 -display $display_object -color black \
	 -backgroundColor plotcolor11
dr::createTextPacket plotpacket12 -display $display_object -color black \
	 -backgroundColor plotcolor12
dr::createTextPacket plotpacket13 -display $display_object -color black \
	 -backgroundColor plotcolor13
dr::createTextPacket plotpacket14 -display $display_object -color black \
	 -backgroundColor plotcolor14
dr::createTextPacket plotpacket15 -display $display_object -color black \
	 -backgroundColor plotcolor15
dr::createTextPacket plotpacket16 -display $display_object -color black \
	 -backgroundColor plotcolor16
dr::createTextPacket plotpacket17 -display $display_object -color black \
	 -backgroundColor plotcolor17
dr::createTextPacket plotpacket18 -display $display_object -color black \
	 -backgroundColor plotcolor18
dr::createTextPacket plotpacket19 -display $display_object -color black \
	 -backgroundColor plotcolor19
dr::createTextPacket partition_highlight_unknown -display $display_object -color inherited \
	 -backgroundColor green -bold no -underline no
dr::createTextPacket partition_highlight_analog -display $display_object -color inherited \
	 -backgroundColor cyan -bold no -underline no
dr::createTextPacket partition_highlight_digital -display $display_object -color inherited \
	 -backgroundColor white -bold no -underline no
dr::createTextPacket partition_highlight_AMS -display $display_object -color inherited \
	 -backgroundColor maroon -bold no -underline no
dr::createTextPacket partition_highlight_verilogA -display $display_object -color inherited \
	 -backgroundColor purple -bold no -underline no
dr::createTextPacket partition_highlight_mixed -display $display_object -color inherited \
	 -bold no -underline yes
dr::createTextPacket partition_highlight_mixed_analog -display $display_object -color inherited \
	 -backgroundColor cyan -bold no -underline yes
dr::createTextPacket partition_highlight_mixed_digital -display $display_object -color inherited \
	 -backgroundColor white -bold no -underline yes
dr::createTextPacket partition_highlight_mixed_AMS -display $display_object -color inherited \
	 -backgroundColor maroon -bold no -underline yes
dr::createTextPacket partition_highlight_mixed_verilogA -display $display_object -color inherited \
	 -backgroundColor purple -bold no -underline yes
dr::createTextPacket partition_highlight_IE_object -display $display_object -color inherited \
	 -underline yes
dr::createTextPacket interfaceElementA2D -display $display_object -color white \
	 -bold yes
dr::createTextPacket interfaceElementD2A -display $display_object -color magenta \
	 -bold yes
dr::createTextPacket interfaceElementBi -display $display_object -color orange \
	 -bold yes
dr::createTextPacket interfaceElementE2R -display $display_object -color brown \
	 -bold yes
dr::createTextPacket interfaceElementR2E -display $display_object -color green \
	 -bold yes
dr::createTextPacket interfaceElementE2N -display $display_object -color brown \
	 -bold yes
dr::createTextPacket interfaceElementN2E -display $display_object -color green \
	 -bold yes
# Colors definition
dr::createColor yellow -display $symDisplay_object -red 255 -green 255 -blue 0
dr::createColor white -display $symDisplay_object -red 255 -green 255 -blue 255
dr::createColor black -display $symDisplay_object -red 0 -green 0 -blue 0
dr::createColor silver -display $symDisplay_object -red 217 -green 230 -blue 255
dr::createColor cream -display $symDisplay_object -red 255 -green 255 -blue 204
dr::createColor pink -display $symDisplay_object -red 255 -green 187 -blue 253
dr::createColor magenta -display $symDisplay_object -red 255 -green 0 -blue 255
dr::createColor darkMagenta -display $symDisplay_object -red 128 -green 0 -blue 128
dr::createColor salmon -display $symDisplay_object -red 250 -green 128 -blue 114
dr::createColor lime -display $symDisplay_object -red 178 -green 255 -blue 154
dr::createColor tan -display $symDisplay_object -red 255 -green 230 -blue 191
dr::createColor cyan -display $symDisplay_object -red 0 -green 255 -blue 255
dr::createColor cadetBlue -display $symDisplay_object -red 57 -green 191 -blue 255
dr::createColor orange -display $symDisplay_object -red 255 -green 127 -blue 0
dr::createColor webOrange -display $symDisplay_object -red 255 -green 165 -blue 0
dr::createColor red -display $symDisplay_object -red 255 -green 0 -blue 0
dr::createColor purple -display $symDisplay_object -red 153 -green 0 -blue 230
dr::createColor green -display $symDisplay_object -red 67 -green 217 -blue 62
dr::createColor brown -display $symDisplay_object -red 191 -green 64 -blue 38
dr::createColor blue -display $symDisplay_object -red 0 -green 0 -blue 255
dr::createColor slate -display $symDisplay_object -red 140 -green 140 -blue 166
dr::createColor gold -display $symDisplay_object -red 217 -green 204 -blue 0
dr::createColor maroon -display $symDisplay_object -red 230 -green 31 -blue 13
dr::createColor violet -display $symDisplay_object -red 94 -green 0 -blue 230
dr::createColor forest -display $symDisplay_object -red 38 -green 140 -blue 107
dr::createColor chocolate -display $symDisplay_object -red 128 -green 38 -blue 38
dr::createColor navy -display $symDisplay_object -red 51 -green 51 -blue 153
dr::createColor gray -display $symDisplay_object -red 204 -green 204 -blue 217
dr::createColor lightWhite -display $symDisplay_object -red 127 -green 127 -blue 127
dr::createColor lightYellow -display $symDisplay_object -red 252 -green 255 -blue 207
dr::createColor lightRed -display $symDisplay_object -red 127 -green 0 -blue 0
dr::createColor lightPurple -display $symDisplay_object -red 76 -green 0 -blue 115
dr::createColor lightGreen -display $symDisplay_object -red 0 -green 102 -blue 51
dr::createColor lightGray -display $symDisplay_object -red 102 -green 102 -blue 108
dr::createColor lightGold -display $symDisplay_object -red 108 -green 102 -blue 0
dr::createColor lightMaroon -display $symDisplay_object -red 115 -green 15 -blue 6
dr::createColor lightCyan -display $symDisplay_object -red 0 -green 127 -blue 127
dr::createColor lightBlue -display $symDisplay_object -red 0 -green 0 -blue 127
dr::createColor winColor1 -display $symDisplay_object -red 166 -green 166 -blue 166
dr::createColor winColor2 -display $symDisplay_object -red 84 -green 84 -blue 84
dr::createColor winColor3 -display $symDisplay_object -red 189 -green 204 -blue 204
dr::createColor winColor4 -display $symDisplay_object -red 204 -green 204 -blue 204
dr::createColor winColor5 -display $symDisplay_object -red 199 -green 199 -blue 199
dr::createColor blinkRed -display $symDisplay_object -red 255 -green 0 -blue 0 -blink true
dr::createColor blinkYellow -display $symDisplay_object -red 255 -green 255 -blue 0 -blink true
dr::createColor blinkWhite -display $symDisplay_object -red 255 -green 255 -blue 255 -blink true
dr::createColor TrueColorBright -display $symDisplay_object -red 255 -green 255 -blue 0
dr::createColor TrueColorGhost -display $symDisplay_object -red 160 -green 200 -blue 240
dr::createColor plotcolor0 -display $symDisplay_object -red 255 -green 0 -blue 0
dr::createColor plotcolor1 -display $symDisplay_object -red 204 -green 0 -blue 255
dr::createColor plotcolor2 -display $symDisplay_object -red 0 -green 255 -blue 102
dr::createColor plotcolor3 -display $symDisplay_object -red 204 -green 255 -blue 0
dr::createColor plotcolor4 -display $symDisplay_object -red 0 -green 102 -blue 255
dr::createColor plotcolor5 -display $symDisplay_object -red 255 -green 153 -blue 0
dr::createColor plotcolor6 -display $symDisplay_object -red 255 -green 0 -blue 153
dr::createColor plotcolor7 -display $symDisplay_object -red 0 -green 255 -blue 255
dr::createColor plotcolor8 -display $symDisplay_object -red 51 -green 255 -blue 0
dr::createColor plotcolor9 -display $symDisplay_object -red 51 -green 0 -blue 255
dr::createColor plotcolor10 -display $symDisplay_object -red 255 -green 153 -blue 153
dr::createColor plotcolor11 -display $symDisplay_object -red 255 -green 161 -blue 163
dr::createColor plotcolor12 -display $symDisplay_object -red 153 -green 255 -blue 194
dr::createColor plotcolor13 -display $symDisplay_object -red 235 -green 255 -blue 153
dr::createColor plotcolor14 -display $symDisplay_object -red 136 -green 198 -blue 255
dr::createColor plotcolor15 -display $symDisplay_object -red 255 -green 214 -blue 153
dr::createColor plotcolor16 -display $symDisplay_object -red 171 -green 183 -blue 201
dr::createColor plotcolor17 -display $symDisplay_object -red 153 -green 255 -blue 255
dr::createColor plotcolor18 -display $symDisplay_object -red 173 -green 255 -blue 153
dr::createColor plotcolor19 -display $symDisplay_object -red 255 -green 153 -blue 153
dr::createColor plotcolor20 -display $symDisplay_object -red 237 -green 175 -blue 166
dr::createColor plotpacketrefcolor -display $symDisplay_object -red 255 -green 217 -blue 78
dr::createColor lxPack -display $symDisplay_object -red 217 -green 217 -blue 217
dr::createColor lxPackEdgeLight -display $symDisplay_object -red 255 -green 255 -blue 255
dr::createColor lxPackEdgeDark -display $symDisplay_object -red 128 -green 128 -blue 128
dr::createColor lxBackground -display $symDisplay_object -red 210 -green 210 -blue 210
dr::createColor lxDiffBuckColor -display $symDisplay_object -red 255 -green 245 -blue 192
dr::createColor lxDummy -display $symDisplay_object -red 255 -green 100 -blue 255
dr::createColor lxStackGroup -display $symDisplay_object -red 160 -green 0 -blue 85
dr::createColor lxCascodeDevice -display $symDisplay_object -red 75 -green 125 -blue 125
dr::createColor gold2 -display $symDisplay_object -red 150 -green 150 -blue 75
dr::createColor lxResInternalTerm -display $symDisplay_object -red 240 -green 240 -blue 240
dr::createColor lxResExternalTerm -display $symDisplay_object -red 140 -green 140 -blue 140
dr::createColor lxResMarker -display $symDisplay_object -red 255 -green 255 -blue 210
dr::createColor lxPStripRegion -display $symDisplay_object -red 170 -green 213 -blue 255
dr::createColor lxNStripRegion -display $symDisplay_object -red 255 -green 193 -blue 194
dr::createColor lxPODEGate -display $symDisplay_object -red 255 -green 187 -blue 253
dr::createColor lxTrack -display $symDisplay_object -red 160 -green 160 -blue 160
dr::createColor lxGuardRing -display $symDisplay_object -red 160 -green 160 -blue 200
dr::createColor lxFlightLine0 -display $symDisplay_object -red 255 -green 153 -blue 214
dr::createColor lxFlightLine1 -display $symDisplay_object -red 173 -green 153 -blue 255
dr::createColor lxFlightLine2 -display $symDisplay_object -red 75 -green 105 -blue 255
dr::createColor lxFlightLine3 -display $symDisplay_object -red 65 -green 255 -blue 121
dr::createColor lxFlightLine4 -display $symDisplay_object -red 255 -green 182 -blue 117
dr::createColor lxFlightLine5 -display $symDisplay_object -red 255 -green 255 -blue 255
dr::createColor lxMixStripRegion -display $symDisplay_object -red 232 -green 193 -blue 255
dr::createColor lxTap -display $symDisplay_object -red 166 -green 166 -blue 166
dr::createColor masterColor1 -display $symDisplay_object -red 255 -green 180 -blue 180
dr::createColor masterColor2 -display $symDisplay_object -red 255 -green 155 -blue 0
dr::createColor masterColor3 -display $symDisplay_object -red 255 -green 155 -blue 255
dr::createColor masterColor4 -display $symDisplay_object -red 255 -green 225 -blue 155
dr::createColor masterColor5 -display $symDisplay_object -red 155 -green 255 -blue 200
dr::createColor masterColor6 -display $symDisplay_object -red 155 -green 200 -blue 255
dr::createColor masterColor7 -display $symDisplay_object -red 155 -green 255 -blue 255
dr::createColor masterColor8 -display $symDisplay_object -red 55 -green 255 -blue 0
# Stipples definition
dr::createStipple blank -display $symDisplay_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple solid -display $symDisplay_object -pattern [ list \
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple dots -display $symDisplay_object -pattern [ list \
                                                                 { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple dots1 -display $symDisplay_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  } ]
dr::createStipple hLine -display $symDisplay_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple vLine -display $symDisplay_object -pattern [ list \
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  } ]
dr::createStipple cross -display $symDisplay_object -pattern [ list \
                                                                  { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                  { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                  { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                  { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  } ]
dr::createStipple grid -display $symDisplay_object -pattern [ list \
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple slash -display $symDisplay_object -pattern [ list \
                                                                  { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                  { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                  { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                  { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                  { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                  { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                  { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                  { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                  { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                  { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  } ]
dr::createStipple backSlash -display $symDisplay_object -pattern [ list \
                                                                      { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                      { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                      { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                      { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                      { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                      { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                      { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                      { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                      { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                      { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                      { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                      { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                      { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                                      { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                                      { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                                      { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  } ]
dr::createStipple hZigZag -display $symDisplay_object -pattern [ list \
                                                                    { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                                    { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                    { 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0  }\
                                                                    { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                    { 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1  }\
                                                                    { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                                    { 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                                    { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                                    { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                                    { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                                    { 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1  }\
                                                                    { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                                    { 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0  }\
                                                                    { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                                    { 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0  }\
                                                                    { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  } ]
dr::createStipple vZigZag -display $symDisplay_object -pattern [ list \
                                                                    { 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0  }\
                                                                    { 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                                    { 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0  }\
                                                                    { 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0  }\
                                                                    { 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0  }\
                                                                    { 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                                    { 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0  }\
                                                                    { 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1  }\
                                                                    { 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0  }\
                                                                    { 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                                    { 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0  }\
                                                                    { 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0  }\
                                                                    { 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0  }\
                                                                    { 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                                    { 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0  }\
                                                                    { 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1  } ]
dr::createStipple hCurb -display $symDisplay_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                                  { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                  { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                  { 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                                  { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                  { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                                  { 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple vCurb -display $symDisplay_object -pattern [ list \
                                                                  { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                  { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                  { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                  { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                                  { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                  { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                  { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                  { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  } ]
dr::createStipple brick -display $symDisplay_object -pattern [ list \
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                                  { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                                  { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                  { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                                  { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                                  { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                                  { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  } ]
dr::createStipple dagger -display $symDisplay_object -pattern [ list \
                                                                   { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                   { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                   { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                   { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                   { 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0  }\
                                                                   { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                   { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                   { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                                   { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                   { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                   { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                   { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                   { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                                   { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                   { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                                   { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  } ]
dr::createStipple triangle -display $symDisplay_object -pattern [ list \
                                                                     { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                     { 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                     { 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                     { 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                                     { 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0  }\
                                                                     { 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0  }\
                                                                     { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                     { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                     { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                     { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                                     { 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0  }\
                                                                     { 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0  }\
                                                                     { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                                     { 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1  }\
                                                                     { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                     { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple x -display $symDisplay_object -pattern [ list \
                                                              { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                              { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                              { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                              { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                              { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                              { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                              { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                              { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  } ]
# LineStyles definition
dr::createLineStyle solid -display $symDisplay_object -width 1 -pattern [ list 1 1 1 ]
dr::createLineStyle dashed -display $symDisplay_object -width 1 -pattern [ list 1 1 1 1 0 0 ]
dr::createLineStyle dots -display $symDisplay_object -width 1 -pattern [ list 1 0 0 ]
dr::createLineStyle dashDot -display $symDisplay_object -width 1 -pattern [ list 1 1 1 0 0 1 0 0 ]
dr::createLineStyle shortDash -display $symDisplay_object -width 1 -pattern [ list 1 1 0 0 ]
dr::createLineStyle doubleDash -display $symDisplay_object -width 1 -pattern [ list 1 1 1 1 0 0 1 1 0 0 ]
dr::createLineStyle longDash -display $symDisplay_object -width 1 -pattern [ list 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 ]
dr::createLineStyle hidden -display $symDisplay_object -width 1 -pattern [ list 1 0 0 0 ]
dr::createLineStyle hidden1 -display $symDisplay_object -width 1 -pattern [ list 1 0 0 0 0 0 0 0 ]
dr::createLineStyle mediumLine -display $symDisplay_object -width 2 -pattern [ list 1 1 1 ]
dr::createLineStyle mediumDashed -display $symDisplay_object -width 2 -pattern [ list 1 1 1 1 0 0 ]
dr::createLineStyle mediumDoubleDash -display $symDisplay_object -width 2 -pattern [ list 1 1 1 1 0 0 1 1 0 0 ]
dr::createLineStyle thickLine -display $symDisplay_object -width 3 -pattern [ list 1 1 1 ]
dr::createLineStyle thickDashed -display $symDisplay_object -width 3 -pattern [ list 1 1 1 1 0 0 ]
dr::createLineStyle thickDotted -display $symDisplay_object -width 3 -pattern [ list 1 1 1 0 0 0 ]
# Packets definition
dr::createPacket background -display $symDisplay_object -stipple blank \
               -lineStyle solid -fill lxBackground -outline lxBackground
dr::createPacket active -display $symDisplay_object -stipple blank \
-lineStyle mediumDashed -fill TrueColorBright -outline TrueColorBright
dr::createPacket lxFlightText -display $symDisplay_object -stipple solid \
                          -lineStyle mediumLine -fill white -outline white
dr::createPacket lxBrightLine -display $symDisplay_object -stipple solid \
                          -lineStyle mediumLine -fill white -outline white
dr::createPacket lxDarkLine -display $symDisplay_object -stipple blank \
      -lineStyle mediumLine -fill lxPackEdgeDark -outline lxPackEdgeDark
dr::createPacket lxText -display $symDisplay_object -stipple blank \
                 -lineStyle solid -fill winColor2 -outline winColor2
dr::createPacket lxDummyText -display $symDisplay_object -stipple blank \
                      -lineStyle solid -fill winColor1 -outline winColor1
dr::createPacket lxMouseHOver -display $symDisplay_object -stipple blank \
                   -lineStyle solid -fill lightYellow -outline lightYellow
dr::createPacket lxEmptyTile -display $symDisplay_object -stipple solid \
              -lineStyle mediumLine -fill winColor5 -outline lxBackground
dr::createPacket lxMOSTile -display $symDisplay_object -stipple blank \
              -lineStyle solid -fill lxBackground -outline lxBackground
dr::createPacket lxCapTile -display $symDisplay_object -stipple blank \
              -lineStyle solid -fill lxBackground -outline lxBackground
dr::createPacket lxResTile -display $symDisplay_object -stipple blank \
              -lineStyle solid -fill lxBackground -outline lxBackground
dr::createPacket lxInstTile -display $symDisplay_object -stipple blank \
               -lineStyle solid -fill lxBackground -outline lxBackground
dr::createPacket lxPGate -display $symDisplay_object -stipple hZigZag \
           -lineStyle mediumLine -fill plotcolor14 -outline plotcolor14
dr::createPacket lxPStripRegion -display $symDisplay_object -stipple dots \
              -lineStyle solid -fill lxPStripRegion -outline lxPStripRegion
dr::createPacket lxNGate -display $symDisplay_object -stipple hZigZag \
           -lineStyle mediumLine -fill plotcolor11 -outline plotcolor11
dr::createPacket lxNStripRegion -display $symDisplay_object -stipple dots \
              -lineStyle solid -fill lxNStripRegion -outline lxNStripRegion
dr::createPacket lxMixStripRegion -display $symDisplay_object -stipple dots \
            -lineStyle solid -fill lxMixStripRegion -outline lxMixStripRegion
dr::createPacket lxGuardRing -display $symDisplay_object -stipple solid \
                  -lineStyle solid -fill lxGuardRing -outline lxGuardRing
dr::createPacket lxPGateMarker -display $symDisplay_object -stipple solid \
               -lineStyle mediumLine -fill plotcolor14 -outline plotcolor14
dr::createPacket lxNGateMarker -display $symDisplay_object -stipple solid \
               -lineStyle mediumLine -fill plotcolor11 -outline plotcolor11
dr::createPacket lxSourceODMarker -display $symDisplay_object -stipple x \
                                                  -fill lime -outline lime
dr::createPacket lxSourceOD -display $symDisplay_object -stipple slash \
                          -lineStyle mediumLine -fill lime -outline lime
dr::createPacket lxDrainOD -display $symDisplay_object -stipple slash \
                         -lineStyle mediumLine -fill lime -outline lime
dr::createPacket lxSeparate -display $symDisplay_object -stipple blank \
               -lineStyle solid -fill lxBackground -outline lxBackground -fillStyle stipple
dr::createPacket lxSeparateHL -display $symDisplay_object -stipple solid \
                                  -fill lxBackground -outline lxBackground -fillStyle stipple
dr::createPacket lxAbut -display $symDisplay_object -stipple blank \
                           -lineStyle solid -fill lime -outline lime
dr::createPacket lxPODEAbut -display $symDisplay_object -stipple hZigZag \
                            -lineStyle mediumLine -fill pink -outline pink
dr::createPacket lxPODEGate -display $symDisplay_object -stipple hZigZag \
                -lineStyle mediumLine -fill lxPODEGate -outline lxPODEGate
dr::createPacket lxPODEMarker -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxPODEGate -outline lxPODEGate
dr::createPacket lxSameFinger -display $symDisplay_object -stipple blank \
                            -lineStyle mediumLine -fill lime -outline lime
dr::createPacket lxSameStackUnit -display $symDisplay_object -stipple blank \
                               -lineStyle mediumLine -fill lime -outline lime
dr::createPacket lxSameCascodeDevice -display $symDisplay_object -stipple blank \
                                   -lineStyle mediumLine -fill lime -outline lime
dr::createPacket lxPack -display $symDisplay_object -stipple blank \
           -lineStyle solid -fill lxBackground -outline lxBackground
dr::createPacket lxFinger -display $symDisplay_object -stipple blank \
                  -lineStyle mediumDashed -fill purple -outline purple
dr::createPacket lxStackGroup -display $symDisplay_object -stipple blank \
      -lineStyle mediumDoubleDash -fill lxStackGroup -outline lxStackGroup
dr::createPacket lxCascodeDevice -display $symDisplay_object -stipple blank \
       -lineStyle mediumDashed -fill lxCascodeDevice -outline lxCascodeDevice
dr::createPacket lxFlightLine -display $symDisplay_object -stipple blank \
            -lineStyle mediumLine -fill lxBackground -outline lxBackground
dr::createPacket lxFlightLineDot -display $symDisplay_object -stipple blank \
               -lineStyle mediumLine -fill lxBackground -outline lxBackground
dr::createPacket lxODFlightLine -display $symDisplay_object -stipple blank \
              -lineStyle mediumLine -fill lxBackground -outline lxBackground
dr::createPacket lxODFlightLineDot -display $symDisplay_object -stipple blank \
                 -lineStyle mediumLine -fill lxBackground -outline lxBackground
dr::createPacket lxGateFlightLineDot -display $symDisplay_object -stipple blank \
                   -lineStyle mediumLine -fill lxBackground -outline lxBackground
dr::createPacket lxGateConnectedFlightLineDot -display $symDisplay_object -stipple blank \
                            -lineStyle mediumLine -fill lxBackground -outline lxBackground
dr::createPacket lxGateFlightLine -display $symDisplay_object -stipple blank \
                -lineStyle mediumLine -fill lxBackground -outline lxBackground
dr::createPacket lxGateConnectedFlightLine -display $symDisplay_object -stipple blank \
                         -lineStyle mediumLine -fill lxBackground -outline lxBackground
dr::createPacket lxDefaultHighlight -display $symDisplay_object -stipple solid \
                                -lineStyle mediumLine -fill white -outline white
dr::createPacket lxFlightLineLayer0 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine0 -outline lxFlightLine0
dr::createPacket lxFlightLineLayer1 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine1 -outline lxFlightLine1
dr::createPacket lxFlightLineLayer2 -display $symDisplay_object -stipple solid \
              -lineStyle mediumDashed -fill lxFlightLine2 -outline lxFlightLine2
dr::createPacket lxFlightLineLayer3 -display $symDisplay_object -stipple solid \
              -lineStyle mediumDashed -fill lxFlightLine3 -outline lxFlightLine3
dr::createPacket lxFlightLineLayer4 -display $symDisplay_object -stipple solid \
          -lineStyle mediumDoubleDash -fill lxFlightLine4 -outline lxFlightLine4
dr::createPacket lxFlightLineLayer5 -display $symDisplay_object -stipple solid \
          -lineStyle mediumDoubleDash -fill lxFlightLine5 -outline lxFlightLine5
dr::createPacket lxFlightLineDot0_0 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine0 -outline lxFlightLine0
dr::createPacket lxFlightLineDot0_1 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine0 -outline lxFlightLine1
dr::createPacket lxFlightLineDot1_1 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine1 -outline lxFlightLine1
dr::createPacket lxFlightLineDot0_2 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine0 -outline lxFlightLine2
dr::createPacket lxFlightLineDot1_2 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine1 -outline lxFlightLine2
dr::createPacket lxFlightLineDot2_2 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine2 -outline lxFlightLine2
dr::createPacket lxFlightLineDot0_3 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine0 -outline lxFlightLine3
dr::createPacket lxFlightLineDot1_3 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine1 -outline lxFlightLine3
dr::createPacket lxFlightLineDot2_3 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine2 -outline lxFlightLine3
dr::createPacket lxFlightLineDot3_3 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine3 -outline lxFlightLine3
dr::createPacket lxFlightLineDot0_4 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine0 -outline lxFlightLine4
dr::createPacket lxFlightLineDot1_4 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine1 -outline lxFlightLine4
dr::createPacket lxFlightLineDot2_4 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine2 -outline lxFlightLine4
dr::createPacket lxFlightLineDot3_4 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine3 -outline lxFlightLine4
dr::createPacket lxFlightLineDot4_4 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine4 -outline lxFlightLine4
dr::createPacket lxFlightLineDot0_5 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine0 -outline lxFlightLine5
dr::createPacket lxFlightLineDot1_5 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine1 -outline lxFlightLine5
dr::createPacket lxFlightLineDot2_5 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine2 -outline lxFlightLine5
dr::createPacket lxFlightLineDot3_5 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine3 -outline lxFlightLine5
dr::createPacket lxFlightLineDot4_5 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine4 -outline lxFlightLine5
dr::createPacket lxFlightLineDot5_5 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxFlightLine5 -outline lxFlightLine5
dr::createPacket lxFlightLineTrack -display $symDisplay_object -stipple blank \
               -lineStyle mediumDashed -fill lxBackground -outline lxBackground
dr::createPacket lxFlightLineTrackHL -display $symDisplay_object -stipple blank \
                           -lineStyle mediumDashed -fill lxTrack -outline lxTrack
dr::createPacket lxFlightLineConflict -display $symDisplay_object -stipple blank \
                                    -lineStyle mediumDashed -fill red -outline red
dr::createPacket lxAlignMarker -display $symDisplay_object -stipple solid \
                              -lineStyle solid -fill salmon -outline salmon
dr::createPacket lxBulkLabel -display $symDisplay_object -stipple solid \
                              -lineStyle solid -fill white -outline white
dr::createPacket lxDiffBulkLabel -display $symDisplay_object -stipple solid \
              -lineStyle solid -fill lxDiffBuckColor -outline lxDiffBuckColor
dr::createPacket lxDummy -display $symDisplay_object -stipple solid \
                 -lineStyle mediumLine -fill lxDummy -outline lxDummy
dr::createPacket lxDummyStipple -display $symDisplay_object -stipple hZigZag \
                          -lineStyle mediumLine -fill lxDummy -outline lxDummy
dr::createPacket lxResInternalTerm -display $symDisplay_object -stipple slash \
       -lineStyle mediumLine -fill lxResInternalTerm -outline lxResInternalTerm
dr::createPacket lxResExternalTerm -display $symDisplay_object -stipple slash \
       -lineStyle mediumLine -fill lxResExternalTerm -outline lxResExternalTerm
dr::createPacket lxResMarker -display $symDisplay_object -stipple slash \
             -lineStyle mediumLine -fill lxResMarker -outline lxResMarker
dr::createPacket lxDev0 -display $symDisplay_object -stipple solid \
                        -lineStyle mediumLine -fill red -outline red
dr::createPacket lxDev1 -display $symDisplay_object -stipple solid \
                      -lineStyle mediumLine -fill blue -outline blue
dr::createPacket lxDev2 -display $symDisplay_object -stipple solid \
-lineStyle mediumLine -fill plotpacketrefcolor -outline plotpacketrefcolor
dr::createPacket lxDev3 -display $symDisplay_object -stipple solid \
                    -lineStyle mediumLine -fill brown -outline brown
dr::createPacket lxDev4 -display $symDisplay_object -stipple solid \
                    -lineStyle mediumLine -fill green -outline green
dr::createPacket lxDev5 -display $symDisplay_object -stipple solid \
            -lineStyle mediumLine -fill lightBlue -outline lightBlue
dr::createPacket lxDev6 -display $symDisplay_object -stipple solid \
                  -lineStyle mediumLine -fill orange -outline orange
dr::createPacket lxDev7 -display $symDisplay_object -stipple solid \
                  -lineStyle mediumLine -fill purple -outline purple
dr::createPacket lxDev8 -display $symDisplay_object -stipple solid \
                    -lineStyle mediumLine -fill gold2 -outline gold2
dr::createPacket lxDev9 -display $symDisplay_object -stipple solid \
            -lineStyle mediumLine -fill lightCyan -outline lightCyan
dr::createPacket lxHighlight0 -display $symDisplay_object -stipple solid \
              -lineStyle mediumLine -fill plotcolor20 -outline plotcolor20
dr::createPacket lxHighlight1 -display $symDisplay_object -stipple solid \
                              -lineStyle mediumLine -fill tan -outline tan
dr::createPacket lxHighlight2 -display $symDisplay_object -stipple solid \
                            -lineStyle mediumLine -fill cyan -outline cyan
dr::createPacket lxHighlight3 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill plotcolor5 -outline plotcolor5
dr::createPacket lxHighlight4 -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill plotcolor2 -outline plotcolor2
dr::createPacket lxHighlight5 -display $symDisplay_object -stipple solid \
-lineStyle mediumLine -fill plotpacketrefcolor -outline plotpacketrefcolor
dr::createPacket lxHighlight6 -display $symDisplay_object -stipple solid \
              -lineStyle mediumLine -fill plotcolor13 -outline plotcolor13
dr::createPacket lxHighlight7 -display $symDisplay_object -stipple solid \
              -lineStyle mediumLine -fill plotcolor16 -outline plotcolor16
dr::createPacket lxHighlight8 -display $symDisplay_object -stipple solid \
              -lineStyle mediumLine -fill plotcolor19 -outline plotcolor19
dr::createPacket lxHighlight9 -display $symDisplay_object -stipple solid \
              -lineStyle mediumLine -fill plotcolor14 -outline plotcolor14
dr::createPacket lxSelectable0 -display $symDisplay_object -stipple inherited \
                        -lineStyle mediumDashed -fill inherited -outline yellow
dr::createPacket lxSelectable1 -display $symDisplay_object -stipple inherited \
                           -lineStyle mediumDashed -fill inherited -outline red
dr::createPacket lxSelectable2 -display $symDisplay_object -stipple inherited \
                               -lineStyle dashed -fill inherited -outline green
dr::createPacket lxSelectable3 -display $symDisplay_object -stipple inherited \
                                -lineStyle dashed -fill inherited -outline blue
dr::createPacket lxSelectable4 -display $symDisplay_object -stipple inherited \
                              -lineStyle dashed -fill inherited -outline purple
dr::createPacket lxSelectable5 -display $symDisplay_object -stipple inherited \
                                -lineStyle dashed -fill inherited -outline cyan
dr::createPacket lxSelectable6 -display $symDisplay_object -stipple inherited \
                               -lineStyle dashed -fill inherited -outline white
dr::createPacket lxSelectable7 -display $symDisplay_object -stipple inherited \
                                -lineStyle dashed -fill inherited -outline gold
dr::createPacket lxSelectable8 -display $symDisplay_object -stipple inherited \
                              -lineStyle dashed -fill inherited -outline maroon
dr::createPacket lxSelectable9 -display $symDisplay_object -stipple inherited \
                                -lineStyle dashed -fill inherited -outline gray
dr::createPacket lxSelectable10 -display $symDisplay_object -stipple X \
                                -lineStyle dashed -fill red -outline red -fillStyle X
dr::createPacket lxHighlightPGate -display $symDisplay_object -stipple solid \
                                          -fill plotcolor4 -outline plotcolor4
dr::createPacket lxHighlightNGate -display $symDisplay_object -stipple solid \
                                          -fill plotcolor0 -outline plotcolor0
dr::createPacket lxHighlightDummy -display $symDisplay_object -stipple solid \
                                                -fill lxDummy -outline lxDummy
dr::createPacket lxHighlightDev0 -display $symDisplay_object -stipple backSlash \
                                                           -fill red -outline red
dr::createPacket lxHighlightDev1 -display $symDisplay_object -stipple backSlash \
                                                         -fill blue -outline blue
dr::createPacket lxHighlightDev2 -display $symDisplay_object -stipple backSlash \
                             -fill plotpacketrefcolor -outline plotpacketrefcolor
dr::createPacket lxHighlightDev3 -display $symDisplay_object -stipple backSlash \
                                                       -fill brown -outline brown
dr::createPacket lxHighlightDev4 -display $symDisplay_object -stipple backSlash \
                                                       -fill green -outline green
dr::createPacket lxHighlightDev5 -display $symDisplay_object -stipple backSlash \
                                               -fill lightBlue -outline lightBlue
dr::createPacket lxHighlightDev6 -display $symDisplay_object -stipple backSlash \
                                                     -fill orange -outline orange
dr::createPacket lxHighlightDev7 -display $symDisplay_object -stipple backSlash \
                                                     -fill purple -outline purple
dr::createPacket lxHighlightDev8 -display $symDisplay_object -stipple backSlash \
                                                       -fill gold2 -outline gold2
dr::createPacket lxHighlightDev9 -display $symDisplay_object -stipple backSlash \
                                               -fill lightCyan -outline lightCyan
dr::createPacket lxTap -display $symDisplay_object -stipple solid \
                   -lineStyle mediumLine -fill lxTap -outline lxTap
dr::createPacket lxTapStipple -display $symDisplay_object -stipple hZigZag \
                            -lineStyle mediumLine -fill lxTap -outline lxTap
dr::createPacket lxTapLayer -display $symDisplay_object -stipple solid \
                      -lineStyle mediumLine -fill lxPack -outline lxPack
dr::createPacket lxInspectPreset -display $symDisplay_object -stipple cross \
                                                 -fill purple -outline purple
dr::createPacket lxInspectAbutBreaks -display $symDisplay_object -stipple inherited \
                                     -lineStyle mediumLine -fill black -outline black -fillStyle X
dr::createPacket lxInspectCentroidAxes -display $symDisplay_object -stipple solid \
                                   -lineStyle mediumLine -fill black -outline black -fillStyle outline
dr::createPacket lxInspectCentroid0 -display $symDisplay_object -stipple solid \
                                    -lineStyle mediumLine -fill red -outline red -fillStyle outline
dr::createPacket lxInspectCentroid1 -display $symDisplay_object -stipple solid \
                                  -lineStyle mediumLine -fill blue -outline blue -fillStyle outline
dr::createPacket lxInspectCentroid2 -display $symDisplay_object -stipple solid \
      -lineStyle mediumLine -fill plotpacketrefcolor -outline plotpacketrefcolor -fillStyle outline
dr::createPacket lxInspectCentroid3 -display $symDisplay_object -stipple solid \
                                -lineStyle mediumLine -fill brown -outline brown -fillStyle outline
dr::createPacket lxInspectCentroid4 -display $symDisplay_object -stipple solid \
                                -lineStyle mediumLine -fill green -outline green -fillStyle outline
dr::createPacket lxInspectCentroid5 -display $symDisplay_object -stipple solid \
                        -lineStyle mediumLine -fill lightBlue -outline lightBlue -fillStyle outline
dr::createPacket lxInspectCentroid6 -display $symDisplay_object -stipple solid \
                              -lineStyle mediumLine -fill orange -outline orange -fillStyle outline
dr::createPacket lxInspectCentroid7 -display $symDisplay_object -stipple solid \
                              -lineStyle mediumLine -fill purple -outline purple -fillStyle outline
dr::createPacket lxInspectCentroid8 -display $symDisplay_object -stipple solid \
                                -lineStyle mediumLine -fill gold2 -outline gold2 -fillStyle outline
dr::createPacket lxInspectCentroid9 -display $symDisplay_object -stipple solid \
                        -lineStyle mediumLine -fill lightCyan -outline lightCyan -fillStyle outline
dr::createPacket lxPMosBackground -display $symDisplay_object -stipple inherited \
                           -lineStyle inherited -fill inherited -outline inherited
dr::createPacket lxNMosBackground -display $symDisplay_object -stipple inherited \
                           -lineStyle inherited -fill inherited -outline inherited
dr::createPacket lxCapacitorBackground -display $symDisplay_object -stipple inherited \
                                -lineStyle inherited -fill inherited -outline inherited
dr::createPacket lxResistorBackground -display $symDisplay_object -stipple inherited \
                               -lineStyle inherited -fill inherited -outline inherited
dr::createPacket lxInstanceBackground -display $symDisplay_object -stipple inherited \
                               -lineStyle inherited -fill inherited -outline inherited
dr::createPacket lxPGateMaster1 -display $symDisplay_object -stipple inherited \
                         -lineStyle inherited -fill inherited -outline inherited
dr::createPacket lxPGateMaster2 -display $symDisplay_object -stipple inherited \
                         -lineStyle inherited -fill inherited -outline inherited
dr::createPacket lxPGateMaster3 -display $symDisplay_object -stipple inherited \
                         -lineStyle inherited -fill inherited -outline inherited
dr::createPacket lxPGateMaster4 -display $symDisplay_object -stipple inherited \
                         -lineStyle inherited -fill inherited -outline inherited
dr::createPacket lxNGateMaster1 -display $symDisplay_object -stipple inherited \
                         -lineStyle inherited -fill inherited -outline inherited
dr::createPacket lxNGateMaster2 -display $symDisplay_object -stipple inherited \
                         -lineStyle inherited -fill inherited -outline inherited
dr::createPacket lxNGateMaster3 -display $symDisplay_object -stipple inherited \
                         -lineStyle inherited -fill inherited -outline inherited
dr::createPacket lxNGateMaster4 -display $symDisplay_object -stipple inherited \
                         -lineStyle inherited -fill inherited -outline inherited
dr::createPacket lxPGateOrient -display $symDisplay_object -stipple solid \
               -lineStyle mediumLine -fill plotcolor14 -outline plotcolor14
dr::createPacket lxNGateOrient -display $symDisplay_object -stipple solid \
               -lineStyle mediumLine -fill plotcolor11 -outline plotcolor11
dr::createPacket lxPODEOrient -display $symDisplay_object -stipple solid \
                -lineStyle mediumLine -fill lxPODEGate -outline lxPODEGate
dr::createPacket lxDummyOrient -display $symDisplay_object -stipple solid \
                       -lineStyle mediumLine -fill lxDummy -outline lxDummy
dr::createPacket lxTapOrient -display $symDisplay_object -stipple solid \
                         -lineStyle mediumLine -fill lxTap -outline lxTap
dr::createPacket lxPenaltyTiles -display $symDisplay_object -stipple vZigZag \
                    -lineStyle mediumLine -fill red -outline lxResExternalTerm
# Colors definition
dr::createColor yellow -display $psc_object -red 255 -green 255 -blue 0
dr::createColor white -display $psc_object -red 255 -green 255 -blue 255
dr::createColor black -display $psc_object -red 0 -green 0 -blue 0
dr::createColor blue -display $psc_object -red 0 -green 0 -blue 255
dr::createColor brown -display $psc_object -red 191 -green 64 -blue 38
dr::createColor cadetBlue -display $psc_object -red 57 -green 191 -blue 255
dr::createColor chocolate -display $psc_object -red 128 -green 38 -blue 38
dr::createColor cream -display $psc_object -red 255 -green 255 -blue 204
dr::createColor cyan -display $psc_object -red 0 -green 255 -blue 255
dr::createColor emegreen -display $psc_object -red 0 -green 201 -blue 87
dr::createColor forest -display $psc_object -red 38 -green 140 -blue 107
dr::createColor gold -display $psc_object -red 217 -green 204 -blue 0
dr::createColor green -display $psc_object -red 0 -green 204 -blue 102
dr::createColor indigo -display $psc_object -red 75 -green 0 -blue 130
dr::createColor lightpink -display $psc_object -red 255 -green 196 -blue 209
dr::createColor lime -display $psc_object -red 0 -green 255 -blue 0
dr::createColor magenta -display $psc_object -red 255 -green 0 -blue 255
dr::createColor maroon -display $psc_object -red 230 -green 31 -blue 13
dr::createColor navy -display $psc_object -red 51 -green 51 -blue 153
dr::createColor orange -display $psc_object -red 255 -green 128 -blue 0
dr::createColor pink -display $psc_object -red 255 -green 191 -blue 242
dr::createColor purple -display $psc_object -red 153 -green 0 -blue 230
dr::createColor red -display $psc_object -red 255 -green 0 -blue 0
dr::createColor silver -display $psc_object -red 217 -green 230 -blue 255
dr::createColor slate -display $psc_object -red 140 -green 140 -blue 166
dr::createColor tan -display $psc_object -red 255 -green 230 -blue 191
dr::createColor violet -display $psc_object -red 94 -green 0 -blue 230
dr::createColor winBack -display $psc_object -red 224 -green 224 -blue 224
dr::createColor winColor1 -display $psc_object -red 166 -green 166 -blue 166
dr::createColor winColor2 -display $psc_object -red 115 -green 115 -blue 115
dr::createColor winColor3 -display $psc_object -red 189 -green 204 -blue 204
dr::createColor winColor4 -display $psc_object -red 204 -green 204 -blue 204
dr::createColor winColor5 -display $psc_object -red 199 -green 199 -blue 199
dr::createColor winFore -display $psc_object -red 128 -green 0 -blue 0
dr::createColor winText -display $psc_object -red 51 -green 51 -blue 51
# Stipples definition
dr::createStipple dots -display $psc_object -pattern [ list \
                                                          { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple hLine -display $psc_object -pattern [ list \
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple hLine2 -display $psc_object -pattern [ list \
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple vLine -display $psc_object -pattern [ list \
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  } ]
dr::createStipple cross -display $psc_object -pattern [ list \
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  } ]
dr::createStipple miniHatch -display $psc_object -pattern [ list \
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple grid -display $psc_object -pattern [ list \
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                          { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple slash -display $psc_object -pattern [ list \
                                                           { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  } ]
dr::createStipple halfslash -display $psc_object -pattern [ list \
                                                               { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  } ]
dr::createStipple backSlash -display $psc_object -pattern [ list \
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                               { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                               { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  } ]
dr::createStipple hZigZag -display $psc_object -pattern [ list \
                                                             { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                             { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                             { 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0  }\
                                                             { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                             { 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1  }\
                                                             { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                             { 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                             { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                             { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                             { 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1  }\
                                                             { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                             { 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0  }\
                                                             { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                             { 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0  }\
                                                             { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  } ]
dr::createStipple vZigZag -display $psc_object -pattern [ list \
                                                             { 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0  }\
                                                             { 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                             { 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0  }\
                                                             { 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0  }\
                                                             { 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0  }\
                                                             { 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                             { 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0  }\
                                                             { 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1  }\
                                                             { 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0  }\
                                                             { 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                             { 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0  }\
                                                             { 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0  }\
                                                             { 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0  }\
                                                             { 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                             { 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0  }\
                                                             { 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1  } ]
dr::createStipple rvZigZag -display $psc_object -pattern [ list \
                                                              { 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1  }\
                                                              { 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0  }\
                                                              { 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0  }\
                                                              { 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0  }\
                                                              { 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0  }\
                                                              { 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                              { 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0  }\
                                                              { 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1  }\
                                                              { 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0  }\
                                                              { 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0  }\
                                                              { 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0  }\
                                                              { 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0  }\
                                                              { 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                              { 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0  } ]
dr::createStipple hCurb -display $psc_object -pattern [ list \
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                           { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                           { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                           { 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                           { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                           { 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1  }\
                                                           { 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple vCurb -display $psc_object -pattern [ list \
                                                           { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                           { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                           { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                           { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                           { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                           { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                           { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                           { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0  } ]
dr::createStipple brick -display $psc_object -pattern [ list \
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  } ]
dr::createStipple dagger -display $psc_object -pattern [ list \
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                            { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                            { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                            { 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0  }\
                                                            { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                            { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                            { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                            { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                            { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                            { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                            { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                            { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                            { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  } ]
dr::createStipple triangle -display $psc_object -pattern [ list \
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0  }\
                                                              { 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                              { 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple x -display $psc_object -pattern [ list \
                                                       { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                       { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                       { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                       { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                       { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                       { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                       { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                       { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                       { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                       { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                       { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                       { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                       { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                       { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                       { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                       { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  } ]
dr::createStipple dot1 -display $psc_object -pattern [ list \
                                                          { 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple dot2 -display $psc_object -pattern [ list \
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple dot3 -display $psc_object -pattern [ list \
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple dot4 -display $psc_object -pattern [ list \
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple checker -display $psc_object -pattern [ list \
                                                             { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                             { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                             { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                             { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                             { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                             { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                             { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                             { 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  }\
                                                             { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  }\
                                                             { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  }\
                                                             { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  }\
                                                             { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  }\
                                                             { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  }\
                                                             { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  }\
                                                             { 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1  } ]
dr::createStipple viap -display $psc_object -pattern [ list \
                                                          { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1  } ]
dr::createStipple metal1S -display $psc_object -pattern [ list \
                                                             { 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1  } ]
dr::createStipple metal2S -display $psc_object -pattern [ list \
                                                             { 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1  } ]
dr::createStipple gnd2S -display $psc_object -pattern [ list \
                                                           { 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1  }\
                                                           { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                           { 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0  }\
                                                           { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                           { 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1  }\
                                                           { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                           { 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0  }\
                                                           { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  } ]
dr::createStipple vcc2S -display $psc_object -pattern [ list \
                                                           { 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0  }\
                                                           { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                           { 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1  }\
                                                           { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                           { 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0  }\
                                                           { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                           { 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1  }\
                                                           { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                           { 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  } ]
dr::createStipple vcc1S -display $psc_object -pattern [ list \
                                                           { 1 0 0 1 1 0 0 0 1 0 0 1 1 0 0 0  }\
                                                           { 0 1 0 0 1 0 0 0 0 1 0 0 1 0 0 0  }\
                                                           { 0 0 1 0 0 1 1 0 0 0 1 0 0 1 1 0  }\
                                                           { 0 0 0 1 0 0 1 0 0 0 0 1 0 0 1 0  }\
                                                           { 1 0 0 0 1 0 0 1 1 0 0 0 1 0 0 1  }\
                                                           { 1 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0  }\
                                                           { 0 1 1 0 0 0 1 0 0 1 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 0 1 0 0 1 0 0 0 0 1  }\
                                                           { 1 0 0 1 1 0 0 0 1 0 0 1 1 0 0 0  }\
                                                           { 0 1 0 0 1 0 0 0 0 1 0 0 1 0 0 0  }\
                                                           { 0 0 1 0 0 1 1 0 0 0 1 0 0 1 1 0  }\
                                                           { 0 0 0 1 0 0 1 0 0 0 0 1 0 0 1 0  }\
                                                           { 1 0 0 0 1 0 0 1 1 0 0 0 1 0 0 1  }\
                                                           { 1 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0  }\
                                                           { 0 1 1 0 0 0 1 0 0 1 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 0 1 0 0 1 0 0 0 0 1  } ]
dr::createStipple poly2p -display $psc_object -pattern [ list \
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 1 1 1 0 0 0 0 0 1 1 0 0 0 0  }\
                                                            { 0 0 1 0 0 1 0 0 0 1 0 0 1 0 0 0  }\
                                                            { 0 0 1 0 0 1 0 0 0 0 0 0 1 0 0 0  }\
                                                            { 0 0 1 1 1 0 0 0 0 0 0 1 0 0 0 0  }\
                                                            { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                            { 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                            { 0 0 1 0 0 0 0 0 0 1 1 1 1 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple contp -display $psc_object -pattern [ list \
                                                           { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                           { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                           { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                           { 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                           { 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple pplusp -display $psc_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple wellp -display $psc_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple checker1 -display $psc_object -pattern [ list \
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                              { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  } ]
dr::createStipple checker2 -display $psc_object -pattern [ list \
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  } ]
dr::createStipple invCross -display $psc_object -pattern [ list \
                                                              { 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                              { 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                              { 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                              { 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                              { 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                              { 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                              { 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  }\
                                                              { 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1  }\
                                                              { 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0  } ]
dr::createStipple wellBp -display $psc_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 0 0 0 1 1 1 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 1 1 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 1 1 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 1 0 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 1 1 1 0 0 1 1 0 1 1 0 0 1 1 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 1 1 0 0 1 1 0 1 1 0 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 1 1 0 0 1 1 0 1 1 0 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 1 1 0 0 1 1 0 1 1 0 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 1 1 0 0 1 0 0 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple cwellBp -display $psc_object -pattern [ list \
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                                  { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple capID -display $psc_object -pattern [ list \
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0  }\
                                                           { 0 0 0 0 1 0 0 1 1 0 0 1 0 0 0 0  }\
                                                           { 0 0 0 1 0 0 0 1 1 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple resID -display $psc_object -pattern [ list \
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 1 1 1 0 1 0 0 1 1 1 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple diodeID -display $psc_object -pattern [ list \
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 1 0 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 0 1 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 0 0 1 0 1 0 0 0 0  }\
                                                             { 0 0 0 1 1 1 1 0 0 0 1 1 1 1 0 0  }\
                                                             { 0 0 0 0 0 0 1 0 0 1 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 0 1 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 1 0 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
# LineStyles definition
dr::createLineStyle solid -display $psc_object -width 1 -pattern [ list 1 1 1 ]
dr::createLineStyle dashed -display $psc_object -width 1 -pattern [ list 1 1 1 1 0 0 ]
dr::createLineStyle dots -display $psc_object -width 1 -pattern [ list 1 0 0 ]
dr::createLineStyle dashDot -display $psc_object -width 1 -pattern [ list 1 1 1 0 0 1 0 0 ]
dr::createLineStyle shortDash -display $psc_object -width 1 -pattern [ list 1 1 0 0 ]
dr::createLineStyle doubleDash -display $psc_object -width 1 -pattern [ list 1 1 1 1 0 0 1 1 0 0 ]
dr::createLineStyle hidden -display $psc_object -width 1 -pattern [ list 1 0 0 0 ]
dr::createLineStyle thickLine -display $psc_object -width 3 -pattern [ list 1 1 1 ]
dr::createLineStyle mLine -display $psc_object -width 2 -pattern [ list 1 1 1 ]
# Packets definition
dr::createPacket ACT -display $psc_object -stipple invCross \
                  -lineStyle solid -fill green -outline green
# Colors definition
dr::createColor yellow -display $psb_object -red 255 -green 255 -blue 0
dr::createColor white -display $psb_object -red 255 -green 255 -blue 255
dr::createColor 1 -display $psb_object -red 0 -green 0 -blue 0
# Stipples definition
dr::createStipple dots -display $psb_object -pattern [ list \
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple hLine -display $psb_object -pattern [ list \
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple hLine2 -display $psb_object -pattern [ list \
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple vLine -display $psb_object -pattern [ list \
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  } ]
dr::createStipple cross -display $psb_object -pattern [ list \
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 1 0 0 0 1  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 1 0 0 0 1 0 1  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 1 0 1 0 1 0 0 0 1 0 1 0 1  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 1 0 1 0 0 0 1 0 1 0 1 0 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 1 0 1 0 0 0 1 0 1 0 1 0 0 0 1  }\
                                                           { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                           { 0 1 0 0 0 1 0 1 0 1 0 0 0 1 0 0  }\
                                                           { 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 1  } ]
dr::createStipple x -display $psb_object -pattern [ list \
                                                       { 1 0 1 0 0 1 0 1 0 0 1 0 1 0 0 0  }\
                                                       { 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                       { 1 0 1 0 0 1 0 1 0 0 1 0 1 0 0 0  }\
                                                       { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                       { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                       { 0 0 0 1 0 1 0 0 1 0 1 0 0 1 0 1  }\
                                                       { 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0  }\
                                                       { 0 0 0 1 0 1 0 0 1 0 1 0 0 1 0 1  }\
                                                       { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                       { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                       { 1 0 1 0 0 1 0 1 0 0 0 1 0 1 0 0  }\
                                                       { 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0  }\
                                                       { 1 0 1 0 0 1 0 1 0 0 0 1 0 1 0 0  }\
                                                       { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                       { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                       { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple miniHatch -display $psb_object -pattern [ list \
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                               { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple grid -display $psb_object -pattern [ list \
                                                          { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                          { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  } ]
dr::createStipple halfslash -display $psb_object -pattern [ list \
                                                               { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                               { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                               { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                               { 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                               { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                               { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                               { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                               { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                               { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  } ]
dr::createStipple slash -display $psb_object -pattern [ list \
                                                           { 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1  }\
                                                           { 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0  }\
                                                           { 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0  }\
                                                           { 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1  }\
                                                           { 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0  }\
                                                           { 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0  }\
                                                           { 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1  }\
                                                           { 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0  }\
                                                           { 0 1 0 0 1 0 0 1 1 0 1 0 0 1 0 0  }\
                                                           { 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1  }\
                                                           { 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0  }\
                                                           { 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0  }\
                                                           { 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1  }\
                                                           { 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0  }\
                                                           { 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0  }\
                                                           { 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1  } ]
dr::createStipple backSlash -display $psb_object -pattern [ list \
                                                               { 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1  }\
                                                               { 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0  }\
                                                               { 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0  }\
                                                               { 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1  }\
                                                               { 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0  }\
                                                               { 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0  }\
                                                               { 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1  }\
                                                               { 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0  }\
                                                               { 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0  }\
                                                               { 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1  }\
                                                               { 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0  }\
                                                               { 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0  }\
                                                               { 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1  }\
                                                               { 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0  }\
                                                               { 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0  }\
                                                               { 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1  } ]
dr::createStipple hZigZag -display $psb_object -pattern [ list \
                                                             { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                             { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                             { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                             { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                             { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple vZigZag -display $psb_object -pattern [ list \
                                                             { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                             { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                             { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                             { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                             { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                             { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                             { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                             { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                             { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                             { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                             { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                             { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                             { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                             { 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0  }\
                                                             { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  }\
                                                             { 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0  } ]
dr::createStipple rvZigZag -display $psb_object -pattern [ list \
                                                              { 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1  }\
                                                              { 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0  }\
                                                              { 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0  }\
                                                              { 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0  }\
                                                              { 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0  }\
                                                              { 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                              { 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0  }\
                                                              { 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1  }\
                                                              { 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1  }\
                                                              { 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0  }\
                                                              { 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0  }\
                                                              { 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0  }\
                                                              { 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0  }\
                                                              { 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                              { 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0  } ]
dr::createStipple hCurb -display $psb_object -pattern [ list \
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 1 1 1 1 0 0 0 1 1 1 1 1 0  }\
                                                           { 0 0 0 1 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 0 1 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 1 1 1 1 0 0 0 1 1 1 1 1 0  }\
                                                           { 0 0 0 1 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 0 0 0 1 0 0 1 0 0 0 1 0 0 0 1 0  }\
                                                           { 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple vCurb -display $psb_object -pattern [ list \
                                                           { 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                           { 0 0 1 1 1 1 0 0 0 1 1 1 1 0 0 0  }\
                                                           { 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0  }\
                                                           { 0 0 1 1 1 1 0 0 0 1 1 1 1 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                           { 0 0 1 1 1 1 0 0 0 1 1 1 1 0 0 0  }\
                                                           { 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0  }\
                                                           { 0 0 1 1 1 1 0 0 0 1 1 1 1 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0  } ]
dr::createStipple brick -display $psb_object -pattern [ list \
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                           { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                           { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                           { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                           { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                           { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                           { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                           { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  }\
                                                           { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1  } ]
dr::createStipple dagger -display $psb_object -pattern [ list \
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                            { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                            { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                            { 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0  }\
                                                            { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                            { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                            { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                            { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                            { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                            { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                            { 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1  }\
                                                            { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                            { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  }\
                                                            { 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0  } ]
dr::createStipple triangle -display $psb_object -pattern [ list \
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 1 1 1 1 1 1 1 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                              { 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0  }\
                                                              { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple dot1 -display $psb_object -pattern [ list \
                                                          { 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple dot2 -display $psb_object -pattern [ list \
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple dot3 -display $psb_object -pattern [ list \
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                          { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple checker -display $psb_object -pattern [ list \
                                                             { 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0  }\
                                                             { 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0  }\
                                                             { 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0  }\
                                                             { 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0  }\
                                                             { 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1  }\
                                                             { 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1  }\
                                                             { 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1  }\
                                                             { 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1  }\
                                                             { 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0  }\
                                                             { 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0  }\
                                                             { 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0  }\
                                                             { 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0  }\
                                                             { 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1  }\
                                                             { 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1  }\
                                                             { 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1  }\
                                                             { 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1  } ]
dr::createStipple checker2 -display $psb_object -pattern [ list \
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  }\
                                                              { 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1  } ]
dr::createStipple sgrid -display $psb_object -pattern [ list \
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 1 1 0 1 0 1 0 1 1 1 0 1 0 1 0 1  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 1 1 0 1 0 1 0 1 1 1 0 1 0 1 0 1  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 1 1 0 1 0 1 0 1 1 1 0 1 0 1 0 1  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 1 1 0 1 0 1 0 1 1 1 0 1 0 1 0 1  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 1 1 0 1 0 1 0 1 1 1 0 1 0 1 0 1  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  }\
                                                           { 1 1 0 1 0 1 0 1 1 1 0 1 0 1 0 1  }\
                                                           { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1  } ]
dr::createStipple metal1S -display $psb_object -pattern [ list \
                                                             { 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1  } ]
dr::createStipple metal2S -display $psb_object -pattern [ list \
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0  }\
                                                             { 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple gnd2S -display $psb_object -pattern [ list \
                                                           { 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1  }\
                                                           { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                           { 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0  }\
                                                           { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                           { 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1  }\
                                                           { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                           { 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0  }\
                                                           { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  } ]
dr::createStipple vcc2S -display $psb_object -pattern [ list \
                                                           { 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0  }\
                                                           { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                           { 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1  }\
                                                           { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                           { 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  }\
                                                           { 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0  }\
                                                           { 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0  }\
                                                           { 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1  }\
                                                           { 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0  }\
                                                           { 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0  }\
                                                           { 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0  } ]
dr::createStipple vcc1S -display $psb_object -pattern [ list \
                                                           { 1 0 0 1 1 0 0 0 1 0 0 1 1 0 0 0  }\
                                                           { 0 1 0 0 1 0 0 0 0 1 0 0 1 0 0 0  }\
                                                           { 0 0 1 0 0 1 1 0 0 0 1 0 0 1 1 0  }\
                                                           { 0 0 0 1 0 0 1 0 0 0 0 1 0 0 1 0  }\
                                                           { 1 0 0 0 1 0 0 1 1 0 0 0 1 0 0 1  }\
                                                           { 1 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0  }\
                                                           { 0 1 1 0 0 0 1 0 0 1 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 0 1 0 0 1 0 0 0 0 1  }\
                                                           { 1 0 0 1 1 0 0 0 1 0 0 1 1 0 0 0  }\
                                                           { 0 1 0 0 1 0 0 0 0 1 0 0 1 0 0 0  }\
                                                           { 0 0 1 0 0 1 1 0 0 0 1 0 0 1 1 0  }\
                                                           { 0 0 0 1 0 0 1 0 0 0 0 1 0 0 1 0  }\
                                                           { 1 0 0 0 1 0 0 1 1 0 0 0 1 0 0 1  }\
                                                           { 1 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0  }\
                                                           { 0 1 1 0 0 0 1 0 0 1 1 0 0 0 1 0  }\
                                                           { 0 0 1 0 0 0 0 1 0 0 1 0 0 0 0 1  } ]
dr::createStipple capID -display $psb_object -pattern [ list \
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0  }\
                                                           { 0 0 0 0 1 0 0 1 1 0 0 1 0 0 0 0  }\
                                                           { 0 0 0 1 0 0 0 1 1 0 0 0 1 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple resID -display $psb_object -pattern [ list \
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 1 1 1 0 1 0 0 1 1 1 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                           { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
dr::createStipple diodeID -display $psb_object -pattern [ list \
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 1 0 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 0 1 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 0 0 1 0 1 0 0 0 0  }\
                                                             { 0 0 0 1 1 1 1 0 0 0 1 1 1 1 0 0  }\
                                                             { 0 0 0 0 0 0 1 0 0 1 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 0 1 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 1 0 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  }\
                                                             { 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  } ]
# LineStyles definition
dr::createLineStyle solid -display $psb_object -width 1 -pattern [ list 1 1 1 ]
dr::createLineStyle dashed -display $psb_object -width 1 -pattern [ list 1 1 1 1 0 0 0 0 ]
dr::createLineStyle dots -display $psb_object -width 1 -pattern [ list 1 0 0 0 0 ]
dr::createLineStyle dashDot -display $psb_object -width 1 -pattern [ list 1 1 1 1 0 0 0 0 1 0 0 0 0 ]
dr::createLineStyle shortDash -display $psb_object -width 1 -pattern [ list 1 1 0 0 ]
dr::createLineStyle doubleDash -display $psb_object -width 1 -pattern [ list 1 1 1 1 0 0 0 0 1 1 0 0 ]
dr::createLineStyle hidden -display $psb_object -width 1 -pattern [ list 1 0 0 0 0 0 0 0 0 ]
dr::createLineStyle thickLine -display $psb_object -width 3 -pattern [ list 1 1 1 ]
# Packets definition
dr::createPacket ACT -display $psb_object -stipple dot3 \
                      -lineStyle solid -fill 1 -outline 1
