if [ "$1" = "" ]
then dir="./"
else dir="$1"
fi

do_entitysum_symbol_tvi_ml_all.sh $1
do_entitysum_marker_tvi_ml_all.sh $1
