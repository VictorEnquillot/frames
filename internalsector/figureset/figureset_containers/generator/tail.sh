echo "" >> ${File}
echo "(* generated by $0 ${args} *)" >> ${File}
echo "(* using ${template} *)" >> ${File}

if [ -s ${supplement} ] 
then
    echo "(* adding ${supplement} *)" >> ${File} 
fi

echo "(* done on ${dat} *)" >> ${File}

echo " less ${File}"
echo " mv ${File} ../"
echo " make $Module.cmo"
echo "" >> ${File}