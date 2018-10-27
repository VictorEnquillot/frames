open Make_test_v;; 

testing "Unix_v with
   Unix_u_alain.ml";;

(* toplevel 
   #use "Unix_u_alain.ml";; 

 *)

let new_directory = "../";;
let directory_name = "test_unix";;
let permission_directory = 0o764 ;;

(* une erreur qui n’est pas spécialement prévue et interceptée par un try se propage jusqu’au sommet du programme, et le termine prématurément *)

let cre_dir = try Unix_v.create_directory directory_name permission_directory
with (Unix.Unix_error (Unix.EEXIST, "mkdir", "test_unix")) ->
  Unix_v.remove_directory_of_string directory_name;
  Unix_v.create_directory directory_name permission_directory
;;

test_number 1 (
cre_dir
=
()
);;

test_number 2 (
Unix_v.remove_directory_of_string directory_name
=
()
);;

let env_l = Array.to_list (Unix.environment ());; 

