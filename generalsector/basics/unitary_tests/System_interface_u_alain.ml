open Make_test_v;;

testing "System_interface_v with
   system_interface_u_alain.ml";;

(* toplevel 
  
 #use "system_interface_u_alain.ml";; 

*)


let fil_nam = "system_interface_u_alain.ml";;

let fil = "/home/alain/sys/test1.ml";;

let dir = "/home/alain/test";; (* directory *)

let com_exe = "emacs *.ml *.mk &";;

test_number 1 (
System_interface_v.existing_file fil_nam
=
true
);;


test_number 2 (
System_interface_v.existing_file "system_interface_u_francois.ml"
=
false
);;


test_number 3 (
System_interface_v.operating_system
=
"Unix"
);;


(*test_number 4 (
System_interface_v.remove_file fil
=
()
);;*)


(*test_number 5 (
System_interface_v.value_of_variable fil_nam
=
"Exception: Not_found"
);;*)


(*test_number 5 (
System_interface_v.remove_file dir
=
failwith (dir^" : est un directory")
);;*)

test_number 4 (
System_interface_v.command_execut com_exe
=
0
);;

test_number 5 (
System_interface_v.list_files dir
=
[|"rec.ml"; "palindrome.ml~"; "palindrome.ml"; "list2.ml~"; "Makefile";
  "new_list.ml"; "list2.ml"; "list.ml"; "fichier_html"; "depend";
  "string_v.ml"|]
);;

test_number 6 (
System_interface_v.rename_file fil "/home/alain/sys/test10.ml"
=
()
);;
