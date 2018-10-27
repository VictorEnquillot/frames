category="marker"
. ${UTI}/do_header.sh

# ---- module file extension : t.ml v.ml v.mli -------------------

module_extension="v.mli"
check_module_extension ${module_extension}

# -----------------  Usage category = $1  ------------------------------

. do_usage.inc

# -------------------- Caml Code ----------------------------

echo "(** {3 The ${Category} functionalities for a ${Entityset}.} *)"
echo ""
# ------------------------ Modules -----------------------------
# ----------------- end of Modules 

# ------------------------ Making ------------------------------

echo "(** {6 Making.} *)"
echo ""
echo "val make :"
echo "  ${Emodulets}.${emodules} ->"
echo "    Stereochemical_index_t.stereochemical_index ->"
echo "      ${Emodulet}.${emodule}"
echo ";;"
echo ""
# ----------------- end of Making -------------------------------

# ------------------------ Displaying ---------------------------

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

# ----------------- end of Displaying ---------------------------

# ------------------------ Extracting Symbols -------------------
echo "(** {6 Extracting.} *)"
echo ""
echo "(** {9 Extracting Symbols.} *)"
echo ""

echo "val ${emodules}_off_${emodule} :"
echo "  ${Emodulet}.${emodule} ->"
echo "    ${Emodulets}.${emodules}"
echo ";;"
echo ""

echo "val stereochemical_index_off_${emodule} :"
echo "  ${Emodulet}.${emodule} ->"
echo "    Stereochemical_index_t.stereochemical_index"
echo ";;"
echo ""

edepth=`entity_depth ${e}`
elevel=`constructor_level ${e}`

if [ ${edepth} -ge 1 ] 
then 
    echo "(** {6 Extracting ${F} from ${E}.} *)"
    echo ""
    
    for f in `do_${entitysum}_constructor_set`
    do
	. ${UTI}/do_entitysum_${category}_variables_f.inc
	
	flevel=`constructor_level ${f}`   
	fdepth=`entity_depth ${f}`
	case ${flevel} in
	    1) 
		echo "val ${fmodule}_off_${emodule} :"
		echo "  ${Emodulet}.${emodule} ->"
		echo "    ${Fmodulet}.${fmodule}"
		echo ";;"
		echo ""
		;;
	    [0bs])
		echo " (* $f is a bare constructor not extractable *)"
		;;
	    *)
		echo " Error: in script $0"
		echo "        in paragraph Extracting"
		echo " flevel >${flevel}< for constructor $f is unknown";
		exit;;
	esac # flevel

	if [ ${fdepth} -ge 1 ] 
	then 
	    echo "(** {9 Extracting ${G} from ${F} from ${E}.} *)"
	    echo ""

	    for g in `do_${f}_constructor_set`
	    do
		. ${UTI}/do_entitysum_${category}_variables_g.inc

		glevel=`constructor_level ${g}`
		gdepth=`entity_depth ${g}`
		
		case ${glevel} in
		    1) 
			echo "val ${gmodule}_off_${emodule} :"
			echo "  ${Emodulet}.${emodule} ->"
			echo "    ${Gmodulet}.${gmodule}"
			echo ";;"
			echo ""
			;;
		    [0bs])
			echo " (* $g is a bare constructor not extractable *)"
			;;
		    *)
			echo " Error: in script $0"
			echo "        in paragraph Extracting"
			echo " glevel >${glevel}< for constructor $g is unknown";
			exit;;
		esac # glevel

		if [ ${gdepth} -ge 1 ] 
		then 
		    echo "(** {12 Extracting ${H} from ${G} from ${F} from ${E}.} *)"
		    echo ""
		    
		    for h in `do_${g}_constructor_set`
		    do
			. ${UTI}/do_entitysum_${category}_variables_h.inc
			
			hlevel=`constructor_level ${h}`
			hdepth=`entity_depth ${h}`
			
			case ${hlevel} in
			    1) 
				echo "val ${hmodule}_off_${emodule} :"
				echo "  ${Emodulet}.${emodule} ->"
				echo "    ${Hmodulet}.${hmodule}"
				echo ";;"
				echo ""
				;;
			    [0bs])
				echo " (* $h is a bare constructor not extractable *)"
				;;
			    *)
				echo " Error: in script $0"
				echo "        in paragraph Extracting"
				echo " hlevel >${hlevel}< for constructor $h is unknown";
				exit;;
			esac # hlevel
		    done # h
		else # ${gdepth} -ge 1 ] 
		    echo "(* NO Extracting through entity ${g} *)"
		fi 
	    done # g
	else # ${fdepth} -ge 1 ] 
	    echo "(* NO Extracting through entity ${f} *)"
	fi # ${fdepth} -ge 1 ] 
    done # f
    echo "" 
fi # [ ${edepth} -ge 1 ] 

# --------------- end of Extracting Symbols ----------------------

# --------------- Querying  Symbols ----------------------------

echo "(** {6 Querying Symbols.} *)"
echo ""

