. ${UTI}/do_header.sh

path_length="4"
echo "${domainset} : $path_length "
path_length=`expr $path_length - 1`

for f in `do_${domainset}_constructor_set`
do
    flevel=`constructor_level ${f}`
    case ${flevel} in
	1 )
	    echo "..${f} : $path_length "
	    check_is_empty_of_file do_${f}_constructor_set
	    path_length=`expr $path_length - 1`
	    for g in `do_${f}_constructor_set`
	    do
		glevel=`constructor_level ${g}`
		case ${glevel} in
		    1 )
			echo "....${g} : $path_length "
			check_is_empty_of_file do_${g}_constructor_set
			path_length=`expr $path_length - 1`
			for h in `do_${g}_constructor_set`
			do
			    hlevel=`constructor_level ${h}`
			    case ${hlevel} in
				1 )
				    echo "......${h} : $path_length "
				    check_is_empty_of_file do_${h}_constructor_set
				    path_length=`expr $path_length - 1`
				    for i in `do_${h}_constructor_set`
				    do
					ilevel=`constructor_level ${i}`
					case ${ilevel} in
					    1 )
						echo "........${i} : $path_length "
						;;
					    * ) 
						;;
					esac
				    done # i
				    path_length=`expr $path_length + 1`
				    ;;
				* ) 
				    ;;
			    esac
			done # h
			path_length=`expr $path_length + 1`
			;;
		    * ) ;;
		esac
	    done # g
	    path_length=`expr $path_length + 1`
	    ;;
	* ) ;;
    esac
done # f 

exit

    