kind=$1

SYMBOLS_DIR=`pwd | sed -e "s#/generator##"`
symbols_dir=`basename $SYMBOLS_DIR`
entity=`echo $symbols_dir |sed -e 's/set_/_/'`
category="symbol"

case ${kind} in
    mk ) file="files_mli_mk";;
    tv ) file="tv";;
    * ) file="files_mli_mk";;
esac

symbols_dat=${entity}_symbols.dat
formulas_dat=${entity}_formulas.dat

echo "generating entity ${entity} from ${symbols_dat} and ${formulas_dat}"

cp ${symbols_dat} ${FRA}/figureset/generator/figure_symbols.dat
cp ${formulas_dat} ${FRA}/figureset/generator/figure_formulas.dat

echo "figure ${category} implementation ${entity}" | /keep/executables/Generator_for_domainset_category_usagefile_v2.3.byt

