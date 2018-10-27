open Make_test_v;;

testing "Skeleton_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v with
    Skeleton_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_u_cc_pvtz.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Skeleton_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_u_cc_pvtz.ml";; 

*)

open Skeleton_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v;;

let nam_dbo = "cc_pVTZ";;
let nam_dba = "nwchem";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;


let tag_ske_scs = Skeleton_as_context_sector_tag_by_unit_provider_v.provide ();;
  
let tag_ske_scd = Skeleton_as_context_domain_tag_by_unit_provider_v.provide ();;
  
let tag_ske_sba = 
  Skeleton_as_context_database_tag_by_basicname_database_provider_v.provide 
    bna_dba;;  

let tag_ske_sbo = 
    Skeleton_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide 
    (bna_dbo, bna_dba);;

let tag_ske_qua = Quadruplet_v.make tag_ske_sbo tag_ske_sba tag_ske_scd tag_ske_scs;;

test_number 1 (
( tag_ske_qua :
  (Skeleton_symbol_t.skeleton_symbol Tag_t.tag,
   Skeleton_symbol_t.skeleton_symbol Tag_t.tag,
   Skeleton_symbol_t.skeleton_symbol Tag_t.tag,
   Skeleton_symbol_t.skeleton_symbol Tag_t.tag)
  Quadruplet_t.quadruplet ) =
 ((Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "cc_pVTZ")),
    [16; 5; 19; 5]),
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 19; 5]),
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [19; 5]),
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_sector_symbol
       (Skeleton_context_sector_symbol_t.Skeleton_context_sector_constructor
         "internal")),
    [5]))
);;

let sof_qua = Quatuor_v.map 
      Skeleton_tag_v.string_off 
      tag_ske_qua;;

test_number 2 (
(sof_qua : string Quatuor_t.quatuor ) =
  ("cc_pVTZ", "nwchem", "skeleton", "internal")
);;

let bna_qua = Basicname_quatuor_by_context_name_quatuor_provider_v.provide sof_qua;;

test_number 3 (
(bna_qua : Basicname_t.basicname Quatuor_t.quatuor ) =
(Basicname_t.Databox "cc_pVTZ", 
 Basicname_t.Database "nwchem",
 Basicname_t.Domain "skeleton", 
 Basicname_t.Sector "internal")
);;

test_number 4 (
() = Check_consistency_by_basicname_quatuor_provider_v.provide bna_qua
);;

test_number 5 (
tag_ske_qua = provide (bna_dbo, bna_dba)
);;
