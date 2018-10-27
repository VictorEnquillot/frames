	G=`capitalize_first ${g}`
     	Gma=`module_abbreviation ${g}`
     Gmodat="${Gma}${cna}_${cta}"
     Gmodav="${Gma}${cna}_${cva}"
     Gmodavm="${Gma}${cna_m}_${cva_m}"
     Gmodatm="${Gma}${cna_m}_${cta_m}"
     Gmodavs="${Gma}${cna_s}_${cva_s}"
     Gmodats="${Gma}${cna_s}_${cta_s}"
    
     gaa=`argument_abbreviation ${g}`
     Gaa=`capitalize_first ${gaa}`
     garg="${caa}_${gaa}"
    
     gmodule=${g}_${category}
     Gmodule=`capitalize_first ${gmodule}`
     Gmodulet="${Gmodule}_${cta}"
     Gmodulev="${Gmodule}_${cva}"
    
     gargm="${caa_m}_${gaa}"
     gmodulem="${g}_${category_marker}"
     Gmodulem=`capitalize_first ${gmodulem}`
     Gmoduletm="${Gmodulem}_${cta_m}"
     Gmodulevm="${Gmodulem}_${cva_m}"

     gargs="${caa_s}_${gaa}"
     gmodules="${g}_${category_symbol}"
     Gmodules=`capitalize_first ${gmodules}`
     Gmodulets="${Gmodules}_${cta_s}"
     Gmodulevs="${Gmodules}_${cva_s}"
     Gmodulets="${Gmodules}_${cta_s}"
     Gmodulevs="${Gmodules}_${cva_s}"
