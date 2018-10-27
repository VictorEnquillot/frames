echo "echo \""
grep " | " $1 | cut -d"(" -f1 | sed -e 's/  | //' -e 's/ //' -e 's/$/ \\/' 
echo "\""