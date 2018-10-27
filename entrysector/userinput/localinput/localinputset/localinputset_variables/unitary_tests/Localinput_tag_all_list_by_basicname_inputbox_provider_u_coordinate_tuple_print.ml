open Make_test_v;;

testing "Localinput_tag_all_list_by_basicname_inputbox_provider_v with
    Localinput_tag_all_list_by_basicname_inputbox_provider_u_coordinate_tuple_print.ml";;

(* Deleting Registers *)








(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_tag_all_list_by_basicname_inputbox_provider_u_coordinate_tuple_print.ml";; 

*)

 (* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_coordinate_tuple_point_t_a";;
let nam_ibo = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

open Localinput_tag_all_list_by_basicname_inputbox_provider_v;;

let tag_loi_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide nam_ibo;;

let tag_loi_l = provide nam_ibo;;

let tag_loi_rts_l = Tree_v.root_topson_node_list_off_tree tag_loi_t;;
 
test_number 1 (
(tag_loi_rts_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_domain_symbol
       (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
         "input")),
    [11]);
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_file_symbol
       (Localinput_context_file_symbol_t.Localinput_context_file_constructor
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_coordinate_tuple_point_t_a")),
    [6; 11])]
);; 

let pre_tag_def (s, i) = Localinput_symbol_v.is_localinput_body_handle_command_creation_define_constructor s;;

let pre_tag_com (s, i) = Localinput_symbol_v.is_localinput_body_handle_command_symbol_off_localinput_symbol s;;
let pre_tag_pri (s, i) = Localinput_symbol_v.is_localinput_body_handle_command_unit_print_constructor s;;
let pre_tag_vna (s, i) = Localinput_symbol_v.is_localinput_fence_variable_name_symbol_off_localinput_symbol s;;
let pre_tag_com_vna (s, i) = pre_tag_com (s, i) || pre_tag_vna (s, i);;

(* All Subtrees Define *)
let pre_tag_sof sof (s, i) = (pre_tag_vna (s, i)) && (Localinput_symbol_v.string_off s = sof);;
let tag_loi_com_stl = Tree_v.subtree_list_of_node_predicate_off_tree pre_tag_com tag_loi_t;;

let tag_loi_cpr = List_v.only_element_of_predicate_off_list pre_tag_pri tag_loi_l;;

test_number 2 (
(tag_loi_cpr : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
          (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
            (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
              "Ctc_a"))))),
   [4; 6; 11])
);;

