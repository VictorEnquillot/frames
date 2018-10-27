
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

echo "(** {3 Any_tag type.} *)"
echo ""
echo "(** {6 Modules.} *)"
echo ""

for c in `${UTI}/do_tag_category_constructor_set`
do
	if [ "$c" == "index" ] || [ "$c" == "symbol" ] 
        then
		category=${c}
	    	Category=`capitalize_first ${category}`
		caa=`category_argument_abbreviation ${category}`
		cta=`category_type_abbreviation ${category}`
		cam=`category_name_abbreviation ${category}`
		echo "module An${cam}_${cta} = Any_${category}_${cta}"
 	fi
done
echo ""
echo "(** {6 Types.} *)"
echo ""
echo "type any_tag = (Ans_t.any_symbolsum, Ani_t.any_indexsum, AnS_t.any_statesum) Tag_t.tag"
echo ";;"
echo ""
. $UTI/do_created.sh
echo "" 

