open Make_test_v;;

testing "Property_tag_list_by_input_fullnameoffile_provider_v with
    Property_tag_list_by_input_fullnameoffile_provider_u_coordinate_tuple_print.ml";;

(* Deleting Registers *)















(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Property_tag_list_by_input_fullnameoffile_provider_u_coordinate_tuple_print.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_coordinate_tuple_point_t_a";;
let dir_inp ="/home/colonna/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_ibo;;
Parameters_general_register_v.store "input-file" fno_inp;;

let tag_ope_t = Property_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 1 (
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
          (Property_body_symbol_t.Property_tounit_symbol
            (Property_tounit_symbol_t.Property_print "Ctc_a")),
         [1; 3; 12]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_cofactor_symbol
             (Property_cofactor_symbol_t.Property_cofactor_elementary
               "elementary_units_length_meter")),
          [1; 1; 3; 12])])])])

);;

let tag_ope_l = Property_tag_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 2 (
(tag_ope_l : Property_symbol_t.operator_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_domain "operator"),
    [12]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_input_file
       "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_coordinate_tuple_point_t_a.inp"),
    [3; 12]);
   (Property_symbol_t.Property_body_symbol
     (Property_body_symbol_t.Property_tounit_symbol
       (Property_tounit_symbol_t.Property_print "Ctc_a")),
    [1; 3; 12]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_cofactor_symbol
       (Property_cofactor_symbol_t.Property_cofactor_elementary
         "elementary_units_length_meter")),
    [1; 1; 3; 12])]
);;
