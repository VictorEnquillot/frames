open Make_test_v;;

testing "Elementary_tag_tree_by_elementary_createdby_tag_provider_v with
   Elementary_tag_tree_by_elementary_createdby_tag_provider_u_any.ml";;

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
   #use "Elementary_tag_tree_by_elementary_createdby_tag_provider_u_any.ml";;

*)

let tag_edo = Elementary_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
tag_edo 
(* : Elementary_context_domain_symbol_t.elementary_context_domain_symbol Tag_t.tag *)
=
  (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary", [4])
);;

(* Input File *)

let nam_inp = "Coordinate_tuple_print.inp";;
let dir_inp ="/home/colonna/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;
Parameters_general_register_v.store "input-file" fno_inp;;

let tag_ecr = Elementary_createdby_tag_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 2 (
tag_ecr 
(* : Elementary_context_database_symbol_t.elementary_context_database_symbol Tag_t.tag *)
=
  (Elementary_context_database_symbol_t.Elementary_context_database_constructor "db1",
   [1; 4])
);;

let tag_ele_st = Elementary_tag_subtree_by_elementary_createcry_tag_provider_v.provide tag_ecr;;

let tag_ele_roo = Tree_v.root_off_tree tag_ele_st;;

(* Root Tag is Database *)

test_number 3 (
tag_ele_roo 
(* : Elementary_symbol_t.elementary_symbol Tag_t.tag *)
  =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_database_symbol
      (Elementary_context_database_symbol_t.Elementary_context_database_constructor "db1")),
   [1; 4])
);;

let tag_ele_st_l = Tree_v.topson_tree_list_off_tree tag_ele_st;;

(* Elementary_body_coordinate_tuple_tag Subtree Root list *)

let tag_ele_roo_l = List.map Tree_v.root_off_tree tag_ele_st_l;;

test_number 4 (
tag_ele_roo_l 
(* : Elementary_symbol_t.elementary_symbol Tag_t.tag list *)
=
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol
           (Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_constructor
             "T_A")))),
    [1; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol
           (Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_constructor
             "T_B")))),
    [2; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol
           (Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_constructor
             "T_C")))),
    [3; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol
           (Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_constructor
             "V_A")))),
    [4; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol
           (Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_constructor
             "V_B")))),
    [5; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol
           (Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_constructor
             "V_C")))),
    [6; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol
           (Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_constructor
             "U_A")))),
    [7; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol
           (Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_constructor
             "U_B")))),
    [8; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol
           (Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_constructor
             "U_C")))),
    [9; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
         (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cylindrical_symbol
           (Elementary_body_coordinate_tuple_elementary_border_coordinate_cylindrical_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cylindrical_constructor
             "BC_B")))),
    [10; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
         (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cylindrical_symbol
           (Elementary_body_coordinate_tuple_elementary_border_coordinate_cylindrical_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cylindrical_constructor
             "BC_C")))),
    [11; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
         (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_spherical_symbol
           (Elementary_body_coordinate_tuple_elementary_border_coordinate_spherical_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_spherical_constructor
             "A_A")))),
    [12; 1; 4])]
);;

(* Subtree T_A *)

let tag_ele_st = List.find (fun t -> Elementary_tag_v.string_off (Tree_v.root_off_tree t) = "T_A") tag_ele_st_l;;

test_number 5 (
tag_ele_st 
(* : Elementary_symbol_t.elementary_symbol Tag_t.tag Tree_t.tree *)
=
  Tree_t.Inner
   ((Elementary_symbol_t.Elementary_body_symbol
      (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
        (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
          (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol
            (Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_constructor
              "T_A")))),
     [1; 1; 4]),
   [Tree_t.Inner
     ((Elementary_symbol_t.Elementary_body_symbol
        (Elementary_body_symbol_t.Elementary_border_coordinate_symbol
          (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
            (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol
              (Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol_t.Elementary_border_coordinate_cartesian_x "elementary_border_coordinate_cartesian_x")))),
       [1; 1; 1; 4]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Nanometer)),
        [1; 1; 1; 1; 4])]);
    Tree_t.Inner
     ((Elementary_symbol_t.Elementary_body_symbol
        (Elementary_body_symbol_t.Elementary_border_coordinate_symbol
          (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
            (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol
              (Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol_t.Elementary_border_coordinate_cartesian_y "elementary_border_coordinate_cartesian_y")))),
       [2; 1; 1; 4]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Nanometer)),
        [1; 2; 1; 1; 4])]);
    Tree_t.Inner
     ((Elementary_symbol_t.Elementary_body_symbol
        (Elementary_body_symbol_t.Elementary_border_coordinate_symbol
          (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
            (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol
              (Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol_t.Elementary_border_coordinate_cartesian_z "elementary_border_coordinate_cartesian_z")))),
       [3; 1; 1; 4]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Nanometer)),
        [1; 3; 1; 1; 4])])])
);;
