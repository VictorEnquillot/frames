rm -f error.log
for i in *figureset*.ml
do
    executable_byt.sh $i 2>> error.log
done