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
### 'ufetch-raspbian' is my own selected ufetch distro file - ###
### choose your own & place it in /usr/bin/ with prepend sudo ###
### Ctrl + F(ind) / W: ufetch-raspbian -- replace w/ your own ###
###                                                           ###
### Might wanna consider editing said: 'ufetch-*distro' file- ###
### - using your own personal tastes and preferences, e.g.    ###
### reduce overall lines like condensing info together -      ###
### - grouped onto the same line, like for instance, SHELL+UI ###
### or, remove default blank lines; maybe even play w/ colour ###
###                                                           ###
###                                                           ###
### For bot owner/master use only, add an m flag to-          ###
### -both sides of pipe in the script below like so: m|m      ###
###                                                           ###
### Note: by default, the script will only work for:          ###
### channel operators; you can change this by editing:        ###
### "isop" to either: 'ishalfop' or 'isvoice' -               ###
### I don't recommend lower than voice, but if you need to -  ###
### just remove appropriate lines entirely from the script    ###
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
###                                                           ###
### If you happen to have an exec issue about an error, or -  ###
### have an error display along with your line/s you exec'd,  ###
### then try this optional flag: -ignorestderr                ###
### - use just after the word exec; BUT this only applies to: ###
### TCL exec from this eggdrop script & not irssi's exec      ###
###                                                           ###
###                                                           ###
#### Public channel bind cmds: !inxipy, !inximore, !st, !uf, ####
##### !ufd,                                                 #####
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
      putnow "PRIVMSG $chan :$line"
   }
}
bind pub m|m !ufd do_ufd

proc do_ufd {nick uhost hand chan text} {
        if {![isop $nick $chan]} {
                 putnow "NOTICE $nick :$nick, my guy; you aren't OP'd on $chan, sorry no can do..."
                 return 0
         } else {
   }
   set my_ufd [set ::env(TERM) dumb ; exec ufetch-raspbian]
   foreach line [split $my_ufd \n] {
      putnow "PRIVMSG $chan :$line"
   }
}

putlog "Sane's inxipy is locked and loaded <3 UwU :<"