#!/bin/bash
#!/bin/sh
#!/usr/bin/env



##intro gtk mode##
##by Daniil Pichugin(c)##
##chek me in vk.com/user_init_5##

whoami=$(whoami)
clear

echo "+-------------------------------------------+"
echo "| Welcomt to                                |"
echo "|           System Menu                     |"
echo "+-------------------------------------------+"
echo "|Hello,                                     |"
echo "|$whoami                                     |"
echo "+-------------------------------------------+"
echo "|what you want to do?:                      |"
echo "|    1.update the system                    |"
echo "|    2.install new packages                 |"
echo "|    3.open the file manager                |"
echo "|    4.open the text editor                 |"
echo "|    4.open the music player                |"
echo "|    5.open the process manager             |"
echo "|    6.open the system setting              |"
echo "|    7.show me the other programm           |"
echo "+-------------------------------------------+"
echo "Write the number"
echo -n ":  "
read answer1

  case $answer1 in
      1) clear
         sudo apt-get install -f
         sudo apt-get autoremove
         sudo apt-get update
         sudo apt-get upgrade
          ;;
      2) clear
         echo "enter the name of package"
         echo -n ": "
         read packname
         sudo apt-get install ${packname}

          if $*; then
            echo "work is done";
          else echo "unknow error";
          fi
          ;;
      3) mc
          ;;
      4) echo "vim, mcedit, nano?"
         echo ": "
         read answer2
         $answer2
          ;;
      5) mocp
          ;;
      6) echo "htop or top"
         echo -n ": "
         read answer3
         $answer3
          ;;
      7) echo "you can find me and my projects in: "
         echo "vk.com/user_init_5"
          ;;
  esac
