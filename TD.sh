# !/bin/bash
# Backups de archivos de configuracion para mi sistema Linux basado en Arch
# Autor: Traiko - @SrTraiko

# Dotfiles locals
alacritty="$HOME/.config/alacritty/"
i3="$HOME/.config/i3/"
kitty="$HOME/.config/kitty/"
nvim="$HOME/.config/nvim/"

# Backup
my_route=$(pwd)
my_route_config="$my_route/.config_no_exist/"

option=0

select_option () {
  while [ "$option" != 1 -a "$option" != 2 ]
  do
    clear
    echo -e "
-------------------------------------
| Backup by Traiko                  |
-------------------------------------
| 1. Backups directories and files. |
| 2. Exit.                          |
-------------------------------------\n"
    read -n 1 -s -p "Enter an option: " option
  done
  echo ""
}

verify_directories () {
  if [ -d ${1} ]
  then
    echo "route '${1}' existence "
  else
    echo -e "route '${1}' no existence,\nwant to create it? [y/n]"
    option=""

    while [ "$option" != "y" -a "$option" != "n" ]
    do 
      read -n 1 -s option

      case $option in
        "y")
          mkdir ${1}
          ;;
        "n")
          echo -e "Danger: the '${1}' directory will not be created and this may cause several problems when creating a backup."
          ;;
        esac
    done
  fi
}

cp_files () {
  if [ -d "${1}" ]
  then
    echo "file '${1}' existence"
    echo "you want to make a backup of '${1}'? [y/n]"

    option=""
    while [ "$option" != "y" -a "$option" != "n" ]
    do
      read -n 1 -s option
      case $option in
        "y")
          echo "creating a backup copy of ${1}"
          cp -R ${1} ${2}
          ;;
        "n")
          echo "okay"
          echo "Okay, will not create a backup copy of ${1}"
          ;; 
      esac
    done
  else
    echo "The file '${1} no existence"
  fi
}




select_option

case $option in
  1)
    echo "verifying the existence of directories"
    verify_directories $my_route_config 
    cp_files $alacritty $my_route_config
    ;;
  2)
    echo "Goodbye..."
    ;;
esac
