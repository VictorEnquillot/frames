open Make_test_v;;

testing "Database_name_by_context_input_variable_name_provider_v with
    Database_name_by_context_input_variable_name_provider_u_point_homothety.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "Database_name_by_context_input_variable_name_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;

let tag_inp_stl = Localinput_as_body_handle_command_define_tag_subtree_list_by_input_fullnameoffile_provider_v.provide fno_inp;;
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
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Hom_b_2");
    Localinput_symbol_t.Localinput_keyword_symbol
     (Localinput_keyword_symbol_t.Localinput_keyword_operator_symbol
       Localinput_keyword_operator_symbol_t.Localinput_keyword_operator_constructor);
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end];
   [Localinput_symbol_t.Localinput_variable_symbol
     (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Poi_h");
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_target;
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_end]]
);;

let nam_ivn = "Con_hom";;

let tag_inp_cde_t = 
    Localinput_as_body_handle_command_define_tag_subtree_by_input_variable_name_provider_v.provide 
      nam_ivn;;
let sym_inp_cde_t = Tree_v.map Tag_v.entity_off_tag tag_inp_cde_t;;

let boo = Tree_v.has_node_of_node_predicate_off_tree Localinput_symbol_v.is_input_keyword_database sym_inp_cde_t;;

let nam_ivn = "Con_loc";;

let tag_inp_cde_t = 
    Localinput_as_body_handle_command_define_tag_subtree_by_input_variable_name_provider_v.provide 
      nam_ivn;;
let sym_inp_cde_t = Tree_v.map Tag_v.entity_off_tag tag_inp_cde_t;;

test_number 2 (
sym_inp_cde_t 
(* : Localinput_symbol_t.input_symbol Tree_t.tree *)
=
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_body_handle_command_symbol
     Localinput_body_handle_command_symbol_t.Localinput_command_define,
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_variable_symbol
       (Localinput_variable_symbol_t.Localinput_variable_name_constructor "Con_loc"));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_context,
     [Tree_t.Inner
       (Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_database,
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "db1"))]);
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_domain,
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_basic_symbol
           (Localinput_basic_symbol_t.Localinput_basic_string "user"))])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_end)])
);;

let sym_inp_con_t = 
    Tree_v.subtree_of_node_predicate_off_tree 
      Localinput_symbol_v.is_input_keyword_context
      sym_inp_cde_t;;

test_number 3 (
sym_inp_con_t
(* : Localinput_symbol_t.input_symbol Tree_t.tree *)
=
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_context,
   [Tree_t.Inner
     (Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_database,
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_basic_symbol
         (Localinput_basic_symbol_t.Localinput_basic_string "db1"))]);
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_domain,
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_basic_symbol
         (Localinput_basic_symbol_t.Localinput_basic_string "user"))])])
);;

let sym_inp_iba_t = 
    Tree_v.subtree_of_node_predicate_off_tree 
      Localinput_symbol_v.is_input_keyword_database
      sym_inp_cde_t;;

test_number 4 (
sym_inp_iba_t
(* : Localinput_symbol_t.input_symbol Tree_t.tree *)
=
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_database,
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_basic_symbol
       (Localinput_basic_symbol_t.Localinput_basic_string "db1"))])
);;

let sym_inp_lea_l = Tree_v.subtree_of_node_predicate_off_tree Localinput_symbol_v.is_input_basic_string sym_inp_iba_t;;

test_number 5 (
sym_inp_lea_l 
(* : Localinput_symbol_t.input_symbol Tree_t.tree *)
=
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_basic_symbol
     (Localinput_basic_symbol_t.Localinput_basic_string "db1"))
);;

let sym_iba = Database_name_by_context_input_variable_name_provider_v.provide nam_ivn;;

test_number 6 (
sym_iba 
(* : string *)
=
 "db1"
);;
