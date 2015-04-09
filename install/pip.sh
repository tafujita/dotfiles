#!/bin/sh

pip install -U setuptools
pip install -U pip
pip install -U virtualenv

pip install numpy
pip install scipy
pip install matplotlib
#pip install PySide
pip install ipython[all]
pip install patsy
pip install pandas
pip install sympy
pip install nose

pip install statsmodels
pip install zipline
pip install quandl
pip install scikit-learn
pip install pillow

# install nose (unittests & doctests on steroids)
sudo pip install virtualenv nose

# some cool python libs (if you don't know them, look them up)
# time series stuff, natural language toolkit
# generate plots, symbolic maths in python, fancy debugging output
sudo pip install nltk
#sudo pip install sympy q

# html stuff (parsing)
# sudo pip install html5lib cssselect pyquery lxml BeautifulSoup

# webapps / apis (choose what you like)
sudo pip install Flask Django

# semantic web stuff: rdf & sparql
# sudo pip install rdflib SPARQLWrapper
