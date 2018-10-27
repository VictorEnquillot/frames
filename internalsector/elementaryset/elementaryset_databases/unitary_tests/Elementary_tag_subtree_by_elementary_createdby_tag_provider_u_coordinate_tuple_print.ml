open Make_test_v;;

testing "Elementary_tag_subtree_by_elementary_createdby_tag_provider_v with
   Elementary_tag_subtree_by_elementary_createdby_tag_provider_u_coordinate_tuple_print.ml";;

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
   #use "Elementary_tag_subtree_by_elementary_createdby_tag_provider_u_coordinate_tuple_print.ml";;

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

test_number 2 (
(fno_inp : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Coordinate_tuple_print.inp"
);;


open Elementary_tag_tree_by_input_fullnameoffile_provider_v;;

let sym_ele_ifi_st =  
    elementary_as_input_file_symbol_subtree_of_input_fullnameoffile
      fno_inp;;

test_number 3 (
(sym_ele_ifi_st : Elementary_symbol_t.elementary_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_createdby_symbol
       (Elementary_createdby_symbol_t.Elementary_input_file
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Coordinate_tuple_print.inp")),
   [Tree_t.Leaf
     (Elementary_symbol_t.Elementary_closure_symbol
       (Elementary_closure_symbol_t.Elementary_fence_units_symbol
         (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
           Elementary_fence_units_actual_length_symbol_t.Meter)))])
);;

let soi_ele_ifi =
    elementary_createdby_sole_index_of_input_fullnameoffile
      fno_inp;;

test_number 4 (
(soi_ele_ifi : Sole_index_t.sole_index ) = 
[3; 4]
);;

let soi_ele_ifi_st =
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index
      sym_ele_ifi_st
      soi_ele_ifi;;

test_number 5 (
( soi_ele_ifi_st : Sole_index_t.sole_index Tree_t.tree ) =
  Tree_t.Inner ([3; 4], [Tree_t.Leaf [1; 3; 4]])
);;

let soi_dom = 
    Domain_tag_v.domain_sole_index_of_domain_name_of_string_of_sole_index_up 
      "elementary" "" [];;

test_number 6 (
(soi_dom : Sole_index_t.sole_index ) = 
[4]
);;

let soi_ele_t = elementary_sole_index_tree_of_input_fullnameoffile fno_inp;;

test_number 7 (
(soi_ele_t : Sole_index_t.sole_index Tree_t.tree ) =
  Tree_t.Inner ([4], 
		[Tree_t.Inner ([3; 4], 
			       [Tree_t.Leaf [1; 3; 4]])])
);;
