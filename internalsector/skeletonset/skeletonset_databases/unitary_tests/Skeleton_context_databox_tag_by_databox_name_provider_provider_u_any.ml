open Make_test_v;;

testing "Skeleton_context_databox_tag_by_databox_name_provider_v with
    Skeleton_context_databox_tag_by_databox_name_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_context_databox_tag_by_databox_name_provider_u_any.ml";; 

*)

(* Debug *)

open Skeleton_context_databox_tag_by_databox_name_provider_v;;

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


let nof_l = provide tag_dcd;;

test_number 3 (
( nof_l : string list ) =
["nwchem_cc_pvtz.dgn";
 "nwchem_6_31gss.dgn";
 "nwchem_comment.dgn";
 "nwchem_test_ecp.dgn";
 "nwchem_test.dgn";
 "nwchem_lanl2dz.dgn";
 "nwchem_3_21g.dgn";
 "nwchem_ecp.dgn";
 "nwchem_6_31gssp.dgn";
 "nwchem_basis.dgn"]
);;


