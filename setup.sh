DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Symbolic link zshrc
if [ -f ~/.zshrc ] || [ -L ~/.zshrc ] ; then
  mv ~/.zshrc ~/.zshrc.bak
  echo '.zshrc already exists. Backing up as ~/.zshrc.bak.'
fi
ln -s $DIR/zshrc ~/.zshrc

# Symbolic link nvim config
if [ ! -d ~/.config ] ; then
  mkdir ~/.config
fi
if [ -d ~/.config/nvim ] ; then
  mv ~/.config/nvim ~/.config/nvim_bak
  echo 'nvim already exists in .config. Backing up as ~/.config/nvim_bak.'
fi
ln -s $DIR/nvim ~/.config/nvim
