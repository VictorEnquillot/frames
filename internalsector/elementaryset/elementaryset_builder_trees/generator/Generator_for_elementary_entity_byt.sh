entity=$1
category=$2
kind=$3

case ${entity} in
    elementary ) ;;
    *) echo "";
	echo "Error: in $0 : unknown entity >${entity}<";
	echo "Usage :";
	echo " $0 elementary formula"
	echo " $0 elementary symbol"
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

cp ${symbols_dat} $GFIG/figure_symbols.dat
cp ${formulas_dat} $GFIG/figure_formulas.dat

echo "figure ${category} implementation ${entity}" | /keep/executables/Generator_for_domainset_category_usagefile_v2.3.byt

