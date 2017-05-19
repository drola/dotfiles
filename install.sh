#! /bin/bash

NO_COLOR="\033[1;0m"
GREEN="\033[0;32m"
GRAY="\033[1;30m"

echo -ne "\n${GREEN}Initializing...\n\n"
echo -e "Creating backup & creating symlinks to new dotfiles..."
SCRIPT_PATH="$(dirname "$(realpath "$0")")"

cd $SCRIPT_PATH; #To dir with this script
cd ./files
for file in $(find . -type f); do
  echo "~/$file"
  if [ -s ~/$file ]; then mv ~/$file ~/$file.bkp; fi
  ln -fs $SCRIPT_PATH/files/$file ~/$file
done

echo -e "${GRAY}"

echo -ne "${GREEN}Done! :-)${NO_COLOR}\n\n"
