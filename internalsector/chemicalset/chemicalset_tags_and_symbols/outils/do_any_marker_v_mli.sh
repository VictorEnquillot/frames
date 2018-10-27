#!/bin/bash

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

echo "(** {3 The Marker functionalities for Any_marker.} *)" 
echo "" 
echo "(** {6 Making.} *)" 
echo ""
echo "val make :" 
echo "    Any_symbolsum_t.any_symbolsum ->"
echo "        Any_indexsum_t.any_indexsum ->" 
echo "          Any_marker_t.any_marker"
echo ""
echo "(** {6 Extracting.} *)"    

for s in `${UTI}/do_forset`
do
	S=`capitalize_first ${s}`
	M=`moduleset_abbreviation ${s}`
	asa=`argumentset_abbreviation ${s}`
	echo "" 
	echo "val ${s}_marker_off_any_marker :" 
	echo "   Any_marker_t.any_marker ->"
	echo "      ${S}_marker_t.${s}_marker"
	echo ";;"
done

echo "(** {6 Upgrading.} *)"    

for s in `${UTI}/do_forset`
do
	S=`capitalize_first ${s}`
	M=`moduleset_abbreviation ${s}`
	asa=`argumentset_abbreviation ${s}`
	echo "" 
	echo "val any_marker_of_${s}_marker :" 
	echo "   ${S}_marker_t.${s}_markersum ->"
	echo "       Any_marker_t.any_marker"
	echo ";;"
done
echo "(** {6 Displaying.} *)"
echo ""
echo "val print : Format.formatter ->" 
echo "  Any_marker_t.any_marker ->" 
echo "    unit" 
echo ";;" 
echo "" 
echo "val name :" 
echo "    Any_marker_t.any_marker ->"  
echo "      string" 
echo ";;" 
echo "" 
echo "val print_list : Format.formatter ->" 
echo "  Any_marker_t.any_marker list ->" 
echo "    unit"
echo ";;"
echo ""
echo "val name_list :"
echo "    Any_marker_t.any_marker list ->" 
echo "      string"
echo ";;" 
echo ""  
. ${UTI}/do_created.sh
echo "" 
