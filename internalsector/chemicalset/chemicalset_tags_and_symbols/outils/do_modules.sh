# ls -C1 *symbol_t.ml | sed 's/_symbol_t.ml/ \\/'
capitalize_first ()          
 {                            
   string0="$@"               
   firstchar=${string0:0:1}   
   string1=${string0:1}       
   FirstChar=`echo "$firstchar" | tr a-z A-Z`
   echo "$FirstChar$string1"  
 }
abbreviation ()
{
case ${1} in
     particle_elementary ) module="Ep";;
     energy ) module="En";;
     energy_kinetic ) module="Ek";;
     energy_potential ) module="Ev";;
     field ) module="Fl";;
     logical_model ) module="Lm";;
     mathematical_model ) module="Mm";;
     moment ) module="Mn";;
     physical_property ) module="Pp";;
     quantum_chemistry_program ) module="Qc";;
     physical_property ) module="Pp";;
     physical_region ) module="Pr";;
     regional_model ) module="Rm";;
     simulation_model ) module="Sm";;
     simulationset ) module="Ss";;
     *) echo "";echo -n "unknown module >$1<";echo "";exit;;
esac
echo "$module"
}

for e in \
    particle_elementary \
    energy_kinetic \
    energy_potential \
    energy \
    field \
    logical_model \
    mathematical_model \
    moment \
    physical_property \
    physical_region \
    quantum_chemistry_program \
    regional_model \
    simulation_model \
    simulationset 
do
	E=`capitalize_first ${e}`
	M=`abbreviation ${e}`
	echo "module ${M}s_t = ${E}_symbol_t"
done

exit