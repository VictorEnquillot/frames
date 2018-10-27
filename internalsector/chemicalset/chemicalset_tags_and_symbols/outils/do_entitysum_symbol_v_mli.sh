category="symbol"
. ${UTI}/do_header.sh

# ---- module file extension : t.ml v.ml v.mli ----------------

module_extension=`module_extension $0`

# -----------------  Usage category = $1  ---------------------

. do_usage.inc

# -------------- Check input -----------------------------------

check_is_entity_code_buildable ${entitysum} 

# -------------- Caml Code -------------------------------------

echo "(** {3 A ${Category} for a ${Entitysum}.} *)"
echo ""

# ------------- including moment specific file ---------------------

. do_moment_${category}_converting_v_mli.inc

# -------------- Displaying ----------------------------------------

echo "(** {6 Displaying.} *)"
echo ""

echo "val name :"
echo "  ${Emodulet}.${emodule} ->"
echo "    string"
echo ";;"
echo ""

echo "val print : Format.formatter ->"
echo "  ${Emodulet}.${emodule} ->"
echo "    unit"
echo ";;"
echo ""

# --------------- Extracting -------------------

echo "(** {6 Extracting.} *)"
echo ""

ehascs=`has_entity_constructor_set ${e}`
elevel=`constructor_level ${e}`

if [ ${ehascs} = "y" ] 
then 
    for f in `do_${entitysum}_constructor_set`
    do
    . ${UTI}/do_entitysum_${category}_variables_f.inc

    fhascs=`has_entity_constructor_set ${f}`
    flevel=`constructor_level ${f}`

    echo "(** {6 Extracting ${F} from ${E}.} *)"
    echo ""

    if [ ${fhascs} = "n" ]
    then 
	case ${flevel} in
	    [bs])
		echo "val ${e}_${f}_off_${emodule} :"
		echo "  ${Emodulet}.${emodule} ->"
		echo "    ${f}"
		echo ""
		echo ";;"
		;;
	    [0dh])
		no_action Extraction doublet $f
		;;
	    *)
		echo " Error: in script $0"
		echo "        in paragraph Extracting"
		echo "        entity $f has no constructor_set and"
		echo " flevel >${flevel}< for constructor $f is unknown";
		exit
		;;
	esac # f

    else # has constructor_set

	echo "val ${fmodule}_off_${emodule} :"
	echo "  ${Emodulet}.${emodule} ->"
	echo "    ${Fmodulet}.${fmodule}"
	echo ";;"
	echo ""
	
	for g in `do_${f}_constructor_set`    # hascs 
	do
	    . ${UTI}/do_entitysum_${category}_variables_g.inc
	    
	    glevel=`constructor_level ${g}`
	    ghascs=`has_entity_constructor_set ${g}`
	    
	    echo "(** {9 Extracting ${G} from ${F} from ${E}.} *)"
	    echo ""

	    if [ ${ghascs} = "n" ]
	    then 
		case ${glevel} in
		    [bs]) 
			echo "val ${f}_${g}_off_${emodule} :"
			echo "  ${Emodulet}.${emodule} ->"
			echo "    ${g}"
			echo ";;"
			echo ""
			;;
		    [0dh])
			no_action Extraction doublet $g
			;;
    		    *) 
			echo " Error: in script $0"
			echo "        in paragraph Extracting Level g"
			echo " glevel >${glevel}< for constructor $f is unknown";
			echo " Cure : check file do_has_entity_constructor_set"
			exit
			;;
		esac # ${glevel}  
		
	    else # g
	    	
		echo "val ${gmodule}_off_${emodule} :"
		echo "  ${Emodulet}.${emodule} ->"
		echo "    ${Gmodulet}.${gmodule}"
		echo ";;"
		echo ""
		
		for h in `do_${g}_constructor_set`    
		do
		    . ${UTI}/do_entitysum_${category}_variables_h.inc
		    
		    hlevel=`constructor_level ${h}`
		    hhascs=`has_entity_constructor_set ${h}`
		    
		    echo "(** {12 Extracting ${H} from ${G} from ${F} from ${E}.} *)"
		    echo ""
		    if [ ${hhascs} = "n" ]
		    then 
			case ${hlevel} in
			    [bs])
				echo "val ${g}_${h}_off_${emodule} :"
				echo "  ${Emodulet}.${emodule} ->"
				echo "    ${h}"
				echo ";;"
				echo ""
				;;
			    [0dh])
				no_action Extraction $h $hlevel
				;;
			    
    			    *) 
				echo " Error: in script $0"
				echo "        in paragraph Extracting Level h"
				echo " hlevel >${hlevel}< for constructor $h is unknown";
				echo " Cure : check file do_has_entity_constructor_set"
				exit
				;;
			esac # ${hlevel}  		    
			
		    else # h
	    		
			echo "val ${hmodule}_off_${emodule} :"
			echo "  ${Emodulet}.${emodule} ->"
			echo "    ${Hmodulet}.${hmodule}"
			echo ";;"
			echo ""

		    fi # h
		done # h
	    fi # g
	done # for g
    fi # f
    done # f
