# var=echo $1|egrep -i -E -o "\.{1}\w*$" 
# echo "$var"

#!/bin/bash

if [ $# -lt 1 ];then                    
  # $# stores the number of arguments passed from the command line, like *argc in c programming.
  echo "Format: ./fileOpener.sh <file>"


elif [ -f $1 ] ; then
# -f checks if file passed as $1 exists
case $1 in
#opening c/cpp files using gedit
*.c) gedit $1 ;;
*.cpp) gedit $1 ;;
*.py) gedit $1 ;;
*.java) gedit $1 ;;
*.txt) gedit $1 ;;
# opening video files using vlc
*.3gp) vlc $1 ;;
*.mp3) vlc $1 ;;
*.mpeg) vlc $1 ;;
*.flv) vlc $1 ;;
*.mp4) vlc $1 ;;
# The default image viewer application in Ubuntu is the Gnome Image viewer also known as Eye of Gnome(eog)
*.png) eog $1 ;;
*.jpg) eog $1 ;;
*.bmp) eog $1 ;;
#opening html files using chrome
*.html) google-chrome $1 ;;
#opening pdf files using evince
*.pdf) evince $1 ;;
#opening files using libre
*.odt) libreoffice $1 ;;
*.ods) libreoffice $1 ;;
*.doc) libreoffice $1 ;;
*.xls) libreoffice $1 ;;

*) echo "Couldnt detect file extension" ;;
esac


else
echo "File does not exist"
fi
