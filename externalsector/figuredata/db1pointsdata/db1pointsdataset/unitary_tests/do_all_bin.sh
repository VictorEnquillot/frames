rm -f error.log
for i in *figureset*.ml
do
    executable_bin.sh $i 2>> error.log
done