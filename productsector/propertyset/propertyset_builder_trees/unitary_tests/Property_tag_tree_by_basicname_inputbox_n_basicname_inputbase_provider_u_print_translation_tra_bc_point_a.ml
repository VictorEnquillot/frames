open Make_test_v;;

testing "Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v with
        Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_u_print_translation_tra_bc_point_a.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_bc *)
(*        context *)
(*          databox "segment_BC" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Con_pa *)
(*        context *)
(*          databox "Point_a" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_bc *)
(*          end -- external *)
(*        end -- define *)

(* define Tra_bc *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(*          operation "translation" *)
(*          ondomain "figure"   *)
(*          cofactor  *)
(*            cofactor_entity Seg_bc *)
(*            end -- cofactor	 *)
(*          end -- operator *)
(*        end -- define *)

(* define Poi_a         *)
(*        external  *)
(*          type [ "figure" "set" "fence" "point" "constructor" ] *)
(*          external_name "T_A" *)
(*          external_context Con_pa *)
(*          end -- external *)
(*        end -- define *)

(* define Poi_t *)
(*        target  *)
(*          type [ "property" "operand" "target" "created" "constructor" ] *)
(*          operator Tra_bc *)
(*          operand Poi_a *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Poi_t *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_u_print_translation_tra_bc_point_a.ml";; 

*)

open Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v;;

let nam_ibo = "Print_translation_tra_bc_point_a";;
let nam_iba = "local";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
let bna_iba = Basicname_v.basicname_inputbase_of_string nam_iba;;

let tag_pro_qua =
    Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
      (bna_ibo, bna_iba);;

test_number 1 (
(tag_pro_qua :
  Property_symbol_t.property_symbol Tag_t.tag Quatuor_t.quatuor ) =
  ((Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "Print_translation_tra_bc_point_a")),
    [54; 1; 18; 6]),
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
 
let sym_pro_ibo_st =
    Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
      (bna_ibo, bna_iba);;

let (tag_pro_ibo, tag_pro_iba, tag_pro_pcd, tag_pro_pcs) = tag_pro_qua;;

let tag_pro_l = Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (bna_ibo, bna_iba);;

