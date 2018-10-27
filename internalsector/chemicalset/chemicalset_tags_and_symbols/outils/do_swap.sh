. ${UTI}/do_header.sh	
#swap_two_words () {
#    echo $1 | sed 's/\(.*\)_\(.*\)/\2_\1/'
#}

a_b=`echo $1 |tr A-Z a-z`
abb=`swap_two_words $a_b` 
echo $abb