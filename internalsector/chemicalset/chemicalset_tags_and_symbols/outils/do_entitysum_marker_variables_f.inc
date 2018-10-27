	F=`capitalize_first ${f}`
	Fma=`module_abbreviation ${f}`
     Fmodat="${Fma}${cna}_${cta}"
     Fmodav="${Fma}${cna}_${cva}"
     Fmodavm="${Fma}${cna_m}_${cva_m}"
     Fmodatm="${Fma}${cna_m}_${cta_m}"
     Fmodavs="${Fma}${cna_s}_${cva_s}"
     Fmodats="${Fma}${cna_s}_${cta_s}"
    
     faa=`argument_abbreviation ${f}`
     Faa=`capitalize_first ${faa}`
     farg="${caa}_${faa}"
    
     fmodule=${f}_${category}
     Fmodule=`capitalize_first ${fmodule}`
     Fmodulet="${Fmodule}_${cta}"
     Fmodulev="${Fmodule}_${cva}"
    
     fargm="${caa_m}_${faa}"
     fmodulem="${f}_${category_marker}"
     Fmodulem=`capitalize_first ${fmodulem}`
     Fmoduletm="${Fmodulem}_${cta_m}"
     Fmodulevm="${Fmodulem}_${cva_m}"

     fargs="${caa_s}_${faa}"
     fmodules="${f}_${category_symbol}"
     Fmodules=`capitalize_first ${fmodules}`
     Fmodulets="${Fmodules}_${cta_s}"
     Fmodulevs="${Fmodules}_${cva_s}"
     Fmodulets="${Fmodules}_${cta_s}"
     Fmodulevs="${Fmodules}_${cva_s}"
