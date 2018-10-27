
for i in do*_v.sh 
do 
    echo -n "$i " 
    grep -c $i do_container_all_v.sh
done 
 
grep " 0" | cut -d" " -f1 | sed -e 's/^/kef /'
