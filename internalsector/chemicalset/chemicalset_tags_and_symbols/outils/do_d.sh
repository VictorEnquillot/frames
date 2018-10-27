left_off_doublet_constructor () {
echo $1 | cut -d"_" -f2 
}
set -x
s="doublet_string_index"
x=`left_off_doublet_constructor $s`
echo "x = $x"