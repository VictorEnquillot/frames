# include

if [ ${entitysum} = moment ]
then
echo "let ${entitysum}_of_int = function"
i=0
for f in `do_${entitysum}_constructor_set`
do
    F=`capitalize_first ${f}`
    Fma=`module_abbreviation ${f}`
    
    echo "  | $i -> ${Emodat}.${F}"

    i=`expr $i + 1`
done
echo "  | i -> failwith \"input integer > $i. Not yet implemented in ${Emodav}.int_of_${entitysum}\""

echo ";;"
echo ""

echo "let int_of_${entitysum} = function"
i=0
for f in `do_${entitysum}_constructor_set`
do
    F=`capitalize_first ${f}`
    Fma=`module_abbreviation ${f}`
    
    echo "  | ${Emodat}.${F} -> $i"

    i=`expr $i + 1`
done
echo ";;"
echo ""

fi

