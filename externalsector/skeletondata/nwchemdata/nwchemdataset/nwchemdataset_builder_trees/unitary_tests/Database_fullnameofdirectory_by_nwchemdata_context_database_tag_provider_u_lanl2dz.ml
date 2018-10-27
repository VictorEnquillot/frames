open Make_test_v;;

testing "Database_fullnameofdirectory_by_nwchemdata_context_database_tag_provider_v with
    Database_fullnameofdirectory_by_nwchemdata_context_database_tag_provider_u_lanl2dz.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_nwchemdata_context_databox_tag_register_v.register;;
Register_v.delete Nwchemdata_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Nwchemdata_set_fence_by_nwchemdata_tag_register_v.register;;
Register_v.delete Nwchemdata_son_tag_list_by_nwchemdata_father_tag_register_v.register;;
Register_v.delete Nwchemdata_symbol_by_sole_index_register_v.register;;
Register_v.delete Nwchemdata_symbol_subtree_by_databox_name_register_v.register;;
Register_v.delete Nwchemdata_tag_all_list_by_databox_name_register_v.register;;
Register_v.delete Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_register_v.register;;
Register_v.delete Nwchemdata_tag_subtree_by_nwchemdata_tag_register_v.register;;
Register_v.delete Nwchemdata_tag_tree_by_databox_name_register_v.register;;




(* Tracing *)


(* toplevel 
   #use "Database_fullnameofdirectory_by_nwchemdata_context_database_tag_provider_u_lanl2dz.ml";; 

*)

(* Database file *)

let nam_dgn = "nwchem";;
let nam_bas = "lanl2dz";;
 
(* Debug *)

open Database_fullnameofdirectory_by_nwchemdata_context_database_tag_provider_v;;

let tag_dcd = Nwchemdata_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Nwchemdata_context_database_symbol_t.nwchemdata_context_database_symbol Tag_t.tag ) =
  (Nwchemdata_context_database_symbol_t.Nwchemdata_context_database_constructor "nwchem",
   [5; 3])
);;

let sof_dcd = Nwchemdata_context_database_tag_v.string_off tag_dcd;;

test_number 2 (
(sof_dcd : string ) = 
"nwchem"
);;

let fno_dba_l = Database_fullnameofdirectory_list_by_unit_provider_v.provide ();;

test_number 3 (
(fno_dba_l : string list ) =
  ["/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_db2";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_g9x";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_molpro";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_pdb"]
);;

let nam_dir = List.find (fun s -> List_v.is_substring_of_string_of_string nam_dgn s) fno_dba_l;;

test_number 4 (
(nam_dir : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem"
);;

let nof_dgn = nam_dgn ^ "_" ^ nam_bas ^ ".nwc";;
let fno_nwc = nam_dir ^ "/files/" ^ nof_dgn;;

test_number 5 (
(fno_nwc : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchemdata_lanl2dz.nwc"
);;

let fnd = provide tag_dcd;;

test_number 6 (
( fnd : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem"
);;
