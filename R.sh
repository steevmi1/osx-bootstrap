#!/bin/sh

if ! test -d $HOME/.R; then
    mkdir $HOME/.R
else
    if test -f $HOME/.R/Makevars; then
        cp $HOME/.R/Makevars $HOME/.R/Makevars.bak.$(date '+%Y%m%d.%H%M%S')
    fi
fi

if test -f $HOME/.Rprofile; then
    mv $HOME/.Rprofile $HOME/.Rprofile.$(date '+%Y%m%d.%H%M%S')
fi

echo 'Sys.setlocale(category="LC_ALL", locale = "en_US.UTF-8")' > $HOME/.Rprofile

brew install R

echo "CC=/usr/local/opt/llvm/bin/clang -fopenmp
CXX=/usr/local/opt/llvm/bin/clang++
# -O3 shoulGd be faster than -O2 (default) level optimisation ..
CFLAGS=-g -O3 -Wall -pedantic -std=gnu99 -mtune=native -pipe
CXXFLAGS=-g -O3 -Wall -pedantic -std=c++11 -mtune=native -pipe
LDFLAGS=-L/usr/local/opt/gettext/lib -L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib
CPPFLAGS=-I/usr/local/opt/gettext/include -I/usr/local/opt/llvm/include" > $HOME/.R/Makevars

# data.table
R --vanilla << EOF
install.packages('data.table', repos='http://cran.us.r-project.org')
q()
EOF

rm ~/.R/Makevars
echo "CC=/usr/local/opt/llvm/bin/clang
CXX=/usr/local/opt/llvm/bin/clang++
# -O3 should be faster than -O2 (default) level optimisation ..
CFLAGS=-g -O3 -Wall -pedantic -std=gnu99 -mtune=native -pipe
CXXFLAGS=-g -O3 -Wall -pedantic -std=c++11 -mtune=native -pipe
LDFLAGS=-L/usr/local/opt/gettext/lib -L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib
CPPFLAGS=-I/usr/local/opt/gettext/include -I/usr/local/opt/llvm/include" > $HOME/.R/Makevars

# knitr
R --vanilla << EOF
install.packages('knitr', repos = 'http://cran.us.r-project.org')
q()
EOF

# rmarkdown
R --vanilla << EOF
install.packages('rmarkdown', repos = 'http://cran.us.r-project.org')
q()
EOF

##  Hadleyverse
R --vanilla << EOF
install.packages('tidyverse', repos = 'http://cran.us.r-project.org')
q()
EOF
