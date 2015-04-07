#!/bin/sh

#
# install PIL, imagemagick, graphviz and other
# image generating stuff (qt is nice for viewing)
ln -s /usr/local/include/freetype2 /usr/local/include/freetype # seems freetype can't be found on some systems otherwise
brew install pillow imagemagick graphviz
brew install cairo --without-x
brew install py2cairo # this will ask you to download xquartz and install it
brew install qt pyqt

# install nose (unittests & doctests on steroids)
sudo pip install virtualenv nose
sudo pip3 install virtualenv nose

# install numpy and scipy
# the faster default below now works, but you can still use openblas if you like
#brew install openblas
brew install numpy # --with-openblas
brew install scipy # --with-openblas

# test the numpy & scipy install
# brew test numpy
# brew test scipy

# some cool python libs (if you don't know them, look them up)
# time series stuff, natural language toolkit
# generate plots, symbolic maths in python, fancy debugging output
sudo pip install pandas nltk
sudo pip3 install pandas nltk
brew install matplotlib
sudo pip install sympy q
sudo pip3 install sympy q

# ipython and notebook support
brew install zmq
sudo pip install ipython[zmq,qtconsole,notebook,test]
sudo pip3 install ipython[zmq,qtconsole,notebook,test]

# html stuff (parsing)
sudo pip install html5lib cssselect pyquery lxml BeautifulSoup
sudo pip3 install html5lib cssselect pyquery lxml BeautifulSoup

# webapps / apis (choose what you like)
sudo pip install Flask Django
sudo pip3 install Flask Django

# semantic web stuff: rdf & sparql
sudo pip install rdflib SPARQLWrapper
sudo pip3 install rdflib SPARQLWrapper

#
# Cleanup
#
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
