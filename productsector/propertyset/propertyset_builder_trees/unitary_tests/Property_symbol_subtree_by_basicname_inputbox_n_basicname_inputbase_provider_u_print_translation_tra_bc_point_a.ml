open Make_test_v;;

testing "Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v with
        Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_u_print_translation_tra_bc_point_a.ml";;

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
   #use "Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_u_print_translation_tra_bc_point_a.ml";; 

*)

open Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v;;

let nam_ibo = "Print_translation_tra_bc_point_a";;
let nam_iba = "local";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
let bna_iba = Basicname_v.basicname_inputbase_of_string nam_iba;;

let tag_lct_l = 
	 Localinput_set_body_handle_command_tounit_tag_list_by_basicname_inputbox_provider_v.provide
	   bna_ibo;;

test_number 1 (
( tag_lct_l :
  Localinput_set_body_handle_command_tounit_symbol_t.localinput_set_body_handle_command_tounit_symbol
  Tag_t.tag list ) =
  [(Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_print_symbol
     (Localinput_set_body_handle_command_tounit_print_symbol_t.Localinput_set_body_handle_command_tounit_print_constructor
       "Poi_t"),
    [8; 54; 1; 22; 1])]
);;
 
let sym_pro_ibo_st =
    Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
      (bna_ibo, bna_iba);;

let (tag_pro_ibo, tag_pro_iba, tag_pro_pcd, tag_pro_pcs) = tag_pro_qua;;

let tag_pro_l = Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (bna_ibo, bna_iba);;

