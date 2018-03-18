#! /bin/bash

while false; do
  echo 'Installing customized Air for Steam skin in ~/.local/share/Steam/skins/Air-for-Steam'
  read -p $'\e[33mInstall directory will be overwritten if it exists. Proceed?\e[0m (y/n): ' yn
  case $yn in
    [Yy]* )
        rm -rf ~/.local/share/Steam/skins/Air-for-Steam
        cp -r . ~/.local/share/Steam/skins/Air-for-Steam
        rm -f ~/.local/share/Steam/skins/Air-for-Steam/install_air_for_steam.sh
        rm -rf ~/.local/share/Steam/skins/Air-for-Steam/.git
        rm -f ~/.local/share/Steam/skins/Air-for-Steam/.gitattributes
        cp -r ~/.local/share/Steam/skins/Air-for-Steam/+Extras/Themes/Dark/. ~/.local/share/Steam/skins/Air-for-Steam
        cp -r ~/.local/share/Steam/skins/Air-for-Steam/+Extras/Colors/Darkmaterial/. ~/.local/share/Steam/skins/Air-for-Steam
        cp -r /home/$USER/.local/share/Steam/skins/Air-for-Steam/+Extras/Fonts/. ~/.fonts
        fc-cache -fv
        echo "Install done. Make sure to activate theme in Steam settings."
      break;;
    * )
      echo "Aborting install."
      exit;;
  esac
done
