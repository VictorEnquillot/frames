open Make_test_v;;

testing "Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v
        Make_argument_by_basicname_variable_n_basicname_inputbox_provider_u_print_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_tw *)
(*        context *)
(*          databox "triangle_w" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Tri_w *)
(*        external  *)
(*        type [ "figure" "set" "body" "triangle" "scalene" "acute" ] *)
(*          external_name "W" *)
(*          external_context Con_tw *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          external_context Con_tw *)
(*          end -- external *)
(*        end -- define *)

(* print Tri_w *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Make_argument_by_basicname_variable_n_basicname_inputbox_provider_u_print_triangle_w.ml";;

*)

open Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v;;

let nam_ibo = "Print_triangle_w";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
let nam_var = "Tri_w";;
  
let bna_var = Basicname_v.basicname_variable_of_string nam_var;;

  Basicname_v.check_is_basicname_variable_of_basicname bna_var;;
  Basicname_v.check_is_basicname_inputbox_of_basicname bna_ibo;;

let str_l =
    Localinput_set_body_box_type_string_list_by_basicname_variable_n_basicname_inputbox_provider_v.provide
      (bna_var, bna_ibo);;


let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide bna_ibo;;

let pre_tag_loi_sof_lvt sof (s, i) = 
(Localinput_symbol_v.is_localinput_set_body_list_variable_type_constructor s)
&&
  (Localinput_symbol_v.string_off s = sof)
;;

let tag_loi_lvt = List_v.only_element_of_predicate_off_list (pre_tag_loi_sof_lvt nam_var) tag_loi_l;;

test_number 1 (
( tag_loi_lvt : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
        (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
          (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
            "Len")))),
   [2; 1; 2; 2; 2; 6; 42; 1; 22; 1])
);;

let tag_lvt = (* Coerce Down *)
    Variable_name_n_basicname_inputbox_v.variable_name_n_basicname_inputbox_off_localinput_tag
      tag_loi_lvt;;

test_number 2 (
( tag_lvt :
    Localinput_set_body_list_variable_type_symbol_t.localinput_set_body_list_variable_type_symbol
    Tag_t.tag ) =
(Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
   "Len",
  [2; 1; 2; 2; 2; 6; 42; 1; 22; 1])
);;

let str_l =
    Localinput_variable_type_string_list_by_basicname_variable_n_basicname_inputbox_provider_v.provide
    tag_lvt;;

test_number 3 (
(str_l : string list) =
  ["operator"; "set"; "body"; "creation"; "measure"; "constructor"]
);;

let str_arg = List_v.name_underscored_off_string_list str_l;;

test_number 4 (
(str_arg : string ) = 
"operator_set_body_creation_measure_constructor"
);;

test_number 5 (
str_arg = provide tag_lvt
);;
