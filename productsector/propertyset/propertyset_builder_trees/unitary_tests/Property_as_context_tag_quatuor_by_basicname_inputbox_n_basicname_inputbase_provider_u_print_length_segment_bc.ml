open Make_test_v;;

testing "Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v
        Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_db1  *)
(*        context *)
(*          database "db1" *)
(*          domain "figure" *)
(*          end -- context *)
(*        end -- define *)

(* define Len *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor"] *)
(*          operation "length" *)
(*          ondomain "figure"   *)
(*          end -- operator *)
(*        end -- define *)

(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_db1 *)
(*          end -- external *)
(*        end -- define *)

(* define Len_bc *)
(*        target  *)
(*          type [ "property" "set" "body" "operand" "target" "measured" "constructor" ] *)
(*          target_operator Len *)
(*          target_operand Seg_bc *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          external_context Con_nwc *)
(*          end -- external *)
(*        end -- define *)

(* print Len_bc *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_u_print_length_segment_bc.ml";;

*)

open Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v;;

let nam_ibo = "Print_length_segment_bc";;
let nam_iba = "local";;
let bna_iba = Basicname_v.basicname_inputbase_of_string nam_iba;;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let tag_pro_pcs = Property_as_context_sector_tag_by_unit_provider_v.provide () ;;
let tag_pro_pcd = Property_as_context_domain_tag_by_unit_provider_v.provide () ;;

test_number 1 (
(tag_pro_pcs : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_context_symbol
    (Property_context_symbol_t.Property_context_sector_symbol
      (Property_context_sector_symbol_t.Property_context_sector_constructor
        "product")),
   [6])
);;

let tag_pro_pcd = Property_as_context_domain_tag_by_unit_provider_v.provide ();;

test_number 2 ( 
(tag_pro_pcd : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_context_symbol
    (Property_context_symbol_t.Property_context_domain_symbol
      (Property_context_domain_symbol_t.Property_context_domain_constructor
        "property")),
   [18; 6])
);;

let tag_pro_iba = 
    Property_as_context_inputbase_tag_by_basicname_inputbase_provider_v.provide 
      bna_iba  
;;

test_number 3 (
( tag_pro_iba : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_context_symbol
    (Property_context_symbol_t.Property_context_inputbase_symbol
      (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
        "local")),
   [1; 18; 6])
);;

let tag_pro_ibo = 
    Property_as_context_inputbox_tag_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide 
      (bna_ibo, bna_iba)
;;

test_number 4 (
(tag_pro_ibo : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_context_symbol
    (Property_context_symbol_t.Property_context_inputbox_symbol
      (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
        "Print_length_segment_bc")),
   [41; 1; 18; 6])
);;

let tag_pro_qua = Quatuor_v.make tag_pro_ibo tag_pro_iba tag_pro_pcd tag_pro_pcs;;

test_number 5 (
(tag_pro_qua :
  Property_symbol_t.property_symbol Tag_t.tag Quatuor_t.quatuor ) =
  ((Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "Print_length_segment_bc")),
    [41; 1; 18; 6]),
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

Check_consistency_by_property_as_context_tag_quatuor_provider_v.provide tag_pro_qua;

test_number 6 (
tag_pro_qua = provide (bna_ibo, bna_iba)
);;
