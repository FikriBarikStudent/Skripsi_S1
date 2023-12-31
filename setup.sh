#!/bin/sh
$ apt install cm-super
$ sudo apt-get install texlive-latex-recommended 
$ sudo apt-get install dvipng texlive-latex-extra texlive-fonts-recommended  
$ wget http://mirrors.ctan.org/macros/latex/contrib/type1cm.zip 
$ unzip type1cm.zip -d /tmp/type1cm 
$ cd /tmp/type1cm/type1cm/ && sudo latex type1cm.ins
$ sudo mkdir /usr/share/texmf/tex/latex/type1cm 
$ sudo cp /tmp/type1cm/type1cm/type1cm.sty /usr/share/texmf/tex/latex/type1cm 
$ sudo texhash 