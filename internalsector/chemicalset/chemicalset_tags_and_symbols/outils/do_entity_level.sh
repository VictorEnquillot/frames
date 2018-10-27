# entity level of entity e 
# is the entity_level of the constructor of e
# having the highest entity level + 1

entity_level () {
e=$1

fc=`constructor_of_highest_entity_level $e`
lfc=`entity_level $fc`
lev=`expr $lfc + 1`

echo "$lev"
}