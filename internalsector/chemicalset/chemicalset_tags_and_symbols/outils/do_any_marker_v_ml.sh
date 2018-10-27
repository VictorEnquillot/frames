# ls -C1 *symbol_t.ml | sed -e 's/_symbol_t.ml/ \\/' -e '/set/d'

. ${UTI}/do_capitalize_first
. ${UTI}/do_category_name_abbreviation 
. ${UTI}/do_category_type_abbreviation 
. ${UTI}/do_category_off_category_extended
. ${UTI}/do_argument_category
. ${UTI}/do_category_argument_abbreviation
. ${UTI}/do_category_type_abbreviation
. ${UTI}/do_category_value_abbreviation
. ${UTI}/do_moduleset_abbreviation
. ${UTI}/do_argumentset_abbreviation

# set -x 

echo "(** {3 The functionalities for Any_marker.} *)"
echo ""
echo "let mod_nam = \"Any_marker_v\";;"
echo ""
echo "(** {6 Modules.} *)"
echo ""

for c in `${UTI}/do_marker_category_constructor_set`
do
	if [ "$c" == "index" ] || [ "$c" == "symbol" ]
        then
		category=${c}
	    	Category=`capitalize_first ${category}`
		caa=`category_argument_abbreviation ${category}`
		cta=`category_type_abbreviation ${category}`
		cva=`category_value_abbreviation ${category}`
		cam=`category_name_abbreviation ${category}`
		echo "module An${cam}_${cta} = Any_${category}sum_${cta}"
		echo "module An${cam}_${cva} = Any_${category}sum_${cva}"
 	fi
done
echo "module Lst_v = List_v"
echo ""
echo "(** {6 Making.} *)"
echo ""
echo "let make = Marker_v.make;;"
echo ""
echo "(** {6 Extracting.} *)" 
for s in `${UTI}/do_forset`
do
	S=`capitalize_first ${s}`
	M=`moduleset_abbreviation ${s}`
	asa=`argumentset_abbreviation ${s}`
	echo "" 
	echo "let ${s}_marker_off_any_marker any_marker ="
	echo "  let any_smb = Marker_v.symbol_off_marker any_marker in"
	echo "  let any_idx = Marker_v.index_off_marker any_marker in"
	echo "  let smb_${asa} = Ans_v.${s}_symbolsum_off_any_symbolsum any_smb in"
	echo "  let idx_${asa} = Ani_v.${s}_indexsum_off_any_indexsum any_idx in"
	echo "  Marker_v.make smb_${asa} idx_${asa}"
	echo ";;"
done

echo ""
echo "(** {6 Upgrading.} *)"
 
for s in `${UTI}/do_forset`
do
	S=`capitalize_first ${s}`
	M=`moduleset_abbreviation ${s}`
	asa=`argumentset_abbreviation ${s}`
	echo "" 
	echo "let any_marker_of_${s}_marker marker_${asa} ="
	echo "  let smb_${asa} = Marker_v.symbol_off_marker marker_${asa} in"
	echo "  let idx_${asa} = Marker_v.index_off_marker marker_${asa} in"
	echo "  let smb_any = Ans_t.${S}_symbolsum smb_${asa} in"
	echo "  let idx_any = Ani_t.${S}_indexsum idx_${asa} in"
	echo "  make smb_any idx_any"
	echo ";;"
done

echo ""  
echo "(** {6 Displaying.} *)"
echo ""
echo "let print ppf amk = "
echo "  Marker_v.print Ans_v.print Ani_v.print ppf amk"
echo ";;"
echo ""
echo "let name amk ="
echo "  Marker_v.name Ans_v.name Ani_v.name amk"
echo ";;"
echo ""
echo "let print_list ppf amk_l =" 
echo "  Lst_v.print print ppf amk_l" 
echo ";;"
echo ""
echo "let name_list amk_l ="
echo "  Lst_v.name_with_separator name \"|\" amk_l"
echo ";;"
echo ""
. $UTI/do_created.sh
echo "" 