fi # e

# ------------- end of Extracting -------------------------------

# -------------------- Querying needs Extracting ----------------

echo "(** {6 Querying.} *)"
echo ""

ehascs=`has_entity_constructor_set ${e}`
elevel=`constructor_level ${e}`
fcount=`entity_constructor_count ${e}`

if [ ${ehascs} = "y" ] 
then 
    for f in `do_${entitysum}_constructor_set`
    do
    . ${UTI}/do_entitysum_${category}_variables_f.inc

    fhascs=`has_entity_constructor_set ${f}`
    flevel=`constructor_level ${f}`

    echo "(** {6 Querying ${F} in ${E}.} *)"
    echo ""

    if [ ${fhascs} = "n" ]
    then 
	case ${flevel} in
	    [bs])
		if [ ${fcount} -gt 1 ] 
		then
		    echo "val is_${e}_${f}_off_${emodule} :"
		    echo "  ${Emodulet}.${emodule} ->"
		    echo "    bool"
		    echo ";;"
		    echo ""
		else # $f is unique Constructor of $e
		    echo "val is_${e}_${f}_off_${emodule} :"
		    echo "  ${Emodulet}.${emodule} ->"
		    echo "    bool"
		    echo ";;"
		    echo ""
		fi 
		;;
	    [0dh])
		no_action Query $f $flevel
		;;

	    *)
		echo " Error: in script $0"
		echo "        in paragraph Querying"
		echo " flevel >${flevel}< for constructor $f is unknown";
		exit
		;;
	esac # f

    else # [ $fhascs -ge 0 ]

	if [ ${fcount} -gt 1 ]  # is that necessary ???
	then
	    echo "val is_${fmodule}_off_${emodule} :"
	    echo "  ${Emodulet}.${emodule} ->"
	    echo "  bool"
	    echo ";;"
	    echo ""
	else # $f is unique Constructor of $e not bfis 
	    echo "val is_${fmodule}_off_${emodule} :"
	    echo "  ${Emodulet}.${emodule} ->"
	    echo "  bool"
	    echo ";;"
	    echo ""
	fi 
	
	for g in `do_${f}_constructor_set`    # hascs 
	do
	    . ${UTI}/do_entitysum_${category}_variables_g.inc
	    
	    glevel=`constructor_level ${g}`
	    ghascs=`has_entity_constructor_set ${g}`
	    
	    echo "(** {9 Querying ${G} in ${F} in ${E}.} *)"
	    echo ""

	    if [ ${ghascs} = "n" ]
	    then 
		case ${glevel} in
		    [bs])
			echo "val is_${f}_${g}_off_${emodule} :"
			echo "  ${Emodulet}.${emodule} ->"
			echo "  bool"
			echo ";;"
			echo ""
			;;
		    [0dh])
			no_action Query $g $glevel
			;;
    		    *) 
			echo " Error: in script $0"
			echo "        in paragraph Querying Level g"
			echo " glevel >${glevel}< for constructor $f is unknown";
			echo " Cure : check file do_has_entity_constructor_set"
			exit
			;;
		esac # ${glevel}  
		
	    else # g
	    	
		echo "val is_${gmodule}_off_${emodule} :"
		echo "  ${Emodulet}.${emodule} ->"
		echo "  bool"
		echo ";;"
		echo ""
		
		for h in `do_${g}_constructor_set`    
		do
		    . ${UTI}/do_entitysum_${category}_variables_h.inc
		    
		    hlevel=`constructor_level ${h}`
		    hhascs=`has_entity_constructor_set ${h}`
		    
		    echo "(** {12 Querying ${H} in ${G} in ${F} in ${E}.} *)"
		    echo ""
		    if [ ${hhascs} = "n" ]
		    then 
			case ${hlevel} in
			    [bs])
				echo "val is_${g}_${h}_off_${emodule} :"
				echo "  ${Emodulet}.${emodule} ->"
				echo "  bool"
				echo ""
				;;
			    [0dh])
				no_action Query $h $hlevel
				;;
			    
    			    *) 
				echo " Error: in script $0"
				echo "        in paragraph Querying Level h"
				echo " hlevel >${hlevel}< for constructor $h is unknown";
				echo " Cure : check file do_has_entity_constructor_set"
				exit
				;;
			esac # ${hlevel}  		    
			
		    else # h
	    		
			echo "val is_${hmodule}_off_${emodule} :"
			echo "  ${Emodulet}.${emodule} ->"
			echo "  bool"
			echo ";;"
			echo ""

		    fi # h
		done # h
	    fi # g
	done # for g
    fi # f
    done # f
fi # e


# ------------------ end of Querying. --------------------------------

# ------------------------- Upgrading -----------------------

ehascs=`has_entity_constructor_set ${e}`
elevel=`constructor_level ${e}`

