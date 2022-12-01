# !/bin/bash
# Backups de archivos de configuracion para mi sistema Linux basado en Arch
# Autor: Traiko - @SrTraiko

# paths
alacritty="$HOME/.config/alacritty/"
i3="$HOME/.config/i3/"
kitty="$HOME/.config/kitty/"
nvim="$HOME/.config/nvim/"

mi_ruta=$(pwd)
config=$mi_ruta/.config/

echo -e "Backups de archivos.dotfiles"
echo "
1. Clonar directorios y archivos
2. Salir
"
read -p "Ingresa una opcion: " opcion

# Verificar si existe el directorio .config
if [[ -d $config ]]; then
  echo ""
else
  echo "Creando directorio .config"
  mkdir $config
fi

if [[ $opcion == "1" ]]; then
  # alacritty
  if [[ -d $alacritty ]]; then
    echo "Clonando alacritty"
    rm -rf $config/alacritty/
    cp -r $HOME/.config/alacritty/ $config
  else
    echo -e "No se encuetra un directorio en la ruta $alacritty\n por lo que no se copiara nada"
  fi

  # kitty
  if [[ -d $kitty ]]; then
    echo "Clonando kitty"
    rm -rf $config/kitty/
    cp -r $HOME/.config/kitty/ $config
  else
    echo -e "No se encuetra un directorio en la ruta $kitty\n por lo que no se copiara nada"
  fi

  # i3
  if [[ -d $i3 ]]; then
    echo "Clonando i3"
    rm -rf $config/i3/
    cp -r $HOME/.config/i3/ $config
  else
    echo -e "No se encuetra un directorio en la ruta $i3\n por lo que no se copiara nada"
  fi

  # nvim
  if [[ -d $nvim ]]; then
    echo "Clonando nvim"
    rm -rf $config/nvim/
    cp -r $HOME/.config/nvim/ $config
  else
    echo -e "No se encuetra un directorio en la ruta $i3\n por lo que no se copiara nada"
  fi 

elif [[ $opcion == "2" ]]; then
  echo "Okey..."
else
  echo "Esa opcion no es valida, saliendo del programa."
fi

