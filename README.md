### $\Large\color{black}\fbox\{\color{paddingfix}\colorbox{brown}{\color{silver} { inxi\color{silver}{py}\color{silver}.tcl }}}{\color{silver}\color{silver}{}\color{silver}\textcolor{silver}{\}{\ \color{darkgrey}— \ \color{darkgrey}fetches:}}$
### $\Large\textcolor{darkgrey}{sys—info...via: \color[RGB]{85,85,212}\fbox\{\color{yellow}{\color{yellow}\colorbox{midnightblue}{\color{royalblue}\ inxi }‎}‎}{\color{yellow}{} {}}\color{olive},\color{darkgrey} \ storage—info...via: \Large\color{orange}\fbox\{\color{yellow}{\color{yellow}\colorbox{darkgrey}{\color{yellow}\ \color[RGB]{255,211,67}py\color[RGB]{55,118,171}df }‎}‎}{\color{yellow}{}}\color{olive},}$
### $\Large\textcolor{darkgrey}{\}{ \ \color{darkgrey}online \ \ connection\ \ \color[RGB]{255,127,255}\fbox{\color{cyan}\colorbox\{blue}{\colorbox{blue}{\color{cyan}\ speedtest.net }}}\color{darkgrey}{\}\ \ results... via: \color{aquamarine}\fbox\{\color{cyan}\colorbox\{blue}{\color{cyan} speedtest-cli }}\color{olive},}$ 
### $\Large\textcolor{darkgrey}{\}{ \ \color{darkgrey}cool \ \ sys—info... via: \color{maroon}\fbox\{\color{paddingfix}{\color{paddingfix}\colorbox{black}{\color{crimson}\ ufetch }‎}‎}{\color{paddingfix}{} }‎\color{darkgrey}: a\text{\color{darkgrey} ‘‘Tiny system info’’}\ tool—}$
### $$\Large\textcolor{darkgrey}—{\text{\color{darkgrey}‘‘for Unix-like operating systems’’}{\color{darkgrey}—}‎}$$ $$\Large\text{\color[RGB]{102,255,102}\Large Sane@Linux}\Large\text{:}\Large\text{\color[RGB]{85,85,212}{\Large ∿}}\Large\text{\color[RGB]{85,85,212}{/GH/inxipy.tcl }}\Large\text{\color[RGB]{85,85,212}{ \\$\}} \Large\text{ make \ sys\\_info.so \ sexy} \Large\text{\colorbox{lime}{\color{lime}‎l‎}}$$ <img align="right" width="75" height="75" src="https://user-images.githubusercontent.com/95466780/204956086-8604e67c-430b-4a2f-a9c0-19cf2e05501e.png">
<img align="left" width="75" height="75" src="https://user-images.githubusercontent.com/95466780/205469909-29bd7d62-b649-45f2-8744-c10a3d63c85f.png"> <img align="right" width="75" height="91" src="https://user-images.githubusercontent.com/95466780/205510362-7edb2604-ffdb-4ad0-8f75-24ac3982b394.png">
<img align="left" width="75" height="91" src="https://user-images.githubusercontent.com/95466780/205510362-7edb2604-ffdb-4ad0-8f75-24ac3982b394.png">

# $$\Large\color[RGB]{85,85,212}\fbox\{\color{paddingfix}\colorbox{midnightblue}{\color{royalblue}\Huge { inxi\color{yellow}{py}\color{khaki}.tcl }}}{\color{royalblue}\color{yellow}{}\color{khaki}\textcolor{silver}{\} }$$

<img align="left" width="132" height="1" src="https://user-images.githubusercontent.com/95466780/205478315-779cac98-8dd9-4ca0-8653-8a21870613af.png">
<img align="right" width="132" height="1" src="https://user-images.githubusercontent.com/95466780/205478315-779cac98-8dd9-4ca0-8653-8a21870613af.png">

