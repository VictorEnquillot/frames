open Make_test_v;;

testing "Property_as_context_inputbase_tag_by_basicname_inputbase_provider_v with
        Property_as_context_inputbase_tag_by_basicname_inputbase_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_as_context_inputbase_tag_by_basicname_inputbase_provider_u_any.ml";; 

*)

open Property_as_context_inputbase_tag_by_basicname_inputbase_provider_v;;

let nam_iba = "local";;

let nam_pcs = Property_context_sector_name_by_unit_provider_v.provide ();;

let nam_pcd = Property_context_domain_name_by_unit_provider_v.provide ();;
  
let ord_pcs = Sector_ordinal_by_sector_name_provider_v.provide nam_pcs;;
   
let ord_pcd = Domain_ordinal_by_basicname_domain_provider_v.provide nam_pcd;;
  
let ord_iba = Inputbase_ordinal_by_basicname_inputbase_provider_v.provide nam_iba;;
  
let soi_iba = [ord_iba; ord_pcd; ord_pcs];;

test_number 1 (
(soi_iba : int list ) = 
[1; 18; 6]
);;

let sym_pro_iba = 
    Property_symbol_v.property_context_inputbase_constructor 
      nam_iba;;

test_number 2 (
(sym_pro_iba : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_context_symbol
   (Property_context_symbol_t.Property_context_inputbase_symbol
     (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
       "local"))
);;
 
let tag_pro_iba = Tag_v.make sym_pro_iba soi_iba;;

test_number 3 (
(tag_pro_iba : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_context_symbol
    (Property_context_symbol_t.Property_context_inputbase_symbol
      (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
        "local")),
   [1; 18; 6])
);;

test_number 4 (
tag_pro_iba = provide nam_iba
);;
