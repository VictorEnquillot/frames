open Make_test_v;;

testing "Filename_v with
   filename_u_alain.ml";;

(* toplevel 
  
 #use "filename_u_alain.ml";; 

*)


let fil_nam = "filename_u_alain.ml";;

test_number 1 (
Filename_v.quoted_version_of_file_name fil_nam
=
"'filename_u_alain.ml'"
);;


test_number 2 (
Filename_v.file_name_without_extension fil_nam
=
"filename_u_alain"
);;

test_number 3 (
Filename_v.suffix_of_file_name fil_nam "ml"
=
true
);;

test_number 4 (
Filename_v.suffix_of_file_name fil_nam "mk"
=
false
);;

test_number 5 (
Filename_v.remove_suffix_of_file_name fil_nam "  "
=
"filename_u_alain."
);;

test_number 6 (
Filename_v.remove_suffix_of_file_name fil_nam "        "
=
"filename_u_"
);;
