open Make_test_v;;

testing "Elementary_tag_all_list_by_elementary_createdby_tag_provider_v with
   Elementary_tag_all_list_by_elementary_createdby_tag_provider_u_point_homothety_n_translation.ml";;

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
   #use "Elementary_tag_all_list_by_elementary_createdby_tag_provider_u_point_homothety_n_translation.ml";;

*)

(* Createdby Database Input File *)

let nam_inp = "Point_homothety_n_translation.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_inp;;
Parameters_general_register_v.store "input-file" fno_inp;;

let sym_ecr = Elementary_createdby_symbol_v.elementary_input_file fno_inp;;

let soi_ele =
    Elementary_createdby_tag_by_input_fullnameoffile_provider_v.elementary_createdby_sole_index
      fno_inp;;

let tag_ecr = Tag_v.make sym_ecr soi_ele;;

test_number 1 (
(tag_ecr : Elementary_createdby_symbol_t.elementary_createdby_symbol Tag_t.tag ) =
  (Elementary_createdby_symbol_t.Elementary_input_file
    "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp",
   [28; 4])
);;

let tag_ele_t = Elementary_tag_tree_by_elementary_createdby_tag_provider_v.provide tag_ecr;;

test_number 2 (
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

let tag_ele_l = Elementary_tag_all_list_by_elementary_createdby_tag_provider_v.provide tag_ecr;;
 
test_number 3 (
(tag_ele_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) = 
  [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary")),
    [4]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_createdby_symbol
       (Elementary_createdby_symbol_t.Elementary_input_file
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp")),
    [28; 4]);
   (Elementary_symbol_t.Elementary_closure_symbol
     (Elementary_closure_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
         Elementary_fence_units_actual_length_symbol_t.Meter)),
    [1; 28; 4]);
   (Elementary_symbol_t.Elementary_closure_symbol
     (Elementary_closure_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
         Elementary_fence_units_angle_symbol_t.Radian)),
    [2; 28; 4])]
);;


(* Createdby Database Db1 *)

let nam_dna = "db1";;

let tag_ecr =
    Elementary_createdby_tag_by_database_name_provider_v.provide 
    nam_dna;;

test_number 4 (
(tag_ecr : Elementary_createdby_symbol_t.elementary_createdby_symbol Tag_t.tag ) =
  (Elementary_createdby_symbol_t.Elementary_context_database "db1", [1; 4])
);;

let tag_ele_t = Elementary_tag_tree_by_elementary_createdby_tag_provider_v.provide tag_ecr;;

let tag_ele_roo = Tree_v.root_off_tree tag_ele_t;;

test_number 5 (
(tag_ele_roo : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_domain_symbol
      (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary")),
   [4])
);;

let tag_ele_l = Elementary_tag_all_list_by_elementary_createdby_tag_provider_v.provide tag_ecr;;
