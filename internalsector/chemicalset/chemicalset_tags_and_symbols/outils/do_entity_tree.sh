. ${UTI}/do_header.sh

depth="4"
echo "${domainset} : $depth "
depth=`expr $depth - 1`

for f in `do_${domainset}_constructor_set`
do
    flevel=`constructor_level ${f}`
    case ${flevel} in
	1 )
	    echo "..${f} : $depth "
	    check_is_empty_of_file do_${f}_constructor_set
	    depth=`expr $depth - 1`
	    for g in `do_${f}_constructor_set`
	    do
		glevel=`constructor_level ${g}`
		case ${glevel} in
		    1 )
			echo "....${g} : $depth "
			check_is_empty_of_file do_${g}_constructor_set
			depth=`expr $depth - 1`
			for h in `do_${g}_constructor_set`
			do
			    hlevel=`constructor_level ${h}`
			    case ${hlevel} in
				1 )
				    echo "......${h} : $depth "
				    check_is_empty_of_file do_${h}_constructor_set
				    depth=`expr $depth - 1`
				    for i in `do_${h}_constructor_set`
				    do
					ilevel=`constructor_level ${i}`
					case ${ilevel} in
					    1 )
						echo "........${i} : $depth "
						;;
					    * ) 
						;;
					esac
				    done # i
				    depth=`expr $depth + 1`
				    ;;
				* ) 
				    ;;
			    esac
			done # h
			depth=`expr $depth + 1`
			;;
		    * ) ;;
		esac
	    done # g
	    depth=`expr $depth + 1`
	    ;;
	* ) ;;
    esac
done # f 

exit

    