for f in `do_${entitysum}_constructor_set`
do
    . ${UTI}/do_entitysum_${category}_variables_f.inc
  
    flevel=`constructor_level ${f}`   
    fdepth=`entity_depth ${f}`
    case ${flevel} in
	1) 
	    echo "(** {9 Querying Symbols for entity $f.} *)"
	    echo ""
	    echo "val is_${fmodule}_off_${emodule} :"
	    echo "  ${Emodulet}.${emodule} ->"
	    echo "    bool"
	    echo ";;"
	    echo ""
	    ;;
	[0bs])
	    echo " (* $f is a bare constructor not extractable *)"
	    ;;
	*)
	    echo " Error: in script $0"
	    echo "        in paragraph Extracting"
	    echo " flevel >${flevel}< for constructor $f is unknown";
	    exit;;
    esac # flevel
    
    if [ ${fdepth} -ge 1 ] 
    then 
	echo "(** {9 Querying Symbols Level Two through ${Fmodule}.} *)"
	echo ""
	
	for g in `do_${f}_constructor_set`
	do
	    . ${UTI}/do_entitysum_${category}_variables_g.inc
	    
	    glevel=`constructor_level ${g}`
	    gdepth=`entity_depth ${g}`
	    
	    case ${glevel} in
		1) 
		    echo "val is_${gmodule}_off_${emodule} :"
		    echo "  ${Emodulet}.${emodule} ->"
		    echo "    bool"
		    echo ";;"
		    echo ""
		    ;;
		[0bs])
		    echo " (* $g is a bare constructor *)"
		    ;;
		*)
		    echo " Error: in script $0"
		    echo "        in paragraph Extracting"
		    echo " glevel >${glevel}< for constructor $g is unknown";
		    exit;;
	    esac # glevel
	    if [ ${gdepth} -ge 1 ] 
	    then 
		echo "(** {9 Extracting ${Category}s Level Two through ${Gmodule}.} *)"
		echo ""
		
		for h in `do_${g}_constructor_set`
		do
		    . ${UTI}/do_entitysum_${category}_variables_h.inc
		    
		    hlevel=`constructor_level ${h}`
		    hdepth=`entity_depth ${h}`
		    
		    case ${hlevel} in
			1) 
			    echo "val is_${hmodule}_off_${emodule} :"
			    echo "  ${Emodulet}.${emodule} ->"
			    echo "    bool"
			    echo ";;"
			    echo ""
			    ;;
			[0bs])
			    echo " (* $h is a bare constructor no possible query. *)"
			    ;;
			*)
			    echo " Error: in script $0"
			    echo "        in paragraph Extracting"
			    echo " hlevel >${hlevel}< for constructor $h is unknown";
			    exit;;
		    esac # hlevel
		done # h
	    else # ${gdepth} -ge 1 ] 
		echo "(* NO Querying through entity ${f} *)"
	    fi # g
	done # g
    else # f
	echo "(* NO Querying through entity ${f} *)"
    fi # f
done # f
echo "" 

# --------------- end of Querying Symbols --------------------- 

# --------------- Upgrading -----------------------------------

echo "(** {6 Upgrading from ${F} to ${E}.} *)"
echo ""

for f in `do_${entitysum}_constructor_set`
do
    . ${UTI}/do_entitysum_${category}_variables_f.inc

    flevel=`constructor_level ${f}`   
    fdepth=`entity_depth ${f}`
    case ${flevel} in
	1) 
	    
	    echo "val ${emodule}_of_${fmodule} :"
	    echo "  ${Fmodulet}.${fmodule} ->"
	    echo "    ${Emodulet}.${emodule}"
	    echo ";;"
	    echo ""
	    ;;
	[0bs])
	    echo " (* $f is a bare constructor not extractable *)"
	    ;;
	*)
	    echo " Error: in script $0"
	    echo "        in paragraph Extracting"
	    echo " flevel >${flevel}< for constructor $f is unknown";
	    exit;;
    esac # f
    
    if [ ${fdepth} -ge 1 ] 
    then 
	echo "(** {9 Upgrading from ${G} through ${F} to ${E}.} *)"
	echo ""
	
	for g in `do_${f}_constructor_set`
	do
	    . ${UTI}/do_entitysum_${category}_variables_g.inc
	    
	    glevel=`constructor_level ${g}`
	    gdepth=`entity_depth ${g}`
	    
	    case ${glevel} in
		1) 
		    echo "val ${emodule}_of_${gmodule} :"
		    echo "  ${Gmodulet}.${gmodule} ->"
		    echo "    ${Emodulet}.${emodule}"
		    echo ";;"
		    echo ""
		    ;;
		[0bs])
		    echo " (* $g is a bare constructor *)"
		    ;;
		*)
		    echo " Error: in script $0"
		    echo "        in paragraph Extracting"
		    echo " glevel >${glevel}< for constructor $g is unknown";
		    exit;;
	    esac # glevel

	    if [ ${gdepth} -ge 1 ] 
	    then 
		echo "(** {12 Upgrading from ${H} through ${G} through ${F} to ${E}.} *)"
		echo ""
		
		for h in `do_${g}_constructor_set`
		do
		    . ${UTI}/do_entitysum_${category}_variables_h.inc
		    
		    hlevel=`constructor_level ${h}`
		    hdepth=`entity_depth ${h}`
		    
		    case ${hlevel} in
			1) 
			    echo "val ${emodule}_of_${hmodule} :"
			    echo "  ${Hmodulet}.${hmodule} ->"
			    echo "    ${Emodulet}.${emodule}"
			    echo ";;"
			    echo ""
			    ;;
			[0bs])
			    echo " (* $h is a bare constructor *)"
			    ;;
			*)
			    echo " Error: in script $0"
			    echo "        in paragraph Extracting"
			    echo " hlevel >${hlevel}< for constructor $h is unknown";
			    exit;;
		    esac # hlevel
		done # h
	    else # ${gdepth} -ge 1 ] 
		echo "(* NO Querying through entity ${f} *)"
	    fi # g
	done # g
    else # f	    
	echo "(* NO Upgrading through entity ${g} *)"
    fi # f
done # f
echo "" 

# --------------- end of Upgrading Symbols ----------------------

# ----------------------- Dating ----------------------------------------

. ${UTI}/do_created.sh
echo ""

exit
