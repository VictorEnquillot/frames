category="marker"
. ${UTI}/do_header.sh

# ---- module file extension : t.ml v.ml v.mli -------------------

module_extension="v.ml"
check_module_extension ${module_extension}

# -----------------  Usage category = $1  ------------------------------

. do_usage.inc

# -------------------- Caml Code ----------------------------

echo "(** {3 The ${Category} functionalities for a ${Entityset}.} *)"
echo ""
echo "let nam_mod = \"${Entitysum}_${category}_v\";;"
echo ""

# ------------------------ Modules -----------------------------

echo "(** {6 Modules.} *)"
echo ""

echo "module Mrk_v = Marker_v" > temp_modules
echo "module Sci_v = Stereochemical_index_v" >> temp_modules
echo "module ${Emodat} = ${Emodulet}" >> temp_modules
echo "module ${Emodavs} = ${Emodulevs}" >> temp_modules

for f in `do_${entitysum}_constructor_set`
do
    flevel=`constructor_level ${f}`
    fdepth=`entity_depth ${f}`
    case ${flevel} in
	1) 
	    . ${UTI}/do_entitysum_${category}_variables_f.inc

	    echo "module ${Fmodav} = ${Fmodulev}" >> temp_modules
	    echo "module ${Fmodavs} = ${Fmodulevs}" >> temp_modules
#--- g
	    for g in `do_${f}_constructor_set`
	    do
		glevel=`constructor_level ${g}`
		gdepth=`entity_depth ${g}`
		case ${glevel} in
		    1) 
			. ${UTI}/do_entitysum_${category}_variables_g.inc
			
			echo "module ${Gmodav} = ${Gmodulev}" >> temp_modules
			echo "module ${Gmodavs} = ${Gmodulevs}" >> temp_modules
#--- h
			for h in `do_${g}_constructor_set`
			do
			    hlevel=`constructor_level ${h}`
			    hdepth=`entity_depth ${h}`
			    case ${hlevel} in
				1) 
				    . ${UTI}/do_entitysum_${category}_variables_h.inc
				    
				    echo "module ${Hmodav} = ${Hmodulev}" >> temp_modules
				    echo "module ${Hmodavs} = ${Hmodulevs}" >> temp_modules
				    ;;
				[0bs])
#				    echo " (* With a $H constructor no module can be defined. *)"
				    ;;
				*) 
				    echo " Error: in script $0"
				    echo "        in paragraph Modules"
				    echo " hlevel >${hlevel}< for constructor $h is unknown";
				    exit
				    ;;
			    esac # h
			done # h
			;;
#----
		    [0bs])
#			echo " (* With a $G constructor no module can be defined. *)"
			;;
		    *) 
		    echo " Error: in script $0"
		    echo "        in paragraph Modules"
		    echo " glevel >${glevel}< for constructor $g is unknown";
		    exit
		    ;;
		esac # g
	    done # g
	    ;;
#----
	[0bs])
#	    echo " (* With a $F constructor no module can be defined. *)"
	    ;;
	*) 
	    echo " Error: in script $0"
	    echo "        in paragraph Modules"
	    echo " flevel >${flevel}< for constructor $f is unknown";
	    exit
	    ;;
    esac # f
done # f

sort -u temp_modules
echo ""

# ---------------- end of Modules 

# --------------- Making -------------------

echo "(** {6 Making.} *)"
echo ""
echo "let make ${eargs} sci = "
echo "  Mrk_v.make ${eargs} sci"
echo ";;"
echo ""
echo "" 

# ---------------- end of Making -------------------

# ------------------------ Displaying -----------------------------

echo "(** {6 Displaying.} *)"
echo ""

echo "let name ${earg} ="
echo "  Mrk_v.name ${Emodavs}.name Sci_v.name ${earg}"
echo ";;"
echo ""

echo "let print ppf ${earg} ="
echo "  Mrk_v.print ${Emodavs}.print Sci_v.print ppf ${earg}"
echo ";;"
echo ""

echo "" 
# ----------------- end of Displaying -----------------------------

# --------------- Extracting  Symbols -------------------

echo "(** {9 Extracting Symbols.} *)"
echo ""

