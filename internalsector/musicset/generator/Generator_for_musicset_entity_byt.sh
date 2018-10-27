entity=$1
category=$2
kind=$3

case ${entity} in
    music ) ;;
    mp3_file ) ;;
    id3_tag ) ;;
    mp3_header ) ;;
    mp3_header_field ) ;;
    elementary_stream ) ;;
    *) echo "";
	echo "Error: in $0 : unknown entity >${entity}<";
	echo "Usage :";
	echo " $0 music symbol"
	echo " $0 music formula"
	echo " $0 mp3_file ..."
	echo " $0 id3_tag ..."
	echo " $0 mp3_header ..."
	echo " $0 mp3_header_field ..."
	echo " $0 elementary_stream ..."
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

# cp ${symbols_dat} music_symbols.dat
# cp ${formulas_dat} music_formulas.dat

echo "music ${category} implementation ${entity}" | /keep/executables/Generator_for_domainset_category_usagefile_v2.3.byt

