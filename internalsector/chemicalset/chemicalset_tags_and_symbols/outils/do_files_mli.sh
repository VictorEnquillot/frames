. ${UTI}/do_header.sh

echo "FILES_MLI :=  \\"

for f in `do_${domainset}_constructor_set`
do
    check_is_empty_of_file do_${f}_constructor_set
    for g in `do_${f}_constructor_set`
    do
	glevel=`constructor_level ${g}`
	case ${glevel} in
	    1 )
		check_is_empty_of_file do_${g}_constructor_set
		for h in `do_${g}_constructor_set`
		do
		    hlevel=`constructor_level ${h}`
		    case ${hlevel} in
			1 )
			    echo "      ${h}_symbol_t.mli \\"
			    ;;
			* )
			    break 
			    ;;
		    esac
		done # h
		echo "    ${g}_symbol_t.mli \\"
		;;
	    * )
		break 
		;;
	esac
    done # g
    echo "    ${f}_symbol_t.mli \\"
done # f 
echo "      ${domainset}_symbol_t.mli \\"
exit

    