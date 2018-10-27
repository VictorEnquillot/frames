open Make_test_v;;

testing "Elementary_symbol_tree_by_input_fullnameoffile_provider_v with
   Elementary_symbol_tree_by_input_fullnameoffile_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_all_list_by_unit_register_v.register;;
Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1figure_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Measure_actual_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Measure_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Measure_canonical_by_elementary_fence_units_canonical_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Nwchem_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;













(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Elementary_symbol_tree_by_input_fullnameoffile_provider_u_point_homothety_n_translation.ml";;

*)

(* Input File *)

let nam_inp = "Point_homothety_n_translation.inp";;
let dir_inp ="/home/colonna/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;
Parameters_general_register_v.store "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"
);;

open Elementary_symbol_tree_by_input_fullnameoffile_provider_v;;

(* let elementary_as_input_file_symbol_subtree_of_input_fullnameoffile fno_inp = *)

let sym_inp_t = 
    Input_symbol_tree_by_input_fullnameoffile_provider_v.provide 
      fno_inp ;;

let sym_inp_kui_stl = 
    Tree_v.subtree_list_of_node_predicate_off_tree
      Input_symbol_v.is_input_keyword_units_item
      sym_inp_t;;

test_number 2 (
( sym_inp_kui_stl : Input_symbol_t.input_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Input_symbol_t.Input_keyword_symbol
      Input_keyword_symbol_t.Input_keyword_units_item,
    [Tree_t.Leaf
      (Input_symbol_t.Input_basic_symbol
        (Input_basic_symbol_t.Input_basic_string "length"));
     Tree_t.Leaf
      (Input_symbol_t.Input_basic_symbol
        (Input_basic_symbol_t.Input_basic_string "meter"))]);
   Tree_t.Inner
    (Input_symbol_t.Input_keyword_symbol
      Input_keyword_symbol_t.Input_keyword_units_item,
    [Tree_t.Leaf
      (Input_symbol_t.Input_basic_symbol
        (Input_basic_symbol_t.Input_basic_string "angle"));
     Tree_t.Leaf
      (Input_symbol_t.Input_basic_symbol
        (Input_basic_symbol_t.Input_basic_string "radian"))]);
   Tree_t.Inner
    (Input_symbol_t.Input_keyword_symbol
      Input_keyword_symbol_t.Input_keyword_units_item,
    [Tree_t.Leaf
      (Input_symbol_t.Input_basic_symbol
        (Input_basic_symbol_t.Input_basic_string "length"));
     Tree_t.Leaf
      (Input_symbol_t.Input_basic_symbol
        (Input_basic_symbol_t.Input_basic_string "meter"))]);
   Tree_t.Inner
    (Input_symbol_t.Input_keyword_symbol
      Input_keyword_symbol_t.Input_keyword_units_item,
    [Tree_t.Leaf
      (Input_symbol_t.Input_basic_symbol
        (Input_basic_symbol_t.Input_basic_string "angle"));
     Tree_t.Leaf
      (Input_symbol_t.Input_basic_symbol
        (Input_basic_symbol_t.Input_basic_string "radian"))])]
);;

  let sym_ele_uni_stl =
    Elementary_as_units_symbol_leaf_list_by_input_fullnameoffile_provider_v.provide
      fno_inp;;

test_number 3 (
(sym_ele_uni_stl : Elementary_symbol_t.elementary_symbol Tree_t.tree list ) =
  [Tree_t.Leaf
    (Elementary_symbol_t.Elementary_closure_symbol
      (Elementary_closure_symbol_t.Elementary_fence_units_symbol
        (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
          Elementary_fence_units_actual_length_symbol_t.Meter)));
   Tree_t.Leaf
    (Elementary_symbol_t.Elementary_closure_symbol
      (Elementary_closure_symbol_t.Elementary_fence_units_symbol
        (Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
          Elementary_fence_units_angle_symbol_t.Radian)))]
);;

let sym_ele_ifi_st =  
    elementary_as_input_file_symbol_subtree_of_input_fullnameoffile
      fno_inp;;

test_number 4 (
( sym_ele_ifi_st : Elementary_symbol_t.elementary_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_createdby_symbol
       (Elementary_createdby_symbol_t.Elementary_input_file
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp")),
   [Tree_t.Leaf
     (Elementary_symbol_t.Elementary_closure_symbol
       (Elementary_closure_symbol_t.Elementary_fence_units_symbol
         (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
           Elementary_fence_units_actual_length_symbol_t.Meter)));
    Tree_t.Leaf
     (Elementary_symbol_t.Elementary_closure_symbol
       (Elementary_closure_symbol_t.Elementary_fence_units_symbol
         (Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
           Elementary_fence_units_angle_symbol_t.Radian)))])
);;

let sym_ele_t = Elementary_symbol_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 5 (
(sym_ele_t : Elementary_symbol_t.elementary_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary")),
   [Tree_t.Inner
     (Elementary_symbol_t.Elementary_context_symbol
       (Elementary_context_symbol_t.Elementary_createdby_symbol
         (Elementary_createdby_symbol_t.Elementary_input_file
           "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp")),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Meter)));
      Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
             Elementary_fence_units_angle_symbol_t.Radian)))])])
);;

