open Make_test_v;;

testing "Property_unit_envelope_v with
    Property_unit_envelope_u_coordinate_tuple_print.ml";;

(* Deleting Registers *)















(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Property_unit_envelope_u_coordinate_tuple_print.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_coordinate_tuple_point_t_a.inp";;
let dir_inp ="/home/colonna/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_ibo;;
Parameters_general_register_v.store "input-file" fno_inp;;

let tag_loi_t = Input_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

let soi_dom = Domain_tag_v.domain_sole_index_of_domain_name_of_string_of_sole_index_up "operator" "" [];;

test_number 1 (
(soi_dom :Sole_index_t.sole_index ) = 
[12]
);;

open Property_unit_envelope_v;;

let tag_ope_t = Property_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 2 (
(tag_ope_t : Property_symbol_t.operator_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_context_symbol
      (Property_context_symbol_t.Property_domain "operator"),
     [12]),
   [Tree_t.Inner
     ((Property_symbol_t.Property_context_symbol
        (Property_context_symbol_t.Property_input_file
          "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_coordinate_tuple_point_t_a.inp"),
       [3; 12]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_body_symbol
          (Property_body_symbol_t.Property_unit_symbol
            (Property_unit_symbol_t.Property_print "Ctc_a")),
         [1; 3; 12]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_cofactor_symbol
             (Property_cofactor_symbol_t.Property_cofactor_elementary
               "elementary_units_length_meter")),
          [1; 1; 3; 12])])])])
);;

let tag_ope_l = Property_tag_list_by_input_fullnameoffile_provider_v.provide fno_inp;;
let tag_ope_fat = List.find (fun (s, i) -> Property_symbol_v.is_operator_print s) tag_ope_l;;

test_number 3 (
(tag_ope_fat : Property_symbol_t.operator_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_unit_symbol
      (Property_unit_symbol_t.Property_print "Ctc_a")),
   [1; 3; 12])
);;

let tag_oun = Tag_v.map_entity Property_symbol_v.operator_tounit_symbol_off_operator_symbol tag_ope_fat;;

test_number 4 (
( tag_oun : Property_unit_symbol_t.operator_tounit_symbol Tag_t.tag ) =
  (Property_unit_symbol_t.Property_print "Ctc_a", [1; 3; 12])
);;

let tag_ope_son_l =
    Property_any_category_by_sole_index_extractor_v.son_operator_tag_list_of_string_predicate_of_father_tag 
      "is_operator_cofactor_elementary"
      tag_ope_fat ;;

test_number 5 (
(tag_ope_son_l :
  (Property_symbol_t.operator_symbol, Sole_index_t.sole_index)
  Doublet_list_t.doublet_list ) =
  [(Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_cofactor_symbol
       (Property_cofactor_symbol_t.Property_cofactor_elementary
         "elementary_units_length_meter")),
    [1; 1; 3; 12])]
);;

(* let con_oun = Property_unit_envelope_v.retrieve tag_oun ;; *)
