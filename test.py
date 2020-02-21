import requests
from bs4 import BeautifulSoup
import re
import sys
import datetime
from time import time
import re

# import urllib2
try:
    # For Python 3.0 and later
    from urllib.request import urlopen
except ImportError:
    # Fall back to Python 2's urllib2
    from urllib2 import urlopen

def cfl():

        url = "http://www.livescores.com/soccer/spain/primera-division/results/7-days/"
        page  = urlopen(url)
        soup = BeautifulSoup(page, "lxml")

        o = []
        gms = soup.findAll('div', attrs={'class':'row-gray'})

        for gm in gms:
            g = gm.getText()
            g = g.replace('Game Preview', '')
            o.append(g)

        # output
        if len(o) == 0:
            return("I didn't find any score at {0}".format(url))
        else:
            return("{0}".format("\n".join(o)))

# cfl = cfl()
# print(cfl)
