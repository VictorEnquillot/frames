check_is_empty_of_file () {
x=`file $1 | cut -d" " -f2`
if [ $x = empty ] || [ $x = cannot ]
then 
    echo "Error: file >$1< is empty"
    echo "Cure: emacs ${1}"
    exit
fi
}