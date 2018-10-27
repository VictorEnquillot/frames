type_constructor () {
#set -x
if [ "$1" = "index" ] || [ "$1" = "ordinal" ] 
then 
    A=`capitalize_first ${1}`
    Acbma=`constructor_basic_module_abbreviation ${1}`
    acbta=`constructor_basic_type_abbreviation ${1}`
    
    echo "${Acbma}_${acbta}.${1}"    
else
    echo "${1}"
fi
}

doublet_type_line () {
# doublet_a_b
    a=`echo $1 | cut -d"_" -f2`
    b=`echo $1 | cut -d"_" -f3`
    atc=`type_constructor ${a}`
    btc=`type_constructor ${b}`

    echo "  | Doublet of (${atc}, ${btc}) Dbt_t.doublet"
}