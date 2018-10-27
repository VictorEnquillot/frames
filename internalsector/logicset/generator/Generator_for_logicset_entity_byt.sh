entity=$1
category=$2
kind=$3

case ${entity} in
    atom ) ;;
    block ) ;;
    logic ) ;;
    logic_propositional_intuitionistic ) ;;
    fragment ) ;;
    molecule ) ;;
    segment ) ;;
    *) echo "";
	echo "Error: in $0 : unknown entity >${entity}<";
	echo "Usage :";
	echo " $0 logic_propositional_intuitionistic symbol"
	echo " $0 logic_propositional_intuitionistic formula"
	echo " $0 logic symbol"
	echo " $0 logic formula"
	echo " $0 atom ..."
	echo " $0 block ..."
	echo " $0 segment ..."
	echo " $0 fragment ..."
	echo " $0 molecule ..."
	exit;;
esac

case ${category} in
    symbol ) ;;
    formula ) ;;
    *) echo "";
	echo "Error: in $0 : unknown category >${category}<";
	echo "Usage :";
	echo " $0 ${entity} symbol tv";
	echo " $0 ${entity} symbol files_mli_mk";
	echo " $0 ${entity} formula tv";
	echo " $0 ${entity} formula files_mli_mk";
	exit;;
esac

case ${kind} in
    mk ) file="files_mli_mk";;
    tv ) file="tv";;
    * ) file="files_mli_mk";;
esac

symbols_dat=${entity}_symbols.dat
formulas_dat=${entity}_formulas.dat

echo "generating entity ${entity} from ${symbols_dat} and ${formulas_dat}"

cp ${symbols_dat} logic_symbols.dat
cp ${formulas_dat} logic_formulas.dat

echo "logic ${category} implementation ${entity}" | $GGEN/Generator_for_domainset_category_usagefile.byt

