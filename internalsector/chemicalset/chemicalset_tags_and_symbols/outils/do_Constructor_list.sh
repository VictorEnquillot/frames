echo "echo \""
grep " | " $1 | grep -v "(\*" | sed -e 's/  | //' -e 's/$/ \\/' 
echo "\""