echo "let ${emodules}_off_${emodule} ${earg} ="
echo "  Mrk_v.symbol_off_marker ${earg}"
echo ";;"
echo ""

echo "let stereochemical_index_off_${emodule} ${earg} ="
echo "  Mrk_v.index_off_marker ${earg}"
echo ";;"
echo ""

edepth=`entity_depth ${e}`
elevel=`constructor_level ${e}`

if [ ${edepth} -ge 1 ] 
then 
    echo "(** {6 Extracting ${Category}s Level One.} *)"
    echo ""
    
    for f in `do_${entitysum}_constructor_set`
    do
	. ${UTI}/do_entitysum_${category}_variables_f.inc
	
	flevel=`constructor_level ${f}`   
	fdepth=`entity_depth ${f}`
	case ${flevel} in
	    1) 
		echo "let ${fmodule}_off_${emodule} ${earg} ="
		echo "  Mrk_v.map_symbol ${Emodavs}.${fmodules}_off_${emodules} ${earg}"
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
	    echo "(** {9 Extracting ${Category}s Level Two through ${Fmodule}.} *)"
	    echo ""

	    for g in `do_${f}_constructor_set`
	    do
		. ${UTI}/do_entitysum_${category}_variables_g.inc

		glevel=`constructor_level ${g}`
		gdepth=`entity_depth ${g}`
		
		case ${glevel} in
		    1) 
			echo "let ${gmodule}_off_${emodule} ${earg} ="
			echo "  Mrk_v.map_symbol ${Emodavs}.${gmodules}_off_${emodules} ${earg}"
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
		    echo "(** {9 Extracting ${Category}s Level Two through ${Gmodule}.} *)"
		    echo ""
		    
		    for h in `do_${g}_constructor_set`
		    do
			. ${UTI}/do_entitysum_${category}_variables_h.inc
			
			hlevel=`constructor_level ${h}`
			hdepth=`entity_depth ${h}`
			
			case ${hlevel} in
			    1) 
				echo "let ${hmodule}_off_${emodule} ${earg} ="
				echo "  Mrk_v.map_symbol ${Emodavs}.${hmodules}_off_${emodules} ${earg}"
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
	    echo "let is_${fmodule}_off_${emodule} ${earg} ="
	    echo "  let ${eargs} = ${emodules}_off_${emodule} ${earg} in"
	    echo "  ${Emodavs}.is_${fmodules}_off_${emodules} ${eargs}"
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
		    echo "let is_${gmodule}_off_${emodule} ${earg} ="
		    echo "  let ${eargs} = ${emodules}_off_${emodule} ${earg} in"
		    echo "  ${Emodavs}.is_${gmodules}_off_${emodules} ${eargs}"
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
			    echo "let is_${hmodule}_off_${emodule} ${earg} ="
			    echo "  let ${eargs} = ${emodules}_off_${emodule} ${earg} in"
			    echo "  ${Emodavs}.is_${hmodules}_off_${emodules} ${eargs}"
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

echo "(** {6 Upgrading.} *)"
echo ""
echo "(** {6 Upgrading from ${F} to ${E}.} *)"

for f in `do_${entitysum}_constructor_set`
do
    . ${UTI}/do_entitysum_${category}_variables_f.inc

    flevel=`constructor_level ${f}`   
    fdepth=`entity_depth ${f}`
    case ${flevel} in
	1) 
	    echo "let ${emodule}_of_${fmodule} ${farg} ="
	    echo "  Mrk_v.map_symbol ${Emodavs}.${emodules}_of_${fmodules} ${farg}"
	    echo ";;"
	    echo ""
	    ;;
	[0bs])
	    echo " (* $f is a bare constructor not upgradable *)"
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
		    echo "let ${emodule}_of_${gmodule} ${garg} ="
		    echo "  Mrk_v.map_symbol ${Emodavs}.${emodules}_of_${gmodules} ${garg}"
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
			    echo "let ${emodule}_of_${hmodule} ${harg} ="
			    echo "  Mrk_v.map_symbol ${Emodavs}.${emodules}_of_${hmodules} ${harg}"
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
