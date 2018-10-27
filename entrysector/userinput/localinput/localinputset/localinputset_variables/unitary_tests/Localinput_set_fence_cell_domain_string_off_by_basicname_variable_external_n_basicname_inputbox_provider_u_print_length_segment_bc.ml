open Make_test_v;;

testing "Localinput_set_fence_cell_domain_string_off_by_basicname_variable_external_n_basicname_inputbox_provider_v with
        Localinput_set_fence_cell_domain_string_off_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_length_segment_bc.ml";;

(* define Con_bc *)
(*        context *)
(*          databox "segment_BC" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Ope_len *)
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
(*          external_context Con_bc *)
(*          end -- external *)
(*        end -- define *)

(* define Len_bc *)
(*        target  *)
(*          type [ "property" "operand" "body" "target" "measured" "constructor" ] *)
(*          target_operator Ope_len *)
(*          target_operand Seg_bc *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Len_bc *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)


(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_set_fence_cell_domain_string_off_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_length_segment_bc.ml";; 

*)

open Localinput_set_fence_cell_domain_string_off_by_basicname_variable_external_n_basicname_inputbox_provider_v;;

let nam_var_ext = "Seg_bc";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_ext;;

let nam_ibo = "Print_length_segment_bc";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let tag_lee_l = 
    Localinput_set_fence_variable_name_entity_external_tag_list_by_basicname_inputbox_provider_v.provide
      bna_ibo;;

test_number 1 (
(tag_lee_l :
  Localinput_set_fence_variable_name_entity_external_symbol_t.localinput_set_fence_variable_name_entity_external_symbol
  Tag_t.tag list ) =
  [(Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
     "Seg_bc",
    [1; 2; 3; 42; 1; 22; 1]);
   (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
     "Uni_len",
    [1; 2; 5; 42; 1; 22; 1]);
   (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
     "Uni_len",
    [1; 2; 2; 2; 6; 42; 1; 22; 1])]
);;

let tag_lee = List_v.only_element_of_predicate_off_list 
    (fun t -> 
      (Localinput_set_fence_variable_name_entity_external_tag_v.string_off t = nam_var_ext )
    )      
    tag_lee_l;; 

let tag_lec = 
    Localinput_set_fence_cell_external_context_tag_by_localinput_set_fence_variable_name_entity_external_tag_provider_v.provide 
      tag_lee;;

test_number 2 (
(tag_lec :
  Localinput_set_fence_cell_external_context_symbol_t.localinput_set_fence_cell_external_context_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_cell_external_context_symbol_t.Localinput_set_fence_cell_external_context_constructor
    "Con_bc",
   [3; 2; 2; 2; 3; 42; 1; 22; 1])
);;

let tag_lnc =
    Localinput_set_fence_variable_name_context_tag_by_localinput_set_fence_cell_external_context_tag_provider_v.provide
      tag_lec;;

test_number 3 (
(tag_lnc :
  Localinput_set_fence_variable_name_context_symbol_t.localinput_set_fence_variable_name_context_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_context_symbol_t.Localinput_set_fence_variable_name_context_constructor
    "Con_bc",
   [1; 2; 1; 42; 1; 22; 1])
);;

let tag_lcd =
    Localinput_set_fence_cell_domain_tag_by_localinput_set_fence_variable_name_context_tag_provider_v.provide
    tag_lnc;;

test_number 4 (
(tag_lcd :
  Localinput_set_fence_cell_domain_symbol_t.localinput_set_fence_cell_domain_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_cell_domain_symbol_t.Localinput_set_fence_cell_domain_constructor
    "figure",
   [3; 2; 2; 2; 1; 42; 1; 22; 1])
);;

let nam_dom = Localinput_set_fence_cell_domain_tag_v.string_off tag_lcd;;

test_number 5 (
nam_dom = provide (bna_var_ext, bna_ibo)
);;


