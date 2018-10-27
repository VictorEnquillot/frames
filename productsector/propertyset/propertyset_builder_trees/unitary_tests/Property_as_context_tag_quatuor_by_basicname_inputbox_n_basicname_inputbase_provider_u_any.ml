open Make_test_v;;

testing "Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v with
        Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_u_any.ml";; 

*)

open Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v;;

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

let tag_pro_pcs = Property_as_context_sector_tag_by_unit_provider_v.provide ();;

let tag_pro_pcd = Property_as_context_domain_tag_by_unit_provider_v.provide ();;

let tag_pro_pba = 
  Property_as_context_inputbase_tag_by_basicname_inputbase_provider_v.provide 
      nam_iba  
;;

let tag_pro_pbo = 
  Property_as_context_inputbox_tag_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide 
    (nam_ibo, nam_iba)
;;
  
let tag_pro_qua = Quatuor_v.make tag_pro_pbo tag_pro_pba tag_pro_pcd tag_pro_pcs;;

test_number 1 (
(tag_pro_qua :
  Property_symbol_t.property_symbol Tag_t.tag Quatuor_t.quatuor ) =
  ((Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "Print_homothety_point_a")),
    [38; 1; 18; 6]),
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbase_symbol
       (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
         "local")),
    [1; 18; 6]),
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_domain_symbol
       (Property_context_domain_symbol_t.Property_context_domain_constructor
         "property")),
    [18; 6]),
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_sector_symbol
       (Property_context_sector_symbol_t.Property_context_sector_constructor
         "product")),
    [6]))
);;

let nam_qua = Quatuor_v.map
    Property_tag_v.string_off
    tag_pro_qua
;;

test_number 2 (
  (nam_qua : (string, string, string, string) Quadruplet_t.quadruplet ) =
  ("Print_homothety_point_a", "local", "property", "product")
 );;

test_number 3 (
() = Check_consistency_by_property_context_name_quatuor_provider_v.provide nam_qua
);;

test_number 4 (
tag_pro_qua = provide (nam_ibo, nam_iba)
);;
