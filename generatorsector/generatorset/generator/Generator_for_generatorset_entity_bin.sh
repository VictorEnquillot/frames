entity=$1
category=$2
kind=$3

case ${entity} in
    camlline ) ;;
    group ) ;;
    section ) ;;
    camlparagraph ) ;;
    item ) ;;
    *) echo "";
	echo "Error: in $0 : unknown entity >${entity}<";
	echo "Usage :";
	echo " $0 camlline ..."
	echo " $0 group ..."
	echo " $0 section ..."
	echo " $0 camlparagraph ..."
	echo " $0 item formula ..."
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

symbols_set=${entity}set_symbols.set
formulas_set=${entity}set_formulas.set

echo "generating entity ${entity} from ${symbols_set} and ${formulas_set}"

cp ${symbols_set} generatorset_symbols.set
cp ${formulas_set} generatorset_formulas.set

echo "generator ${category} implementation" |Generator_for_domainset_category_usagefile.bin
