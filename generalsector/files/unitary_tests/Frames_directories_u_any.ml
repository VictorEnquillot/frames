open Make_test_v;;

testing "Frames_directories_v";;

(* toplevel 
   #use "Frames_directories_u_any.ml";; 

*)


let dir_pat_f = Frames_directories_v.frames_directorypath_of_environment_variable "FRA";;

test_number 1 (
dir_pat_f 
(* : Directorypath_t.directorypath *)
=
  Directorypath_t.Absolute
   [Noslash_string_p.noslash_string "keep"; 
    Noslash_string_p.noslash_string "sources"; 
    Noslash_string_p.noslash_string "ocaml_top"; 
    Noslash_string_p.noslash_string "setup"; 
    Noslash_string_p.noslash_string "frames"]
);;
 
let dir_nam_f = Frames_directories_v.frames_directory_name_of_environment_variable "FRA";;

test_number 2 (
dir_nam_f 
(* : string *)
= 
"/keep/sources/ocaml_top/setup/frames"
);;

test_number 3 (
Unix.getenv "FRA"
=
dir_nam_f
);;

