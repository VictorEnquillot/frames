echo "echo \""
grep " | " $1 | grep -v "(\*" | cut -d"." -f2 | sed 's/_symbol/ \\/' 
echo "\""