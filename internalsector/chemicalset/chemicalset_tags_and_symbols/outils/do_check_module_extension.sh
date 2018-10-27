check_module_extension () {
x=`echo "$0" | grep -h "$1.sh"`
if [ "$x" = "" ]
then 
    echo "Error: module_extension >_$module_extension< is inconsistent with script name $0"
    echo "Cure: modify module_extension in script >$0<"
    exit
fi
}

