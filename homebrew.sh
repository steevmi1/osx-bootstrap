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
brew install screen
brew install watch
brew install wdiff --with-gettext
brew install wget

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
brew install less
brew install openssh
brew install rsync
brew install svn
brew install unzip
##brew cask install texlive
##brew cask install inkscape

##  Python setup
brew install python3
##pip3 install pelican==3.6.3
##pip3 install markdown rpy2

brew tap homebrew/science
##  lmod is in the homebrew/science tap, so install this here.
brew install lmod
