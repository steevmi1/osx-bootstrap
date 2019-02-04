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
brew install vim
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

brew install lmod
brew install openmpi --c++11 --with-mpi-thread-multiple
brew install hdf5 --c++11 --with-fortran --with-mpi
brew install netcdf --with-fortran
brew cask install inkscape
brew cask install KeePassXC

##  Put in some standard fonts to pretty up displays
brew tap caskroom/fonts

brew cask install font-anonymice-powerline
brew cask install font-consolas-for-powerline
brew cask install font-dejavu-sans-mono-for-powerline
brew cask install font-droid-sans-mono-for-powerline
brew cask install font-fira-mono-for-powerline
brew cask install font-inconsolata-dz-for-powerline
brew cask install font-inconsolata-for-powerline
brew cask install font-inconsolata-for-powerline-bold
brew cask install font-inconsolata-g-for-powerline
brew cask install font-liberation-mono-for-powerline
brew cask install font-menlo-for-powerline
brew cask install font-meslo-for-powerline
brew cask install font-monofur-for-powerline
brew cask install font-noto-mono-for-powerline
brew cask install font-powerline-symbols
brew cask install font-roboto-mono-for-powerline
brew cask install font-source-code-pro-for-powerline
brew cask install font-ubuntu-mono-derivative-powerline

brew cask install font-3270-nerd-font
brew cask install font-3270-nerd-font-mono
brew cask install font-anonymouspro-nerd-font
brew cask install font-anonymouspro-nerd-font-mono
brew cask install font-arimo-nerd-font
brew cask install font-arimo-nerd-font-mono
brew cask install font-aurulentsansmono-nerd-font
brew cask install font-aurulentsansmono-nerd-font-mono
brew cask install font-bitstreamverasansmono-nerd-font
brew cask install font-bitstreamverasansmono-nerd-font-mono
brew cask install font-codenewroman-nerd-font
brew cask install font-codenewroman-nerd-font-mono
brew cask install font-cousine-nerd-font
brew cask install font-cousine-nerd-font-mono
brew cask install font-dejavusansmono-nerd-font
brew cask install font-dejavusansmono-nerd-font-mono
brew cask install font-droidsansmono-nerd-font
brew cask install font-droidsansmono-nerd-font-mono
brew cask install font-fantasquesansmono-nerd-font
brew cask install font-fantasquesansmono-nerd-font-mono
brew cask install font-firacode-nerd-font
brew cask install font-firacode-nerd-font-mono
brew cask install font-firamono-nerd-font
brew cask install font-firamono-nerd-font-mono
brew cask install font-go-mono-nerd-font
brew cask install font-go-mono-nerd-font-mono
brew cask install font-gohu-nerd-font
brew cask install font-gohu-nerd-font-mono
brew cask install font-hack-nerd-font
brew cask install font-hack-nerd-font-mono
brew cask install font-hasklig-nerd-font
brew cask install font-hasklig-nerd-font-mono
brew cask install font-heavydata-nerd-font
brew cask install font-heavydata-nerd-font-mono
brew cask install font-hermit-nerd-font
brew cask install font-hermit-nerd-font-mono
brew cask install font-inconsolata-nerd-font
brew cask install font-inconsolata-nerd-font-mono
brew cask install font-inconsolatago-nerd-font
brew cask install font-inconsolatago-nerd-font-mono
brew cask install font-inconsolatalgc-nerd-font
brew cask install font-inconsolatalgc-nerd-font-mono
brew cask install font-iosevka-nerd-font
brew cask install font-iosevka-nerd-font-mono
brew cask install font-lekton-nerd-font
brew cask install font-lekton-nerd-font-mono
brew cask install font-liberationmono-nerd-font
brew cask install font-liberationmono-nerd-font-mono
brew cask install font-meslo-nerd-font
brew cask install font-meslo-nerd-font-mono
brew cask install font-monofur-nerd-font
brew cask install font-monofur-nerd-font-mono
brew cask install font-monoid-nerd-font
brew cask install font-monoid-nerd-font-mono
brew cask install font-mononoki-nerd-font
brew cask install font-mononoki-nerd-font-mono
brew cask install font-mplus-nerd-font
brew cask install font-mplus-nerd-font-mono
brew cask install font-noto-nerd-font
brew cask install font-noto-nerd-font-mono
brew cask install font-profont-nerd-font
brew cask install font-profont-nerd-font-mono
brew cask install font-proggyclean-nerd-font
brew cask install font-proggyclean-nerd-font-mono
brew cask install font-robotomono-nerd-font
brew cask install font-robotomono-nerd-font-mono
brew cask install font-sharetechmono-nerd-font
brew cask install font-sharetechmono-nerd-font-mono
brew cask install font-sourcecodepro-nerd-font
brew cask install font-sourcecodepro-nerd-font-mono
brew cask install font-spacemono-nerd-font
brew cask install font-spacemono-nerd-font-mono
brew cask install font-terminus-nerd-font
brew cask install font-terminus-nerd-font-mono
brew cask install font-tinos-nerd-font
brew cask install font-tinos-nerd-font-mono
brew cask install font-ubuntu-nerd-font
brew cask install font-ubuntu-nerd-font-mono
brew cask install font-ubuntumono-nerd-font
brew cask install font-ubuntumono-nerd-font-mono