if [ ${ehascs} = "y" ] 
then 
    for f in `do_${e}_constructor_set`
    do
	. ${UTI}/do_entitysum_${category}_variables_f.inc
	
	flevel=`constructor_level ${f}`
	fhascs=`has_entity_constructor_set ${f}`
	
	echo "(** {6 Upgrading from ${F} to ${E}.} *)"
	echo ""

	if [ ${fhascs} = "n" ]
	then 
	    case ${flevel} in
		0)
		    abbrev=`bare_constructor_abbreviation_name $f` 
		    echo "val ${abbrev} : ${Emodulet}.${emodule};;"
		    echo ""
		    ;;
		[bs])
		    echo "val make :"
		    echo "  ${f} ->"
		    echo "    ${Emodulet}.${emodule}"
		    echo ";;"
		    echo ""
		    echo "val ${emodule}_of_${e}_${f} :"
		    echo "  ${f} ->"
		    echo "    ${Emodulet}.${emodule}"
		    echo ";;"
		    echo ""
		    ;;
		[hd]) 
		    no_action Upgrade $f $flevel
		    ;;
    		*) 
		    echo "Error: in script $0"
		    echo "       in paragraph Upgrading to entity >${e}<"
		    echo "       constructor >$f<"
		    echo "       has fhascs >${fhascs}<";
		    echo "       and flevel >${flevel}< should be 0 or b or s";
		    echo "Cure : check script do_for_all_has_entity_constructor_set_all";
		    exit;;
	    esac # flevel
	    
	else # [ $fhascs > 0 ]
	    
	    echo "val ${emodule}_of_${fmodule} :"
	    echo "  ${Fmodulet}.${fmodule} ->"
	    echo "    ${Emodulet}.${emodule}"
	    echo ";;"
	    echo ""

	    for g in `do_${f}_constructor_set`    # hascs 
	    do
		. ${UTI}/do_entitysum_${category}_variables_g.inc
		
		glevel=`constructor_level ${g}`
		ghascs=`has_entity_constructor_set ${g}`

		echo "(** {9 Upgrading from ${G} through ${F} to ${E}.} *)"
		echo ""
		
		if [ ${ghascs} = "n" ]
		then 
		    case ${glevel} in
			0)
			    abbrev=`bare_constructor_abbreviation_name $g` 
			    echo "val ${abbrev} : ${Emodulet}.${emodule};;"
			    echo ""
			    ;;
			[bs])
			    echo "val ${emodule}_of_${f}_${g} :"
			    echo "  ${g} ->"
			    echo "    ${Emodulet}.${emodule}"
			    echo ";;"
			    echo ""
			    ;;
			[hd]) 
			    no_action Upgrade $g $glevel
			    ;;
    			*) 
			    echo " Error: in script $0"
			    echo "        in paragraph Upgrading Level g"
			    echo " glevel >${glevel}< for constructor $g is unknown";
			    echo " Cure : check file do_has_entity_constructor_set"
			    exit
			    ;;
		    esac # ${glevel}  
		    
		else # g
		    
		    echo "val ${emodule}_of_${gmodule} :"
		    echo "  ${Gmodulet}.${gmodule} ->"
		    echo "    ${Emodulet}.${emodule}"
		    echo ";;"
		    echo ""
		    
		    for h in `do_${g}_constructor_set`    
		    do
			. ${UTI}/do_entitysum_${category}_variables_h.inc
			
			hlevel=`constructor_level ${h}`
			hhascs=`has_entity_constructor_set ${h}`

			echo "(** {12 Upgrading from ${H} through ${G} through ${F} to ${E}.} *)"
			echo ""

			if [ ${hhascs} = "n" ] 
			then
			    case ${hlevel} in
				0)
				    abbrev=`bare_constructor_abbreviation_name $h` 
				    echo "val ${abbrev} : ${Emodulet}.${emodule};;"
				    ;;
				[bs])
				    echo "val ${emodule}_of_${g}_${h} :"
				    echo "  ${h} ->"
				    echo "    ${Emodulet}.${emodule}"
				    echo ";;"
				    echo ""
				    ;;
				[dh]) 
				    no_action Upgrade $h $hlevel
				    ;;

    				*) 
				    echo " Error: in script $0"
				    echo "        in paragraph Upgrading Level h"
				    echo " hlevel >${hlevel}< for constructor $h is unknown";
				    echo " Cure : check file do_has_entity_constructor_set"
				    exit
				    ;;
			    esac # ${hlevel}  
			    
			else # h

			    echo "val ${emodule}_of_${hmodule} :"
			    echo "  ${Hmodulet}.${hmodule} ->"
			    echo "    ${Emodulet}.${emodule}"
			    echo ";;"
			    echo ""

			fi # h
		    done # for h
		fi # g
	    done # for g
	fi # f
    done # for f
fi # e

# --------------- Includes ---------------------------------------

# --------------- Including ---------------------------------------

emodulev=`echo ${Emodulev} | tr A-Z a-z`
filinc="cat_${emodulev}_mli.inc"
if [ -f ${filinc} ]
then
    cat ${filinc}
    echo ""
fi

# --------------- Dating ---------------------------------------

. ${UTI}/do_created.sh
echo ""

exit
