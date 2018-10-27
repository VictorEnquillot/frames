check_of_string_of_file () {
x=`grep -w ${1} $2`
if [ "$x" = "" ] 
then
    echo "Error: in script $0."
    echo "       input entity >${1}<"
    echo "       is not in file >$2<"
    echo "Cure : add it"
    echo ""
    echo "Entities in file >$2< are : ";
    echo ""
    for f in `$2`
    do
	echo $f
    done
    echo ""
    exit
fi
}

check_of_string_of_file $1 $2