open Make_test_v;;

testing "Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1figure_as_body_sequence_float_tag_subtree_translator_v with
   Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1figure_as_body_sequence_float_tag_subtree_translator_u_segment_s.ml";;

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
   #use "Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1figure_as_body_sequence_float_tag_subtree_translator_u_segment_s.ml";;

*)

(* coordinates_units_length   angstrom  *)
(* coordinates_kind           cartesian *)
(* figure_kind segment  *)
(* figure_name S *)
(* vertex S_B       1.  0.  0. *)
(* vertex S_C       0.  1.  1. *)

let nam_dba = "db1figure";;
let nam_dbo = "segment_s";;
let sof_ect = "S_C";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let tag_dbo = Db1figure_context_databox_tag_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);; 

test_number 1 (
(tag_dbo :
  Db1figure_context_databox_symbol_t.db1figure_context_databox_symbol
  Tag_t.tag ) =
  (Db1figure_context_databox_symbol_t.Db1figure_context_databox_constructor
    "segment_s",
   [3; 1; 8; 6])
);;

let tag_db1_dsf_stl = 
    Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_provider_v.provide
      tag_dbo;;

let pre_tre t = Db1figure_tag_v.string_off (Tree_v.root_off_tree t) = sof_ect;;
let tag_db1_dsf_st = List_v.only_element_of_predicate_off_list pre_tre tag_db1_dsf_stl;;

test_number 2 (
(tag_db1_dsf_st :
  Db1figure_symbol_t.db1figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Db1figure_symbol_t.Db1figure_body_symbol
      (Db1figure_body_symbol_t.Db1figure_body_sequence_symbol
        (Db1figure_body_sequence_symbol_t.Db1figure_body_sequence_float_symbol
          (Db1figure_body_sequence_float_symbol_t.Db1figure_body_sequence_float_constructor
            "S_C"))),
     [3; 2; 2; 3; 1; 8; 6]),
   [Tree_t.Leaf
     (Db1figure_symbol_t.Db1figure_fence_symbol
       (Db1figure_fence_symbol_t.Db1figure_fence_basic_symbol
         (Db1figure_fence_basic_symbol_t.Db1figure_fence_basic_numerical_symbol
           (Db1figure_fence_basic_numerical_symbol_t.Db1figure_fence_basic_numerical_float_symbol
             (Db1figure_fence_basic_numerical_float_symbol_t.Db1figure_fence_basic_numerical_float_constructor
               "0.")))),
      [1; 3; 2; 2; 3; 1; 8; 6]);
    Tree_t.Leaf
     (Db1figure_symbol_t.Db1figure_fence_symbol
       (Db1figure_fence_symbol_t.Db1figure_fence_basic_symbol
         (Db1figure_fence_basic_symbol_t.Db1figure_fence_basic_numerical_symbol
           (Db1figure_fence_basic_numerical_symbol_t.Db1figure_fence_basic_numerical_float_symbol
             (Db1figure_fence_basic_numerical_float_symbol_t.Db1figure_fence_basic_numerical_float_constructor
               "1.")))),
      [2; 3; 2; 2; 3; 1; 8; 6]);
    Tree_t.Leaf
     (Db1figure_symbol_t.Db1figure_fence_symbol
       (Db1figure_fence_symbol_t.Db1figure_fence_basic_symbol
         (Db1figure_fence_basic_symbol_t.Db1figure_fence_basic_numerical_symbol
           (Db1figure_fence_basic_numerical_symbol_t.Db1figure_fence_basic_numerical_float_symbol
             (Db1figure_fence_basic_numerical_float_symbol_t.Db1figure_fence_basic_numerical_float_constructor
               "1.")))),
      [3; 3; 2; 2; 3; 1; 8; 6])])
);;

open Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1figure_as_body_sequence_float_tag_subtree_translator_v;;

(* Argument tag_db1_dsf_st *)

let tag_db1_dsf = Tree_v.root_off_tree tag_db1_dsf_st;;

