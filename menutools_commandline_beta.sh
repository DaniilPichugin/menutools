#!/bin/bash
#!/usr/bin/env

##lite command prompt#
##by Daniil Pichugin(c)#

#comment##command line. Reload every one/
name=$( whoami )
echo -n -e "\e[34m|${name}|#>\e[0m " ; read titlecom

	case $titlecom in
		help|h) echo -e "\e[34m-=help page=-\e[0m"
			echo "+--------------------------------+"
			echo "title_defualt command:"
			echo -e "\e[32mc|cls\e[0m - clear the prompt"
			echo -e "\e[32mw|floder\e[0m - show where are you"
			echo -e "\e[32md|cd\e[0m - go to new floder"
			#comment##add that module in future
			#echo -e "\e[32my|content\e[0m - show content "
			echo -e "\e[32mo|open\e[0m - open the file with GTK"
			echo -e "\e[32mt|text\e[0m - open the text editor"
			echo -e "\e[32ma|about\e[0m -show about page"
			echo -e "\e[32mf|file\e[0m - open the file manager"
			echo -e "\e[32me|exit\e[0m - out of programm"
			echo -e "\e[32mr|restart\e[0m - restart the programm"
			echo -e "\e[32mp|profile\e[0m - show my profile"
			echo -e "\e[32mr|read\e[0m - show me the txt file"
			echo -e "\e[32mm|music\e[0m - open the music player"
			echo -e "\e[32mn|network\e[0m - show the open net interfaces"
			echo -e "\e[32mi|install\e[0m - install new packages"
			echo -e "\e[32mu|update\e[0m - update the system"
			echo -e "\e[32ml|process\e[0m - open the process manager"
			echo "+---------------------------------+"
							;;
		 c|cls) clear
		 		;;
		 exit|e) exit 0
		  	;;
		 open|o) echo -n "write file name: "
		  			 read namefile
		 				 gnome-open ${namefile}
		 		;;
		 text|t) nano
		 		;;
		 about|a) echo "It is a small program with a set of"
		 					echo "utilities. Created to facilitate the use"
							echo "of a server based on Linux."
							echo "version of programm: 1.3 beta "
							echo "name version: 28 day ago!"
							echo "made by Daniil Pichugin(c)"
		 		;;
		 file|f) mc
		 		;;
		 profile|p) #comment##shadow function
		 						profile=$(whoami)
								id=$( echo -e "| 000 |";)
								number=$(
									echo "service is not regist"
									#comment##new function#
									#comment##in full version
									#
								)
								email=$( echo "service is not regist" )
								#commment##public function
		 						id=$( echo "000" ; echo -)
		 						echo "Your profile"
								echo "name: ${profile}"
								echo "id: ${id}"
								echo "number ${number}"
		 		;;
		 read|r) echo "Enter the name of file."
		 				 echo -n ": "
						 read namefile
						 cat ${namefile}
		 		;;
		 music|m) mocp
		 		;;
		 network|n) echo "-=ifconfig=-"
		 						echo "+------------------------------------+"
		 					 ifconfig
							 echo "-=iwconfig=-"
							 echo "+-------------------------------------+"

							 iwconfig
							 echo -n "Do you want to up or down interfaces. [Y/n]: "
							 read answer1
							 		case $answer1 in
							 			Y|y) echo -n "Enter the interface name: "
												 read ifname
												 echo "Enter what you want to do,"
												 echo -n "up or down?: "
												 read ifdev
												 sudo ${ifdev} ${ifname}
							 				;;
										N|n) $0
											;;
							 		esac
		 		;;
		 install|i) echo "Enter the name of packages."
		 		;;
		 update|u) sudo apt-get update
		 		;;
		 process|h) htop
		 		;;
		 floder|w) pwd
		 		;;
		 cd|d) ls
		 			 echo "Enter the name of derictory"
		 			 echo "If you have space in the name of floder,"
					 echo " you must write like this '<word>\<space><word>' "
		 			 echo -n ": "
					 read namefloder
					 $( cd $namefloder )

		 		;;

	esac

$0
#comment##in trashh comit

#echo "UNIX COMMAND LINE"
#echo "lite version"
#echo "by Daniil Pichugin(c)"
#echo "+----------------------------------+"
