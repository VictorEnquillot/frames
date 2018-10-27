bnf_file="$INP/Db1figure_parser.bnf"

egrep -v '^#|^( )*$' ${bnf_file} \
| sed -e 's/"/ " /g' \
-e 's/{/ { /g' -e 's/}/ } /g' \
-e 's/\[/ [ /g' -e 's/\]/ ] /g' \
-e 's/(/ ( /g' -e 's/)/ ) /g' \
-e 's/ /\n/g' | egrep -v '^#|::=|::|\||<' | sort -u
