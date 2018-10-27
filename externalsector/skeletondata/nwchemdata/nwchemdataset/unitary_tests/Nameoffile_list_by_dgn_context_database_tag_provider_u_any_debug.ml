open Make_test_v;;

testing "Nameoffile_list_by_dgn_context_database_tag_provider_v with
    Nameoffile_list_by_dgn_context_database_tag_provider_u_any_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Nameoffile_list_by_dgn_context_database_tag_provider_u_any_debug.ml";; 

*)

(* Debug *)

open Nameoffile_list_by_dgn_context_database_tag_provider_v;;

let tag_dcd = Dgn_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Dgn_context_database_symbol_t.nwchem_context_database_symbol Tag_t.tag ) =
  (Dgn_context_database_symbol_t.Dgn_context_database_constructor "gaussian_nwchem",
   [5; 3])
);;

let nam_dir_dcd = 
  Database_fullnameofdirectory_by_dgn_context_database_tag_provider_v.provide 
    tag_dcd;;

let nam_dir_dab = nam_dir_dcd ^ "/files";;

test_number 2 (
(nam_dir_dab : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files"
);;

let fno_dba_l = provide tag_dcd;;

test_number 3 (
(fno_dba_l : string list ) =
  ["/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_cc_pvtz.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_6_31gss.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_comment.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_test_ecp.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_test.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_lanl2dz.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_3_21g.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_ecp.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_6_31gssp.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_basis.nwc"]
);;

let nam_dir = List.find (fun s -> List_v.is_substring_of_string_of_string nam_dgn s) fno_dba_l;;

(* Database file *)

let nam_dgn = Dgn_context_database_tag_v.string_off tag_dcd;;
let nam_bas = "lanl2dz";;

let nof_dgn = nam_dgn ^ "_" ^ nam_bas ^ ".nwc";;
let fno_nwc = nam_dir ^ "/files/" ^ nof_dgn;;

test_number 4 (
(fno_nwc : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_lanl2dz.nwc"
);;

Parameters_general_register_v.store "basisset-file" fno_nwc;;
