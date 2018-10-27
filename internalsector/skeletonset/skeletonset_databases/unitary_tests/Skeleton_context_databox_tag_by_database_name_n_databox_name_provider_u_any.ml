open Make_test_v;;

testing "Skeleton_context_databox_tag_by_database_name_n_databox_name_provider_v with
    Skeleton_context_databox_tag_by_database_name_n_databox_name_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_context_databox_tag_by_database_name_n_databox_name_provider_u_any.ml";; 

*)

open Skeleton_context_databox_tag_by_database_name_n_databox_name_provider_v;;

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_bas;;
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
  Context_databox_nameoffile_by_database_name_n_databox_name_provider_v.provide
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
     
let sym_pcb = Skeleton_context_databox_symbol_v.skeleton_context_databox_constructor nam_bas ;;

test_number 6 (     
(sym_pcb :
  Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol ) =
  Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
   "lanl2dz"
);;

let tag_pcb = Tag_v.make sym_pcb soi_bas;;

test_number 7 (
(tag_pcb :
  Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol
  Tag_t.tag ) =
  (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
    "lanl2dz",
   [5; 5; 19])
);;

let boo = tag_pcb = provide (nam_dba, nam_bas);;

test_number 8 (
boo
);;
