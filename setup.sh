DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p $DIR/antigen
curl https://cdn.rawgit.com/zsh-users/antigen/v1.2.0/bin/antigen.zsh > $DIR/antigen/antigen.zsh
mkdir $DIR/temp
git clone git://github.com/altercation/vim-colors-solarized.git $DIR/temp/solarized
mkdir $DIR/nvim/colors
mv $DIR/temp/solarized/colors/solarized.vim $DIR/nvim/colors
rm -rf $DIR/temp

# Symbolic link zshrc
if [ -f ~/.zshrc ] || [ -L ~/.zshrc ] ; then
  mv ~/.zshrc ~/.zshrc.bak
  echo '.zshrc already exists. Backing up as ~/.zshrc.bak.'
fi
ln -s $DIR/zshrc ~/.zshrc
# Symbolic link zshenv
if [ -f ~/.zshenv ] || [ -L ~/.zshenv ] ; then
  mv ~/.zshenv ~/.zshenv.bak
  echo '.zshenv already exists. Backing up as ~/.zshenv.bak.'
fi
ln -s $DIR/zshenv ~/.zshenv
# Symbolic link tmux
if [ -f ~/.tmux.conf ] || [ -L ~/.tmux.conf ] ; then
  mv ~/.tmux.conf ~/.tmux.conf.bak
  echo '.tmux.conf already exists. Backing up as ~/.tmux.conf.bak.'
fi
ln -s $DIR/tmux.conf ~/.tmux.conf

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Symbolic link nvim config
if [ ! -d ~/.config ] ; then
  mkdir ~/.config
fi
if [ -d ~/.config/nvim ] ; then
  rm ~/.config/nvim_bak
  mv ~/.config/nvim ~/.config/nvim_bak
  echo 'nvim already exists in .config. Backing up as ~/.config/nvim_bak.'
fi
ln -s $DIR/nvim ~/.config

if [ -d ~/.iterm  ] ; then
  rm -rf ~/.iterm
fi
ln -s $DIR/.iterm ~/.iterm

# Install neovim
brew tap | grep neovim > /dev/null
if [ $? = 0 ] ; then
  echo 'neovim already installed.'
else
  brew install neovim
fi
nvim +PlugInstall +qa

# Fix iTerm backspace issue
cd ~
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > ~/$TERM.ti
tic ~/$TERM.ti
rm ~/$TERM.ti
