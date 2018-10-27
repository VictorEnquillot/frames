open Make_test_v;;

testing "Property_context_tag_quadruplet_by_basicname_inputbox_n_basicname_inputbase_provider_v with
        Property_context_tag_quadruplet_by_basicname_inputbox_n_basicname_inputbase_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_context_tag_quadruplet_by_basicname_inputbox_n_basicname_inputbase_provider_u_any.ml";; 

*)

open Property_context_tag_quadruplet_by_basicname_inputbox_n_basicname_inputbase_provider_v;;

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

  let tag_pcs = Property_context_sector_tag_by_unit_provider_v.provide ();;

  let tag_pcd = Property_context_domain_tag_by_unit_provider_v.provide ();;

  let tag_iba = 
    Property_context_inputbase_tag_by_basicname_inputbase_provider_v.provide 
      nam_iba  
 ;;

  let tag_ibo = 
    Property_context_inputbox_tag_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide 
      (nam_ibo, nam_iba)
 ;;
  
let tag_qua = Quadruplet_v.make tag_ibo tag_iba tag_pcd tag_pcs;;

test_number 1 (
(tag_qua :
  (Property_context_inputbox_symbol_t.property_context_inputbox_symbol
   Tag_t.tag,
   Property_context_inputbase_symbol_t.property_context_inputbase_symbol
   Tag_t.tag,
   Property_context_domain_symbol_t.property_context_domain_symbol Tag_t.tag,
   Property_context_sector_symbol_t.property_context_sector_symbol Tag_t.tag)
   Quadruplet_t.quadruplet ) =
((Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
    "Print_homothety_point_a",
  [38; 1; 18; 6]),
 (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
     "local",
  [1; 18; 6]),
 (Property_context_domain_symbol_t.Property_context_domain_constructor
    "property",
  [18; 6]),
 (Property_context_sector_symbol_t.Property_context_sector_constructor
     "product",
  [6]))
);;

let nam_qua = Quadruplet_v.map
    Property_context_inputbox_tag_v.string_off
      Property_context_inputbase_tag_v.string_off
    Property_context_domain_tag_v.string_off
    Property_context_sector_tag_v.string_off
    tag_qua
 ;;

test_number 2 (
  (nam_qua : (string, string, string, string) Quadruplet_t.quadruplet ) =
  ("Print_homothety_point_a", "local", "property", "product")
 );;

test_number 3 (
() = Check_consistency_by_property_context_name_quatuor_provider_v.provide nam_qua
);;

test_number 4 (
tag_qua = provide (nam_ibo, nam_iba)
);;
