open Make_test_v;;

testing "Localinput_tag_all_list_by_basicname_inputbox_provider_v with
    Localinput_tag_all_list_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* Deleting Registers *)



(* Tracing *)

Trace_what_by_module_name_register_v.store "any" "any cpu";;

(* toplevel 
   #use "Localinput_tag_all_list_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

open Localinput_tag_all_list_by_basicname_inputbox_provider_v;;

let tag_inp_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide fno_inp;;

let tag_inp_l = provide fno_inp;;

let tag_inp_rts_l = Tree_v.root_topson_node_list_off_tree tag_inp_t;;
 
test_number 1 (
(tag_inp_rts_l : Localinput_symbol_t.input_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_domain_symbol
       (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
         "input")),
    [12]);
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_file_symbol
       (Localinput_context_file_symbol_t.Localinput_context_file_constructor
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_point_a.inp")),
    [37; 12])]
);; 

let pre_tag_def (s, i) = Localinput_symbol_v.is_input_body_handle_command_creation_define_constructor s;;

let pre_tag_com (s, i) = Localinput_symbol_v.is_input_body_handle_command_symbol_off_input_symbol s;;
let pre_tag_pri (s, i) = Localinput_symbol_v.is_input_body_handle_command_tounit_print_constructor s;;
let pre_tag_vna (s, i) = Localinput_symbol_v.is_input_fence_variable_name_symbol_off_input_symbol s;;
let pre_tag_com_vna (s, i) = pre_tag_com (s, i) || pre_tag_vna (s, i);;

(* All Subtrees Define *)
let pre_tag_sof sof (s, i) = (pre_tag_vna (s, i)) && (Localinput_symbol_v.string_off s = sof);;
let tag_inp_com_stl = Tree_v.subtree_list_of_node_predicate_off_tree pre_tag_com tag_inp_t;;

let tag_inp_cpr = List.find pre_tag_pri tag_inp_l;;

test_number 2 (
(tag_inp_cpr : Localinput_symbol_t.input_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_symbol
          (Localinput_body_handle_command_tounit_symbol_t.Localinput_body_handle_command_tounit_print_symbol
            (Localinput_body_handle_command_tounit_print_symbol_t.Localinput_body_handle_command_tounit_print_constructor
              "Poi_h"))))),
   [9; 37; 12])
);;

