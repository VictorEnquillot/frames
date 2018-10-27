open Make_test_v;;

testing "Database_fullnameofdirectory_by_dgn_context_database_tag_provider_v with
    Database_fullnameofdirectory_by_dgn_context_database_tag_provider_u_lanl2dz_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Database_fullnameofdirectory_by_dgn_context_database_tag_provider_u_lanl2dz_debug.ml";; 

*)

(* Database file *)

let nam_dgn = "gaussian_nwchem";;
let nam_bas = "lanl2dz";;
 
(* Debug *)

open Database_fullnameofdirectory_by_dgn_context_database_tag_provider_v;;

let tag_dcd = Dgn_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Dgn_context_database_symbol_t.nwchem_context_database_symbol Tag_t.tag ) =
  (Dgn_context_database_symbol_t.Dgn_context_database_constructor "gaussian_nwchem",
   [5; 3])
);;

let sof_dcd = Dgn_context_database_tag_v.string_off tag_dcd;;

test_number 2 (
(sof_dcd : string ) = 
"gaussian_nwchem"
);;

let fno_dba_l = Database_fullnameofdirectory_list_by_unit_provider_v.provide ();;

test_number 3 (
(fno_dba_l : string list ) =
  ["/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_db1";
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
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_lanl2dz.nwc"
);;

let fnd = provide tag_dcd;;

test_number 6 (
( fnd : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem"
);;
