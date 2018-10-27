open Make_test_v;;

testing "Skeleton_context_name_trio_by_environment_variable_provider_v with
    Skeleton_context_name_trio_by_environment_variable_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Skeleton_fence_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_son_tag_list_by_skeleton_father_tag_register_v.register;;
Register_v.delete Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;

(* Tracing *)

(* toplevel 
   #use "Skeleton_context_name_trio_by_environment_variable_provider_u_any.ml";; 

*)

open Skeleton_context_name_trio_by_environment_variable_provider_v;;

let env_var = "NWCS";;
let fnd_cur = Sys.getenv (env_var);;

test_number 1 (
(fnd_cur : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/skeleton/skeletonset"
);;

let wor_l = String_v.split_of_character_of_string '/' fnd_cur;;

test_number 2 (
(wor_l : string list ) =
  ["home"; "colonna"; "sources"; "ocaml_top"; "setup"; "frames";
   "externalsector"; "skeletondata"; "skeleton"; "skeletonset"]
);;

let ind_fra = List_v.index_of_element_of_list "frames" wor_l;;

test_number 3 (
(ind_fra : int ) =
5
);;

let wor_sl = List_v.sublist_of_int_of_length_of_list (ind_fra+1) 3 wor_l;;

test_number 4 (
(wor_sl : string list ) = 
["externalsector"; "skeletondata"; "skeleton"]
);;

let wor_t = List_v.trio_of_list wor_sl;;

test_number 5 (
(wor_t : string * string * string ) =
  ("externalsector", "skeletondata", "skeleton")
);;

let nam_con_t =
  Triplet_v.map 
    (String_v.cut_last_n_characters_of_count_of_string 6) 
    (String_v.cut_last_n_characters_of_count_of_string 4) 
    (String_v.cut_last_n_characters_of_count_of_string 4)
    wor_t;;

test_number 6 (
(nam_con_t : (string, string, string) Triplet_t.triplet ) =
("nwchem", "skeleton", "external")
);;

test_number 7 (
nam_con_t = provide (env_var)
);;