test_number 3 (
(tag_db1_dsf : Db1figure_symbol_t.db1figure_symbol Tag_t.tag ) =
  (Db1figure_symbol_t.Db1figure_body_symbol
    (Db1figure_body_symbol_t.Db1figure_body_sequence_symbol
      (Db1figure_body_sequence_symbol_t.Db1figure_body_sequence_float_symbol
        (Db1figure_body_sequence_float_symbol_t.Db1figure_body_sequence_float_constructor
          "S_C"))),
   [3; 2; 2; 3; 1; 8; 6])
);;

let soi_db1_dsf = Tag_v.sole_index_off_tag tag_db1_dsf;;
 
let tag_dbo =  
    Db1figure_any_category_by_sole_index_extractor_v.db1figure_context_databox_tag_off_sole_index
      soi_db1_dsf
;;

test_number 4 (
(tag_dbo : Db1figure_context_databox_symbol_t.db1figure_context_databox_symbol Tag_t.tag ) =
(Db1figure_context_databox_symbol_t.Db1figure_context_databox_constructor
  "segment_s",
 [3; 1; 8; 6])
);;

let sym_dck = 
  Db1figure_fence_token_coordinates_kind_symbol_by_db1figure_context_databox_tag_provider_v.provide
    tag_dbo 
;;

test_number 5 (
(sym_dck : Db1figure_fence_token_coordinates_kind_symbol_t.db1figure_fence_token_coordinates_kind_symbol ) =
  Db1figure_fence_token_coordinates_kind_symbol_t.Db1figure_fence_token_coordinates_kind_cartesian
);;

let sym_dua = 
  Db1figure_fence_token_coordinates_units_angle_symbol_by_db1figure_context_databox_tag_provider_v.provide
    tag_dbo 
;;
  
test_number 6 (
(sym_dua :
   Db1figure_fence_token_coordinates_units_angle_symbol_t.db1figure_fence_token_coordinates_units_angle_symbol ) =
  Db1figure_fence_token_coordinates_units_angle_symbol_t.Db1figure_fence_token_coordinates_units_angle_noangle
 );;

let sym_dul = 
  Db1figure_fence_token_coordinates_units_length_symbol_by_db1figure_context_databox_tag_provider_v.provide
    tag_dbo 
;;

test_number 7 (
(sym_dul :
   Db1figure_fence_token_coordinates_units_length_symbol_t.db1figure_fence_token_coordinates_units_length_symbol ) =
Db1figure_fence_token_coordinates_units_length_symbol_t.Db1figure_fence_token_coordinates_units_length_angstrom
);;

(* Translation of Leaf node X *)

let tag_db1_x = Tree_v.only_node_of_node_predicate_off_tree (fun (s, i) -> Db1figure_symbol_v.string_off s = "0.") tag_db1_dsf_st;;

test_number 8 (
(tag_db1_x : Db1figure_symbol_t.db1figure_symbol Tag_t.tag ) =
  (Db1figure_symbol_t.Db1figure_fence_symbol
    (Db1figure_fence_symbol_t.Db1figure_fence_basic_symbol
      (Db1figure_fence_basic_symbol_t.Db1figure_fence_basic_numerical_symbol
        (Db1figure_fence_basic_numerical_symbol_t.Db1figure_fence_basic_numerical_float_symbol
          (Db1figure_fence_basic_numerical_float_symbol_t.Db1figure_fence_basic_numerical_float_constructor
            "0.")))),
   [1; 3; 2; 2; 3; 1; 8; 6])
);;

let tag_db1 = tag_db1_x;;
let (sym_db1, soi_db1) = tag_db1;;

let nam_ver = sof_ect;;

test_number 9 (
(nam_ver : string ) = 
"S_C"
);;

let sym_ele_ebc =
  Elementary_symbol_from_db1figure_tag_translations_v.elementary_as_border_coordinate_of_vertex_name_of_db1figure_coordinates_kind_of_db1figure_as_fence_basic_numerical_float_tag 
    nam_ver
    sym_dck 
    tag_db1
;;

test_number 10 (
(sym_ele_ebc : Elementary_symbol_t.elementary_symbol ) =
  Elementary_symbol_t.Elementary_border_symbol
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
             "S_C")))))
);;
	
