#!/bin/bash                                                                                                                       
# This is xtf.sh                                                                                                          

  echo "Extracting File" $1 " as " $2 from cap.i
  awk -v pats="$1 ~ " -v pat1e=":xcpt~ \"$1" -v pat2e=":xcps~ \"$1" -v pat3e=":xcpe~ \"$1" '                                                                                          
   BEGIN { pout = 0 }                                                                                                             
   $0 ~ pats { pout = 1 }                                                                                                         
   $0 ~ pat1e { pout = 0 }                                                                                                         
   $0 ~ pat2e { pout = 0 }                                                                                                         
   $0 ~ pat3e { pout = 0 }                                                                                                         
   pout > 1 {print}                                                                                                               
   pout > 0 { pout++ }                                                                                                            
  ' cap.i > ./$2
