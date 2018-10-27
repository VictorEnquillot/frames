	H=`capitalize_first ${h}`
     Hma=`module_abbreviation ${h}`

     Hmodat="${Hma}${cna}_${cta}"
     Hmodav="${Hma}${cna}_${cva}"

     Hmodavm="${Hma}${cna_m}_${cva_m}"
     Hmodatm="${Hma}${cna_m}_${cta_m}"

     Hmodavs="${Hma}${cna_s}_${cva_s}"
     Hmodats="${Hma}${cna_s}_${cta_s}"
    
     haa=`argument_abbreviation ${h}`
     Haa=`capitalize_first ${haa}`
     harg="${caa}_${haa}"
    
     hmodule=${h}_${category}
     Hmodule=`capitalize_first ${hmodule}`
     Hmodulet="${Hmodule}_${cta}"
     Hmodulev="${Hmodule}_${cva}"
    
     hargm="${caa_m}_${haa}"
     hmodulem="${h}_${category_marker}"
     Hmodulem=`capitalize_first ${hmodulem}`
     Hmoduletm="${Hmodulem}_${cta_m}"
     Hmodulevm="${Hmodulem}_${cva_m}"

     hargs="${caa_s}_${haa}"
     hmodules="${h}_${category_symbol}"
     Hmodules=`capitalize_first ${hmodules}`
     Hmodulets="${Hmodules}_${cta_s}"
     Hmodulevs="${Hmodules}_${cva_s}"
     Hmodulets="${Hmodules}_${cta_s}"
     Hmodulevs="${Hmodules}_${cva_s}"
