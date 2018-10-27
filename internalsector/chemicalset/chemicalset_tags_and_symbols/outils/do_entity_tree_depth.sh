. ${UTI}/do_header.sh


depth="4"
#set -x
depth=`expr $depth - 1`
for f in `do_${domainset}_constructor_set`
do
    flevel=`constructor_level ${f}`
    case ${flevel} in
	1 )
	    check_is_empty_of_file do_${f}_constructor_set
	    depth=`expr $depth - 1`
	    for g in `do_${f}_constructor_set`
	    do
		glevel=`constructor_level ${g}`
		case ${glevel} in
		    1 )
			check_is_empty_of_file do_${g}_constructor_set
			depth=`expr $depth - 1`
			for h in `do_${g}_constructor_set`
			do
			    hlevel=`constructor_level ${h}`
			    case ${hlevel} in
				1 )
				    check_is_empty_of_file do_${h}_constructor_set
				    depth=`expr $depth - 1`
				    idepth=-1
				    for i in `do_${h}_constructor_set`
				    do
					ilevel=`constructor_level ${i}`
					case ${ilevel} in
					    1 )
						if [ $ilevel -ge $idepth ]
						then
						    $idepth=$ilevel
						fi    
						echo "........${i} : $depth "
						;;
					    * ) 
						;;
					esac # i
				    done # i
				    depth=`expr $depth + 1`
				    ;;
				* ) ;;
			    esac # h
			    echo "......${h} : $depth "
			done # h
			depth=`expr $depth + 1`
			;;
		esac # g
		echo "..${g} : $depth "
	    done # g
	    depth=`expr $depth + 1`
	    ;;
	* ) ;;
    esac # f
    echo "..${f} : $depth "
done # f 
depth=`expr $depth + 1`
echo "${domainset} : $depth "

exit

    