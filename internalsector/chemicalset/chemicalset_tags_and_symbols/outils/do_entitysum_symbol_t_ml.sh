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

# -------------- Modules ----------------------------------------

echo "(** {6 Modules.} *)"
echo ""

for f in `do_${entitysum}_constructor_set`
do
    F=`capitalize_first ${f}`
    flevel=`constructor_level ${f}`
    case $flevel in
	[1]) 
	    . ${UTI}/do_entitysum_${category}_variables_f.inc
	    echo "module ${Fmodat} = ${Fmodulet}"
	    ;;
	o) 
	    echo "module Ord_p = Ordinal_p"
	    ;;
	x) 
	    echo "module Idx_p = Index_p"
	    ;;
	0)
	    echo " (* $f is a bare constructor no module can be defined *)"
	    ;;
	[bfis])
	    echo " (* With a $F constructor no module can be defined *)"
	    ;;
	d) # doublet_b_c
	    doublet_module_lines_in_t_ml ${f}
	    ;;
	*)
	    echo " Error: in script $0"
	    echo "        in paragraph Modules"
	    echo " unknown flevel >${flevel}< for constructor $f";
	    echo " Cure : 1. add it to case upper";
	    echo "        2. check script ${UTI}/do_constructor_level.sh";
	    exit
	    ;;

    esac
done # for f
echo ""

# -------------- Type ------------------------------------------

echo "(** {6 Type.} *)"
echo ""

echo "type ${emodule} ="
for f in `do_${entitysum}_constructor_set`
do
    F=`capitalize_first ${f}`
    flevel=`constructor_level ${f}`
    case $flevel in
	1) 
	    . ${UTI}/do_entitysum_${category}_variables_f.inc
	    echo "  | ${Fmodule} of ${Fmodat}.${fmodule}"
	    ;;
	0)
	    echo "  | ${F}"
	    ;;
	d) # doublet_b_c
	    doublet_type_constructor_line ${f}
	    ;;
	[bfis])
	    echo "  | ${F} of ${f}"
	    ;;
	o) 
	    echo "  | Ordinal of Ord_p.ordinal"
	    ;;
	x) 
	    echo "  | Index of Idx_p.index"
	    ;;
	*)
	    echo " Error: in script $0"
	    echo "        in paragraph Type"
	    echo " flevel >$flevel< for constructor >$f< is unknown";
	    exit
	    ;;
    esac
done # for f
echo ";;"
echo ""

# --------------- Including ---------------------------------------

emodulet=`echo ${Emodulet} | tr A-Z a-z`
filinc="cat_${emodulet}_ml.inc"
if [ -f ${filinc} ]
then
    cat ${filinc}
fi

# --------------- Dating ---------------------------------------

. ${UTI}/do_created.sh
echo ""

exit

