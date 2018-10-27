open Make_test_v;;

testing "Property_as_context_domain_tag_by_unit_provider_v with
   Property_as_context_domain_tag_by_unit_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_as_context_domain_tag_by_unit_provider_u_any.ml";; 

*)

open Property_as_context_domain_tag_by_unit_provider_v;;

let nam_pcs = Property_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_pcs : string ) = 
"product"
);;
  
let nam_pcd = Property_context_domain_name_by_unit_provider_v.provide ();;

test_number 2 (
(nam_pcd : string ) = 
"property"
);;

let soi_pcd = 
    Context_sole_index_by_domain_name_n_sector_name_provider_v.provide 
      (nam_pcd, nam_pcs);;

test_number 3 (
(soi_pcd : int list ) = 
[18; 6]
);;

let sym_pro_pcd = 
  Property_symbol_v.property_context_domain_constructor 
    nam_pcd;;

test_number 4 (
(sym_pro_pcd : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_context_symbol
   (Property_context_symbol_t.Property_context_domain_symbol
     (Property_context_domain_symbol_t.Property_context_domain_constructor
       "property"))
);;

let tag_pro_pcd = Tag_v.make sym_pro_pcd soi_pcd;;

test_number 5 (
(tag_pro_pcd : Property_symbol_t.property_symbol Tag_t.tag ) =
(Property_symbol_t.Property_context_symbol
   (Property_context_symbol_t.Property_context_domain_symbol
      (Property_context_domain_symbol_t.Property_context_domain_constructor
	 "property")),
 [18; 6])
);;

test_number 6 (
tag_pro_pcd = provide ()
);;
