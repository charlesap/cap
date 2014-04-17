#!/bin/bash
# This is xta.sh
 ./xtf.sh "cap,env,bootstrap,xta.sh"                    xta.sh
 ./xtf.sh "cap,env,bootstrap,xtf.sh"                    xtf.sh
 ./xtf.sh "cap,env,bootstrap,i2l.sh"                    i2l.tmp 
 sed -e 's/vbtm/verbatim/g' i2l.tmp >                   i2l.sh
 ./xtf.sh "cap,env,bootstrap,cap.bookpre.txt"           cap.bookpre.txt
 ./xtf.sh "cap,env,bootstrap,pro.py"                    pro.py
 ./xtf.sh "cap,env,bootstrap,i2py.sh"                   i2py.sh
 ./xtf.sh "cap,env,bootstrap,s2py.sh"                   s2py.sh
 ./xtf.sh "cap,env,bootstrap,epi.py"                    epi.py
 ./xtf.sh "cap,env,lang,indp,sntx,calc-example,ibnf"    calc-example.ibnf sntx
 ./xtf.sh "cap,env,lang,indp,sntx,calc-example,six-py"  calc-example.six-py
 ./xtf.sh "cap,env,bootstrap,smtx.py"          smtx.py
 ./xtf.sh "cap,env,lang,indp,sntx,calc-example,input"         calc-example.input 
 ./xtf.sh "cap,env,bootstrap,cap.ibnfsmntx.sh" cap.ibnfsmntx.sh
 ./xtf.sh "cap,env,bootstrap,autosmtx.py"      autosmtx.py
 ./xtf.sh "cap,env,bootstrap,README"           README
 ./xtf.sh "cap,env,bootstrap,cap.mkinterp.sh"  cap.mkinterp.sh
 ./xtf.sh "cap,env,lang,indp,sntx,common-chr,ibnf" common-chr.ibnf
 ./xtf.sh "cap,env,lang,indp,sntx,i,ibnf"      i.ibnf
 ./xtf.sh "cap,env,lang,indp,sntx,i,smtx"      i.smtx
 ./xtf.sh "cap,env,lang,indp,sntx,i,six-py"    i.six-py
 ./xtf.sh "cap,env,lang,indp,sntx,i,test"      test.i
 ./xtf.sh "cap,env,lang,indp,sntx,ibnf,ibnf"   ibnf.ibnf
 ./xtf.sh "cap,env,lang,indp,sntx,ibnf,smtx"   ibnf.smtx
 ./xtf.sh "cap,env,lang,indp,sntx,ibnf,six-py" ibnf.six-py
 ./xtf.sh "cap,env,lang,indp,sntx,six,ibnf"    six.ibnf
 ./xtf.sh "cap,env,lang,indp,sntx,sibnf,smtx"  sibnf.smtx
 ./xtf.sh "cap,env,lang,indp,sntx,six,six-py"  six.six-py
 ./xtf.sh "cap,env,lang,indp,sntx,toy,ibnf"    toy.ibnf
 ./xtf.sh "cap,env,lang,indp,sntx,toy,test"    test.toy
 ./xtf.sh "cap,env,lang,indp,sntx,toy,six-py"  toy.six-py
 chmod 755 *.sh ; ./cap.mkinterp.sh
