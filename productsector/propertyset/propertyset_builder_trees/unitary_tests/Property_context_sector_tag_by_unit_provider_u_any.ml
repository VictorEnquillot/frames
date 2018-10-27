open Make_test_v;;

testing "Property_context_sector_tag_by_unit_provider_v with
   Property_context_sector_tag_by_unit_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_context_sector_tag_by_unit_provider_u_any.ml";; 

*)

open Property_context_sector_tag_by_unit_provider_v;;

let nam_pcs = Property_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_pcs : string ) = 
"product"
);;

let soi_pcs = Context_sole_index_by_sector_name_provider_v.provide nam_pcs;;

test_number 2 (
(soi_pcs : int list ) = 
[6]
);;

let sym_ncs = 
    Property_context_sector_symbol_v.property_context_sector_constructor 
      nam_pcs;;

test_number 3 (
(sym_ncs : Property_context_sector_symbol_t.property_context_sector_symbol ) =
  Property_context_sector_symbol_t.Property_context_sector_constructor
   "product"
);;

let tag_pcs = Tag_v.make sym_ncs soi_pcs;;

test_number 4 (
( tag_pcs :
  Property_context_sector_symbol_t.property_context_sector_symbol Tag_t.tag ) =
  (Property_context_sector_symbol_t.Property_context_sector_constructor
    "product",
   [6])
);;

test_number 5 (
tag_pcs = provide ()
);;
