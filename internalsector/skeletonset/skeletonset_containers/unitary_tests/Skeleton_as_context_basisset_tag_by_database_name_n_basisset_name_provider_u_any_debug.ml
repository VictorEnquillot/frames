open Make_test_v;;

testing "Skeleton_as_context_basisset_tag_by_database_name_n_basisset_name_provider_v with
    Skeleton_as_context_basisset_tag_by_database_name_n_basisset_name_provider_u_any_debug.ml";;

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
   #use "Skeleton_as_context_basisset_tag_by_database_name_n_basisset_name_provider_u_any_debug.ml";; 

*)

open Skeleton_as_context_basisset_tag_by_database_name_n_basisset_name_provider_v;;

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "datafile-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;


let nam_dom = "skeleton";;

let idx_dom = Global_domainset_index_by_domain_name_provider_v.provide nam_dom;;

test_number 1 (
(idx_dom : int ) = 
19
);;

let idx_dba = Context_database_index_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(idx_dba : int ) = 
5
);;

let nof_dfi = 
  Context_datafile_nameoffile_by_database_name_n_datafile_name_provider_v.provide
    (nam_dba, nam_bas) 
;; 

test_number 3 ( 
(nof_dfi : String.t ) = 
"lanl2dz.nwc"
);;

let idx_bas = Context_index_by_context_nameoffile_provider_v.provide nof_dfi;;
  
test_number 4 (
(idx_bas : int ) = 
5
);;
    
let soi_bas = [idx_bas; idx_dba; idx_dom];;

test_number 5 (
( soi_bas : int list ) = 
[5; 5; 19]
);;
     
let sym_prt_bas = Skeleton_symbol_v.skeleton_context_datafile_constructor nam_bas;;

test_number 6 (     
(sym_prt_bas : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_datafile_symbol
     (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor
       "lanl2dz"))
);;

let tag_prt_bas = Tag_v.make sym_prt_bas soi_bas;;

test_number 7 (
(tag_prt_bas : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_datafile_symbol
      (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor
        "lanl2dz")),
   [5; 5; 19])
);;

let boo = tag_prt_bas = provide (nam_dba, nam_bas);;

test_number 8 (
boo
);;
