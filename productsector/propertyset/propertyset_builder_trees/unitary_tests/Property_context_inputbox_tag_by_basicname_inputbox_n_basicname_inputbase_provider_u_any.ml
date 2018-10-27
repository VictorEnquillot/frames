open Make_test_v;;

testing "Property_context_inputbox_tag_by_basicname_inputbox_n_basicname_inputbase_provider_v with
        Property_context_inputbox_tag_by_basicname_inputbox_n_basicname_inputbase_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_context_inputbox_tag_by_basicname_inputbox_n_basicname_inputbase_provider_u_any.ml";; 

*)

open Property_context_inputbox_tag_by_basicname_inputbox_n_basicname_inputbase_provider_v;;

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

let nam_pcs = Property_context_sector_name_by_unit_provider_v.provide ();;

let nam_pcd = Property_context_domain_name_by_unit_provider_v.provide ();;
  
let ord_pcs = Sector_ordinal_by_sector_name_provider_v.provide nam_pcs;;
   
let ord_pcd = Domain_ordinal_by_basicname_domain_provider_v.provide nam_pcd;;
  
let ord_iba = Inputbase_ordinal_by_basicname_inputbase_provider_v.provide nam_iba;;
    
let ord_ibo = Inputbox_ordinal_by_basicname_inputbox_provider_v.provide nam_ibo;;
    
let soi_ibo = [ord_ibo; ord_iba; ord_pcd; ord_pcs];;

test_number 1 (
(soi_ibo : int list ) = 
[38; 1; 18; 6]
);;

let sym_ibo = 
    Property_context_inputbox_symbol_v.property_context_inputbox_constructor 
      nam_ibo;;

test_number 2 (
(sym_ibo :
  Property_context_inputbox_symbol_t.property_context_inputbox_symbol ) =
  Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
   "Print_homothety_point_a"
);;
 
let tag_ibo = Tag_v.make sym_ibo soi_ibo;;

test_number 3 (
(tag_ibo :
  Property_context_inputbox_symbol_t.property_context_inputbox_symbol
  Tag_t.tag ) =
  (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
    "Print_homothety_point_a",
   [38; 1; 18; 6])
);;

test_number 4 (
tag_ibo = provide (nam_ibo, nam_iba)
);;