let sym_efu = 
  Elementary_symbol_from_db1figure_tag_translations_v.elementary_fence_units_symbol_of_db1figure_fence_token_coordinates_units_angle_symbol_of_db1figure_fence_token_coordinates_units_length_symbol_of_coordinate_symbol_of_elementary_as_border_coordinate_symbol				 
    sym_dua 
    sym_dul 
    sym_ele_ebc
;;

test_number 11 (
(sym_efu : Elementary_fence_units_symbol_t.elementary_fence_units_symbol ) =
  Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
   Elementary_fence_units_actual_length_symbol_t.Angstrom
);;

let sym_ele_efu =
  Elementary_symbol_v.elementary_symbol_of_elementary_fence_units_symbol
    sym_efu
;;

let sym_ele_efu_f = Tree_v.make_of_leaf sym_ele_efu;;

let sym_ele_st_x  = Tree_v.make_of_node sym_ele_ebc [sym_ele_efu_f];;

test_number 12 (
(sym_ele_st_x : Elementary_symbol_t.elementary_symbol Tree_t.tree ) =
Tree_t.Inner
  (Elementary_symbol_t.Elementary_border_symbol
     (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
	(Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
           (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
              (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol
		 (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
		    "S_C"))))),
   [Tree_t.Leaf
      (Elementary_symbol_t.Elementary_fence_symbol
	 (Elementary_fence_symbol_t.Elementary_fence_units_symbol
            (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
               Elementary_fence_units_actual_length_symbol_t.Angstrom)))])
);;

(* Translation of Inner node *)

let (sym_db1, soi_db1) = tag_db1_dsf;;

let nam_ver = Db1figure_symbol_v.string_off sym_db1;;

test_number 13 (
(nam_ver : string ) = 
"S_C"
);;

let sym_ele_ect = 
  Elementary_symbol_from_db1figure_tag_translations_v.elementary_as_body_coordinate_tuple_symbol_of_db1figure_coordinates_kind_of_db1figure_as_body_sequence_float_symbol 
    sym_dck 
    sym_db1;;

test_number 14 (
(sym_ele_ect : Elementary_symbol_t.elementary_symbol ) =
  Elementary_symbol_t.Elementary_body_symbol
   (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
     (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
       (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol
         (Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_t.Elementary_body_coordinate_tuple_homogeneous_cartesian_constructor
           "S_C"))))
);;

let tag_ele_st_fake = Tree_v.make_of_node sym_ele_ect [sym_ele_st_x];;

test_number 15 (
(tag_ele_st_fake : Elementary_symbol_t.elementary_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol
           (Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_t.Elementary_body_coordinate_tuple_homogeneous_cartesian_constructor
             "S_C")))),
   [Tree_t.Inner
     (Elementary_symbol_t.Elementary_border_symbol
       (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
         (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
           (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
             (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol
               (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
                 "S_C"))))),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_fence_symbol
         (Elementary_fence_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Angstrom)))])])
);;

let tag_ele_st = translate tag_db1_dsf_st;;

test_number 16 (
(tag_ele_st : Elementary_symbol_t.elementary_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol
           (Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_t.Elementary_body_coordinate_tuple_homogeneous_cartesian_constructor
             "S_C")))),
   [Tree_t.Inner
     (Elementary_symbol_t.Elementary_border_symbol
       (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
         (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
           (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
             (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol
               (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
                 "S_C"))))),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_fence_symbol
         (Elementary_fence_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Angstrom)))]);
    Tree_t.Inner
     (Elementary_symbol_t.Elementary_border_symbol
       (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
         (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
           (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
             (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_symbol
               (Elementary_border_coordinate_homogeneous_cartesian_y_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_constructor
                 "S_C"))))),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_fence_symbol
         (Elementary_fence_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Angstrom)))]);
    Tree_t.Inner
     (Elementary_symbol_t.Elementary_border_symbol
       (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
         (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
           (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
             (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_symbol
               (Elementary_border_coordinate_homogeneous_cartesian_z_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_constructor
                 "S_C"))))),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_fence_symbol
         (Elementary_fence_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Angstrom)))])])
);;

