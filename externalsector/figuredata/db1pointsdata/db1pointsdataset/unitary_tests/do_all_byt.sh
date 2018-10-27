for i in *.cmo
do
    module=`echo $i | sed 's/\.cmo//'`
    executable_byt.sh ${module}.ml 1> ${module}.out 2> ${module}.err
    echo ${module}.out
    echo ${module}.err
done