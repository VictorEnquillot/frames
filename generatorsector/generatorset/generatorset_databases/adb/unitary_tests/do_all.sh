rm -f error.log
for i in *.ml
do
    executable_bin.sh $i 2>> error.log
done