```diff
@@ Coloured read through for convenience. @@
! No need to copy this fenced code block.
- Copy pasteable TCL code further down below.
+#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#
+########Q:Don't ave noexpire set on Nick? Np, try out CAR########
+#######CAR stands for Cycle And Renew. Q:Tired of worrying#######
+######about dropping? CAR runs in BG renewing nicks AUTO4U!######
+#####         URL: https://github.com/San3-Cod3/CAR         #####
+####    <Sane> Time registered: Jul 06 07:14:54 2011 EDT!    ####
+###        CAR -- driving your nicks, into the future!        ###
+##                                                             ##
+#                          inxipy.tcl!                          #
+##                                                             ##
+###                       VERSION 0.0.1                       ###
+####                                                         ####
+##### Please try out my shell script to auto-login to your: #####
+###### eggdrop bot's spawn telnet version of The Party Line #####
+####### Send Credentials Auto-Magically: HstIP Port UsrPW #######
+########        https://github.com/San3-Cod3/SCA-M        #######
+#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#
+########                                                 ########
+#######            Created by: Sane from Rizon            #######
+######                                                     ######
+#####  sudo apt-get install -y inxi pydf speedtest-cli git  #####
+####                                                         ####
+### cd /home/YOU/                                             ###
+### git clone https://gitlab.com/jschx/ufetch.git             ###
+### cd /home/YOU/ufetch                                       ###
+### sudo cp / mv your ufetch-*distro file to /usr/bin/        ###
+### BUT! Make sure it's executable first: chmod +x ufetch-*   ###
+### If your distro is missing; use the generic Linux Tux ver. ###
+###                                                           ###
+###                                                           ###
+### For bot owner/master use only, add an m flag to-          ###
+### -both sides of pipe in the script below like so: m|m      ###
+###                                                           ###
+###                                                           ###
+###              irssi exec test examples below:              ###
+###                                                           ###
+###irssi can be exec'd to your open session w/o public output-###
+###-removing -out flag; exec'd line isn't visible; only to you###
+###                                                           ###
+### /exec -out inxi --color 11 --machine | tr "\n" " "        ###
+### /exec -out pydf ; inxi --cpu --info --system              ###
+###                                                           ###
+### /exec -out inxi -G --display ; inxi --network             ###
+###                                                           ###
+### /exec -out speedtest --simple | paste -sd% | sed "s/%/ || /g"
+###                                                           ###
+### /exec TERM=linux ufetch-*distro                           ###
+### /exec -out TERM=linux ufetch-*distro                      ###
+### /exec TERM=dumb ufetch--*distro                           ###
+### /exec -out TERM=dumb ufetch-*distro                       ###
+###                                                           ###
+### 'ufetch-raspbian' is my own selected ufetch distro file - ###
+### choose your own & place it in /usr/bin/ with prepend sudo ###
+### Ctrl + F(ind) / W: ufetch-raspbian -- replace w/ your own ###
+###                                                           ###
+### If you happen to have an exec issue about an error, or -  ###
+### have an error display along with your line/s you exec'd,  ###
+### then try this optional flag: -ignorestderr                ###
+### - use just after the word exec; BUT this only applies to: ###
+### TCL exec from this eggdrop script & not irssi's exec      ###
+###                                                           ###
+#### Public channel bind cmds: !inxipy, !inximore, !st, !uf, ####
+##### !setaf,                                               #####
+######@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@######
+##### Pro-tips: I recommend monospace font for best results #####
+####TERM * linux is colour output, should any exist in script####
+###TERM * dumb is colourless output, regardless of it existing###
+##The environment that /exec will operate in is not the same as##
+#  you use; it's cleaned for security reasons I.E there is no-  #
+#        TERM set by default - it needs to be specified.        #
+#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#
+#                                                               #
+##########@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@##########
+# script #                                             # below! #
+##########                                             ##########
```
# ![tclcgh](https://user-images.githubusercontent.com/95466780/204167941-45d1f88d-f3a3-4ed1-9b42-17d12c8c3e49.png)$\Large\color{midnightblue}\fbox\{\color{khaki} \color{royalblue}inxi\color{yellow}{py}\color{khaki}.tcl }{ \color{royalblue}\color{yellow}{}\color{khaki} }$
```tcl
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#
########Q:Don't ave noexpire set on Nick? Np, try out CAR########
#######CAR stands for Cycle And Renew. Q:Tired of worrying#######
######about dropping? CAR runs in BG renewing nicks AUTO4U!######
#####         URL: https://github.com/San3-Cod3/CAR         #####
####    <Sane> Time registered: Jul 06 07:14:54 2011 EDT!    ####
###        CAR -- driving your nicks, into the future!        ###
##                                                             ##
#                          inxipy.tcl!                          #
##                                                             ##
###                       VERSION 0.0.1                       ###
####                                                         ####
##### Please try out my shell script to auto-login to your: #####
###### eggdrop bot's spawn telnet version of The Party Line #####
####### Send Credentials Auto-Magically: HstIP Port UsrPW #######
########        https://github.com/San3-Cod3/SCA-M        #######
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#
########                                                 ########
#######            Created by: Sane from Rizon            #######
######                                                     ######
#####  sudo apt-get install -y inxi pydf speedtest-cli git  #####
####                                                         ####
### cd /home/YOU/                                             ###
### git clone https://gitlab.com/jschx/ufetch.git             ###
### cd /home/YOU/ufetch                                       ###
### sudo cp / mv your ufetch-*distro file to /usr/bin/        ###
### BUT! Make sure it's executable first: chmod +x ufetch-*   ###
### If your distro is missing; use the generic Linux Tux ver. ###
###                                                           ###
###                                                           ###
### For bot owner/master use only, add an m flag to-          ###
### -both sides of pipe in the script below like so: m|m      ###
###                                                           ###
###                                                           ###
###              irssi exec test examples below:              ###
###                                                           ###
###irssi can be exec'd to your open session w/o public output-###
###-removing -out flag; exec'd line isn't visible; only to you###
###                                                           ###
### /exec -out inxi --color 11 --machine | tr "\n" " "        ###
### /exec -out pydf ; inxi --cpu --info --system              ###
###                                                           ###
### /exec -out inxi -G --display ; inxi --network             ###
###                                                           ###
### /exec -out speedtest --simple | paste -sd% | sed "s/%/ || /g"
###                                                           ###
### /exec TERM=linux ufetch-*distro                           ###
### /exec -out TERM=linux ufetch-*distro                      ###
### /exec TERM=dumb ufetch--*distro                           ###
### /exec -out TERM=dumb ufetch-*distro                       ###
###                                                           ###
### 'ufetch-raspbian' is my own selected ufetch distro file - ###
### choose your own & place it in /usr/bin/ with prepend sudo ###
### Ctrl + F(ind) / W: ufetch-raspbian -- replace w/ your own ###
###                                                           ###
### If you happen to have an exec issue about an error, or -  ###
### have an error display along with your line/s you exec'd,  ###
### then try this optional flag: -ignorestderr                ###
### - use just after the word exec; BUT this only applies to: ###
### TCL exec from this eggdrop script & not irssi's exec      ###
###                                                           ###
#### Public channel bind cmds: !inxipy, !inximore, !st, !uf, ####
##### !setaf,                                               #####
######@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@######
##### Pro-tips: I recommend monospace font for best results #####
####TERM * linux is colour output, should any exist in script####
###TERM * dumb is colourless output, regardless of it existing###
##The environment that /exec will operate in is not the same as##
#  you use; it's cleaned for security reasons I.E there is no-  #
#        TERM set by default - it needs to be specified.        #
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#
#                                                               #
##########@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@##########
# script #                                             # below! #
##########                                             ##########

bind pub m|m !inxipy do_inxipy

proc do_inxipy {nick uhost hand chan text} {
        if {![isop $nick $chan]} {
                putnow "NOTICE $nick :$nick, my guy; you aren't OP'd on $chan, sorry no can do..."
                return 0
        } else {
   }
   set my_machine [exec inxi --color 11 --machine | tr "\n" " "]
   set my_pydf [exec pydf]
   set my_inxi [exec inxi --cpu --info --system]
   foreach thing [split "$my_machine\n$my_pydf\n$my_inxi" \r\n] {
   #foreach line [split "$my_pydf\n$my_inxi" \n]      
      putnow "PRIVMSG $chan :$thing"
   }
}
bind pub m|m !inximore do_inximore

proc do_inximore {nick uhost hand chan text} {
        if {![isop $nick $chan]} {
                 putnow "NOTICE $nick :$nick, my guy; you aren't OP'd on $chan, sorry no can do..."
                 return 0
         } else {
   }
   set my_inximore_GraphDis [exec inxi -G --display]
   set my_inximore_Network [exec inxi --network]
   foreach line [split "$my_inximore_GraphDis\n$my_inximore_Network" \n] {
      putnow "PRIVMSG $chan :$line"
   }
}
bind pub m|m !st do_st

proc do_st {nick uhost hand chan text} {
        if {![isop $nick $chan]} {
                 putnow "NOTICE $nick :$nick, my guy; you aren't OP'd on $chan, sorry no can do..."
                 return 0
         } else {
   }
   set my_st [exec speedtest-cli --secure --simple | paste -sd% | sed "s/%/ || /g"]
   foreach line [split \002\00311,2$my_st \n] {
      putnow "PRIVMSG $chan :$line"
   }
}
bind pub m|m !uf do_uf

proc do_uf {nick uhost hand chan text} {
        if {![isop $nick $chan]} {
                 putnow "NOTICE $nick :$nick, my guy; you aren't OP'd on $chan, sorry no can do..."
                 return 0
         } else {
   }
   set my_uf [set ::env(TERM) linux ; exec ufetch-raspbian]
   foreach line [split $my_uf \n] {
      putserv "PRIVMSG $chan :$line"
   }
}
bind pub m|m !setaf do_setaf

proc do_setaf {nick uhost hand chan text} {
        if {![isop $nick $chan]} {
                 putnow "NOTICE $nick :$nick, my guy; you aren't OP'd on $chan, sorry no can do..."
                 return 0
         } else {
   }
   set my_setaf [set ::env(TERM) dumb ; exec ufetch-linux]
   foreach line [split my_setaf \n] {
      putserv "PRIVMSG $chan :$line"
   }
}

putlog "Sane's inxipy is locked and loaded <3 UwU :<"
```

<img align="left" width="1111" height="275" src="https://user-images.githubusercontent.com/95466780/205483306-af97ab1a-6339-4641-9930-5c00b5e4faca.png">
<img align="left" width="1111" height="195" src="https://user-images.githubusercontent.com/95466780/205479933-aabf7cc2-39a8-49e4-8c8d-aa1c6222a9f8.png">
<img align="left" width="1111" height="161" src="https://user-images.githubusercontent.com/95466780/205475998-fc46bb51-5bfe-4908-ac3a-a5a3aa503f3d.png">
<img align="left" width="1111" height="77" src="https://user-images.githubusercontent.com/95466780/205475994-26e60314-edd4-4a28-a9fb-ae3e10c3ac9d.png">
