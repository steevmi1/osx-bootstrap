#!/bin/sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=/usr/local/bin:$PATH

##  Install homebrew, update and make sure we're cleaned and ready
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew doctor
brew prune

# Install core tools
brew install coreutils
brew install binutils
brew install diffutils
brew install ed --with-default-names
brew install findutils
brew install gawk
brew install gnu-indent --with-default-names
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install gnutls
brew install grep --with-default-names
brew install gzip
brew install ksh
brew install screen
brew install tmux
brew install watch
brew install wdiff --with-gettext
brew install wget
brew install zsh

if -f /usr/local/bin/ksh; then
  echo "/usr/local/bin/ksh" | sudo tee -a /etc/shells
fi
if -f /usr/local/bin/zsh; then
  echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
fi

# Additional tools
brew install emacs
brew install gdb # gdb requires further actions to make it work. See `brew info gdb`. Follow this link for instructions https://medium.com/@royalstream/how-to-install-and-codesign-gdb-on-os-x-el-capitan-aab3d1172e95#.jbzcfeegv
brew install gnupg
brew install gpatch
brew install llvm
brew install m4
brew install make

# Non-GNU tools
brew install aspell --with-lang-en
brew install file-formula
brew install git
brew install jq
brew install less
brew install neomutt
brew install openssh
brew install protobuf
brew install rsync
brew install svn
brew install unzip

brew install octave --with-x11

brew tap homebrew/science
##  lmod is in the homebrew/science tap, so install this here.
brew install lmod
brew install openmpi --c++11 --with-mpi-thread-multiple
brew install hdf5 --c++11 --with-fortran --with-mpi
brew install netcdf --with-fortran
brew cask install inkscape
brew cask install KeePassXC

##  Put in some standard fonts to pretty up displays
brew tap caskroom/fonts
brew cask install font-awesome-terminal-fonts
brew cask install font-fontawesome
brew cask install font-inconsolata-nerd-font
brew cask install font-inconsolata-nerd-font-mono
brew cask install font-iosevka-nerd-font
brew cask install font-iosevka-nerd-font-mono
