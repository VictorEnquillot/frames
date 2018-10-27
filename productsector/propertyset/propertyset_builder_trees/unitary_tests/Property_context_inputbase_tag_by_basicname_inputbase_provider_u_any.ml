open Make_test_v;;

testing "Property_context_inputbase_tag_by_basicname_inputbase_provider_v with
        Property_context_inputbase_tag_by_basicname_inputbase_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_context_inputbase_tag_by_basicname_inputbase_provider_u_any.ml";; 

*)

open Property_context_inputbase_tag_by_basicname_inputbase_provider_v;;

let nam_pba = "local";;

let nam_pcs = Property_context_sector_name_by_unit_provider_v.provide ();;

let nam_pcd = Property_context_domain_name_by_unit_provider_v.provide ();;
  
let ord_pcs = Sector_ordinal_by_sector_name_provider_v.provide nam_pcs;;
   
let ord_pcd = Domain_ordinal_by_basicname_domain_provider_v.provide nam_pcd;;
  
let ord_pba = Inputbase_ordinal_by_basicname_inputbase_provider_v.provide nam_pba;;
  
let soi_pba = [ord_pba; ord_pcd; ord_pcs];;

test_number 1 (
(soi_pba : int list ) = 
[1; 18; 6]
);;

let sym_pba = 
  Property_context_inputbase_symbol_v.property_context_inputbase_constructor 
    nam_pba 
;;

test_number 2 (
(sym_pba : Property_context_inputbase_symbol_t.property_context_inputbase_symbol ) =
  Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
   "local"
);;
 
let tag_pba = Tag_v.make sym_pba soi_pba;;

test_number 3 (
(tag_pba : Property_context_inputbase_symbol_t.property_context_inputbase_symbol
  Tag_t.tag ) =
  (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
    "local",
   [1; 18; 6])
);;

test_number 4 (
tag_pba = provide nam_pba
);;
