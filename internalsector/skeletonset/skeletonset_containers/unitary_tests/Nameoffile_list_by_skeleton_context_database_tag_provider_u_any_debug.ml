open Make_test_v;;

testing "Nameoffile_list_by_skeleton_context_database_tag_provider_v with
    Nameoffile_list_by_skeleton_context_database_tag_provider_u_any_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_deepfence_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_basisset_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_lexer_symbol_reverse_list_by_database_fullnameoffile_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_basisset_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete  Skeleton_tag_all_list_by_skeleton_context_datafile_tag_register_v.register;;
Register_v.delete  Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete  Son_nwchem_tag_list_by_father_nwchem_tag_register_v.register;;


(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Nameoffile_list_by_skeleton_context_database_tag_provider_u_any_debug.ml";; 

*)

(* Debug *)

open Nameoffile_list_by_skeleton_context_database_tag_provider_v;;

let tag_dcd = Skeleton_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Skeleton_context_database_symbol_t.skeleton_context_database_symbol Tag_t.tag ) =
  (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor "nwchem",
   [5; 3])
);;

let nam_dir_dcd = 
  Database_fullnameofdirectory_by_skeleton_context_database_tag_provider_v.provide 
    tag_dcd;;

let nam_dir_dab = nam_dir_dcd ^ "/files";;

test_number 2 (
(nam_dir_dab : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files"
);;

let fno_dba_l = provide tag_dcd;;

test_number 3 (
(fno_dba_l : string list ) =
  ["/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_cc_pvtz.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_6_31gss.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_comment.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_test_ecp.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_test.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_lanl2dz.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_3_21g.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_ecp.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_6_31gssp.dgn";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_basis.dgn"]
);;

let nam_dir = List.find (fun s -> List_v.is_substring_of_string_of_string nam_dgn s) fno_dba_l;;

(* Database file *)

let nam_dgn = Skeleton_context_database_tag_v.string_off tag_dcd;;
let nam_bas = "lanl2dz";;

let nof_dgn = nam_dgn ^ "_" ^ nam_bas ^ ".dgn";;
let fno_dgn = nam_dir ^ "/files/" ^ nof_dgn;;

test_number 4 (
(fno_dgn : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_lanl2dz.dgn"
);;

Parameters_general_register_v.store "basisset-file" fno_dgn;;
