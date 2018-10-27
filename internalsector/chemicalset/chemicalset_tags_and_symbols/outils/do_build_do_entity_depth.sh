rm -f temp_entity_level_not_1
rm -f temp_entity_no_constructor_set

entities=`ls -C1 ../*_symbol_t.ml | sed -e 's/_symbol_t.ml//' -e 's/..\///'`

for f in ${entities} 
do
    if [ -f do_${f}_constructor_set ]
    then
	echo "${f} \\" >> temp_entity_depth_positive
    else
	echo "${f} \\" >> temp_entity_depth_0
    fi
done

echo "# DO NOT EDIT. created by do_build_do_entity_depth.sh" > do_for_all_entity_depth_${d}
echo "echo \"" >> do_for_all_entity_depth_${d}
sort -u temp_entity_depth_${d} >> do_for_all_entity_depth_${d}
echo "\"" >> do_for_all_entity_depth_${d}
echo "do_for_all_entity_depth_${d} done"

for d in 1 2 3 4 5 6
do
    if [ -f temp_entity_depth_${d} ]
    then
	cat temp_entity_depth_${d} >> temp_nos
    fi
done
sort -u temp_nos > do_for_all_entity_depth_123456
echo "do_for_all_entity_depth_123456 done"
echo "temp_entity_no_constructor_set"
exit

    
