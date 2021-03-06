entity=$1
category=$2
kind=$3

case ${entity} in
    figure_database_db1 ) ;;
    figure_database_db2 ) ;;
    figure_database ) ;;
    figure_tuple ) ;;
    figure_list ) ;;
    triangle ) ;;
    vector ) ;;
    point ) ;;
    *) echo "";
	echo "Error: in $0 : unknown entity >${entity}<";
	echo "Usage :";
	echo " $0 figure_list formula"
	echo " $0 figure_list symbol"
	echo " $0 figure_database formula"
	echo " $0 figure_database symbol"
	echo " $0 figure_database_db1 formula"
	echo " $0 figure_database_db1 symbol"
	echo " $0 figure_database_db2 formula"
	echo " $0 figure_database_db2 symbol"
	echo " $0 figure_tuple formula"
	echo " $0 figure_tuple symbol"
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

cp ${symbols_dat} figure_symbols.dat
cp ${formulas_dat} figure_formulas.dat

echo "figure ${category} implementation ${entity}" | /keep/executables/Generator_for_domainset_category_usagefile_v2.3.byt

