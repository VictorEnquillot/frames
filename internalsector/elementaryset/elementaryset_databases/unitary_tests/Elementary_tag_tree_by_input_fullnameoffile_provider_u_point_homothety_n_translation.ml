open Make_test_v;;

testing "Elementary_tag_tree_by_input_fullnameoffile_provider_v with
   Elementary_tag_tree_by_input_fullnameoffile_provider_u_point_homothety_n_translation.ml";;

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
   #use "Elementary_tag_tree_by_input_fullnameoffile_provider_u_point_homothety_n_translation.ml";;

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

let sym_inp_t = 
    Input_tag_tree_by_input_fullnameoffile_provider_v.provide 
      fno_inp ;;

open Elementary_tag_tree_by_input_fullnameoffile_provider_v;;

(* let elementary_sole_index_tree_of_input_fullnameoffile fno_inp = *)
let sym_ele_t =
    Elementary_symbol_tree_by_input_fullnameoffile_provider_v.provide 
      fno_inp;;

test_number 2 (
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

let sym_ele_ifi_st =
    Tree_v.subtree_of_node_predicate_off_tree 
      Elementary_symbol_v.is_elementary_input_file 
       sym_ele_t;;

test_number 3 (
(sym_ele_ifi_st : Elementary_symbol_t.elementary_symbol Tree_t.tree ) =
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

let tag_ele_ifi = 
  Elementary_createdby_tag_by_input_fullnameoffile_provider_v.provide
      fno_inp;;

test_number 4 (
(tag_ele_ifi :
  Elementary_createdby_symbol_t.elementary_createdby_symbol Tag_t.tag ) =
  (Elementary_createdby_symbol_t.Elementary_input_file
    "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp",
   [28; 4])
);;

let soi_ele_ifi = Tag_v.sole_index_off_tag tag_ele_ifi;;

test_number 5 (
(soi_ele_ifi : Sole_index_t.sole_index ) = 
[28; 4]
);;

let soi_ele_ifi_st =
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index
      sym_ele_ifi_st
      soi_ele_ifi;;

test_number 6 (
(soi_ele_ifi_st : Sole_index_t.sole_index Tree_t.tree ) =
Tree_t.Inner ([28; 4], 
	      [Tree_t.Leaf [1; 28; 4];
	       Tree_t.Leaf [2; 28; 4]])
);;

let soi_dom = 
    Domain_tag_v.domain_sole_index_of_domain_name_of_string_of_sole_index_up 
      "elementary" "" [] ;;

test_number 7 (
(soi_dom : Sole_index_t.sole_index ) = 
[4]
);;

let tag_ele_t = Elementary_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;
 
test_number 8 (
(tag_ele_t : Elementary_symbol_t.elementary_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Elementary_symbol_t.Elementary_context_symbol
      (Elementary_context_symbol_t.Elementary_context_domain_symbol
        (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
          "elementary")),
     [4]),
   [Tree_t.Inner
     ((Elementary_symbol_t.Elementary_context_symbol
        (Elementary_context_symbol_t.Elementary_createdby_symbol
          (Elementary_createdby_symbol_t.Elementary_input_file
            "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp")),
       [28; 4]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Meter)),
        [1; 28; 4]);
      Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
             Elementary_fence_units_angle_symbol_t.Radian)),
        [2; 28; 4])])])
);;
