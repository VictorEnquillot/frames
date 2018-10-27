open Make_test_v;;

testing "Localinput_fence_variable_name_n_kind_symbol_list_by_basicname_inputbox_provider_v with
    Localinput_fence_variable_name_n_kind_symbol_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)














(* Tracing *)


(* toplevel 
   #use "Localinput_fence_variable_name_n_kind_symbol_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_n_translation_point_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nam_inp;;

let tag_inp_stl = Localinput_as_body_handle_command_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide fno_inp;;
let sym_inp_stl = List.map (Tree_v.map Tag_v.entity_off_tag) tag_inp_stl ;;

let sym_inp_ll = List.map Tree_v.topson_node_list_off_tree sym_inp_stl;;

test_number 1 (
(sym_inp_ll : Localinput_symbol_t.input_symbol list list ) =
  [[Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Con_loc");
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_context;
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end];
   [Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Con_hom");
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_context;
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end];
   [Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Hom_b_2");
    Localinput_symbol_t.Localinput_keyword_symbol
     (Localinput_keyword_symbol_t.Localinput_keyword_operator_symbol
       Localinput_keyword_operator_symbol_t.Localinput_keyword_operator_constructor);
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end];
   [Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Tra_bc");
    Localinput_symbol_t.Localinput_keyword_symbol
     (Localinput_keyword_symbol_t.Localinput_keyword_operator_symbol
       Localinput_keyword_operator_symbol_t.Localinput_keyword_operator_constructor);
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end];
   [Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Vec_bc");
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_external;
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end];
   [Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Cen_b");
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_external;
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end];
   [Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_a");
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_external;
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end];
   [Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_h");
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_target;
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end];
   [Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_t");
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_target;
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end]]
);;

let nam_n_kin_l = Localinput_fence_variable_name_n_kind_symbol_list_by_basicname_inputbox_provider_v.provide fno_inp;;

test_number 2 (
(nam_n_kin_l :
  (string, Localinput_symbol_t.input_symbol) Doublet_t.doublet list ) =
[("Con_loc",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_context);
   ("Con_hom",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_context);
   ("Hom_b_2",
    Localinput_symbol_t.Localinput_keyword_symbol
     (Localinput_keyword_symbol_t.Localinput_keyword_operator_symbol
       Localinput_keyword_operator_symbol_t.Localinput_keyword_operator_constructor));
   ("Tra_bc",
    Localinput_symbol_t.Localinput_keyword_symbol
     (Localinput_keyword_symbol_t.Localinput_keyword_operator_symbol
       Localinput_keyword_operator_symbol_t.Localinput_keyword_operator_constructor));
   ("Vec_bc",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_external);
   ("Cen_b",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_external);
   ("Poi_a",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_external);
   ("Poi_h",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_target);
   ("Poi_t",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_target)]
);;

Localinput_fence_variable_kind_symbol_by_input_fence_variable_name_symbol_register_v.dump ();;
