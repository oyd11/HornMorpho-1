#!/usr/bin/env python3

import sys

from distutils.core import setup

setup(name='HornMorpho',
      version='3.0',
      description='Morphological analyzer and generator for Amharic, Tigrinya, Oromo',
      author='Michael Gasser',
      author_email='gasser@indiana.edu',
      url='http://homes.soic.indiana.edu/gasser/plogs.html',
      license="GPL v3",
      packages=['hm', 'hm.morpho', 'hm.morpho.geez'],
      package_data = {'hm': ['languages/am/cas/*.cas',
                             'languages/am/fst/*.fst',
                             'languages/am/lex/*.lex',
                             'languages/am/stat/*.dct',
                             'languages/am/cache/am.cch',
                             'languages/am/data/ag.txt',
                             'languages/ti/cas/*.cas',
                             'languages/ti/fst/*.fst',
                             'languages/ti/lex/*.lex',
                             'languages/ti/stat/*.dct',
                             'languages/ti/data/ti.txt',
                             'languages/om/cas/*.cas',
                             'languages/om/fst/*.fst',
                             'languages/om/lex/*.lex',
                             'languages/om/stat/*.dct'],
                      'hm.morpho.geez': ['am_conv_sera.txt', 'ti_conv_sera.txt', 'stv_conv_sera.txt']}
     )
