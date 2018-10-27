doublet_module_line () {
#set -x
if [ "$1" = "index" ] || [ "$1" = "ordinal" ] 
then 
    A=`capitalize_first ${1}`
    Acbma=`constructor_basic_module_abbreviation ${1}`
    acbta=`constructor_basic_type_abbreviation ${1}`
    
    echo "module ${Acbma}_${acbta} = ${A}_${acbta}"    
else
    echo ""
fi
}

doublet_module_lines () {
# doublet_a_b
    echo "module Dbt_t = Doublet_t"    
    a=`echo $1 | cut -d"_" -f2`
    b=`echo $1 | cut -d"_" -f3`
    la=`doublet_module_line $a`
    lb=`doublet_module_line $b`
    if [ ! "$la" = "" ] 
    then
	echo $la
    fi
    if [ ! "$lb" = "" ] 
    then
	echo $lb
    fi
}