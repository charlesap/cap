#!/bin/bash
# This is cap.xtrall.sh
 ./cap.xtrfile.sh "cap,env,bootstrap,cap.xtrall.sh"    cap.xtrall.sh
 ./cap.xtrfile.sh "cap,env,bootstrap,cap.xtrfile.sh"   cap.xtrfile.sh
 ./cap.xtrfile.sh "cap,env,bootstrap,i2l.sh"           i2l.tmp 
 sed -e 's/vbtm/verbatim/g' i2l.tmp >                  i2l.sh
 ./cap.xtrfile.sh "cap,env,bootstrap,cap.bookpre.txt"  cap.bookpre.txt
 ./cap.xtrfile.sh "cap,env,bootstrap,pro.py"           pro.py
 ./cap.xtrfile.sh "cap,env,bootstrap,i2py.sh"          i2py.sh
 ./cap.xtrfile.sh "cap,env,bootstrap,s2py.sh"          s2py.sh
 ./cap.xtrfile.sh "cap,env,bootstrap,epi.py"           epi.py
 ./cap.xtrfile.sh "cap,env,tool,calc,syntax"           calc.ibnf
 ./cap.xtrfile.sh "cap,env,bootstrap,smtx.py"          smtx.py
 ./cap.xtrfile.sh "cap,env,tool,calc,test.calc"        test.calc
 ./cap.xtrfile.sh "cap,env,bootstrap,cap.ibnfsmntx.sh" cap.ibnfsmntx.sh
 ./cap.xtrfile.sh "cap,env,bootstrap,autosmtx.py"      autosmtx.py
 ./cap.xtrfile.sh "cap,env,bootstrap,cap.mkinterp.sh"  cap.mkinterp.sh
 ./cap.xtrfile.sh "cap,env,lang,indp,sntx,common-chr,ibnf" common-chr.ibnf
 ./cap.xtrfile.sh "cap,env,lang,indp,sntx,common-ari,ibnf" common-ari.ibnf
 ./cap.xtrfile.sh "cap,env,lang,indp,sntx,i,ibnf"      i.ibnf
 ./cap.xtrfile.sh "cap,env,lang,indp,sntx,i,smtx"      i.smtx
 chmod 755 cap.*.sh ; ./cap.mkinterp.sh
