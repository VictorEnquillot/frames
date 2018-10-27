open Make_test_v;;

testing "Figure_tag_all_list_by_figure_database_tag_provider_v with
    Figure_tag_all_list_by_figure_database_tag_provider_u_any.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;









(* Tracing *)

Parameters_general_register_v.store_force  "trace-build" "false";;
Parameters_general_register_v.store_force  "trace-store" "false";;
Parameters_general_register_v.store_force  "trace-translate" "false";;
Parameters_general_register_v.store_force  "trace-provide" "false";;
Parameters_general_register_v.store_force  "trace-extract" "false";;

(* toplevel 
   #use "Figure_tag_all_list_by_figure_database_tag_provider_u_any.ml";;

*)

let nam_dom = "figure";;
let sof_dom = "";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_string_of_sole_index_up nam_dom sof_dom [];;
let tag_fdo = Figure_domain_tag_from_domain_tag_translator_v.translate tag_dom;;

test_number 1 (
tag_fdo 
(* : Figure_domain_symbol_t.figure_domain_symbol Tag_t.tag *)
=
  (Figure_domain_symbol_t.Figure_domain_constructor, [6])
);;

let nam_dba = "db1";;
let tag_fig_dda = Figure_as_database_tag_by_database_name_provider_v.provide nam_dba;;

let nam_dom = "database";;
let sof_dom = "db1";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_string_of_sole_index_up nam_dom sof_dom [];;
let tag_ddo = Database_db1_domain_tag_from_domain_tag_translator_v.translate tag_dom;;

test_number 2 (
tag_ddo 
(* : Database_db1_domain_symbol_t.database_db1_domain_symbol Tag_t.tag *)
=
  (Database_db1_domain_symbol_t.Database_db1_domain_constructor, [3])
);;

let tag_dd1_l = Database_db1_tag_all_list_by_database_db1_domain_tag_provider_v.provide tag_ddo;;

let tag_dd1_db1 = List.find (fun t -> Database_db1_symbol_v.is_database_db1_database_symbol_off_database_db1_symbol (Tag_v.entity_off_tag t)) tag_dd1_l;;

let tag_d1d = Tag_v.map_entity Database_db1_symbol_v.database_db1_database_symbol_off_database_db1_symbol tag_dd1_db1;;

test_number 3 (
tag_d1d
(* : Database_db1_database_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1",
   [1; 3])
);;

let sym_fig_db1 = Figure_symbol_from_database_db1_tag_translator_v.translate tag_dd1_db1;;
let soi_d1d = Tag_v.sole_index_off_tag tag_d1d;;
let sym_fdb = Figure_symbol_v.figure_database_symbol_off_figure_symbol sym_fig_db1;;
let tag_fdb = Tag_v.make sym_fdb soi_d1d;;

  let sof_fdb = Figure_database_tag_v.string_off tag_fdb;;
  let soi_fdb = Tag_v.sole_index_off_tag tag_fdb;;
  let sym_d1d = Database_db1_database_symbol_v.database_db1_database_constructor sof_fdb;;
  let tag_d1d = Tag_v.make sym_d1d soi_fdb;;

let tag_dd1_t = Database_db1_tag_subtree_by_database_db1_database_tag_provider_v.provide tag_d1d;;

let sym_fig_st = Figure_symbol_subtree_by_database_db1_database_tag_provider_v.provide tag_d1d;;

let tag_fig_t = Figure_tag_tree_by_figure_database_tag_provider_v.provide tag_fdb;;

let tag_fig_l = Figure_tag_all_list_by_figure_database_tag_provider_v.provide tag_fdb;;

test_number 4 (
 tag_fig_l
(* : Figure_tag_t.figure_tag list *)
=
  [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_domain_symbol
       Figure_domain_symbol_t.Figure_domain_constructor),
    [6]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_database_symbol
       (Figure_database_symbol_t.Figure_database_constructor "db1")),
    [1; 6]);
   (Figure_symbol_t.Figure_field_body_symbol
     (Figure_field_body_symbol_t.Figure_triangle_symbol
       (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
         (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
           "T"))),
    [1; 1; 6]);
   (Figure_symbol_t.Figure_builder_symbol
     (Figure_builder_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "T_A")),
    [1; 1; 1; 6]);
   (Figure_symbol_t.Figure_builder_symbol
     (Figure_builder_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "T_B")),
    [2; 1; 1; 6]);
   (Figure_symbol_t.Figure_builder_symbol
     (Figure_builder_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "T_C")),
    [3; 1; 1; 6]);
   (Figure_symbol_t.Figure_field_body_symbol
     (Figure_field_body_symbol_t.Figure_triangle_symbol
       (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
         (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_obtuse
           "V"))),
    [2; 1; 6]);
   (Figure_symbol_t.Figure_builder_symbol
     (Figure_builder_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "V_A")),
    [1; 2; 1; 6]);
   (Figure_symbol_t.Figure_builder_symbol
     (Figure_builder_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "V_B")),
    [2; 2; 1; 6]);
   (Figure_symbol_t.Figure_builder_symbol
     (Figure_builder_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "V_C")),
    [3; 2; 1; 6]);
   (Figure_symbol_t.Figure_field_body_symbol
     (Figure_field_body_symbol_t.Figure_triangle_symbol
       (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
         (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_right
           "U"))),
    [3; 1; 6]);
   (Figure_symbol_t.Figure_builder_symbol
     (Figure_builder_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "U_A")),
    [1; 3; 1; 6]);
   (Figure_symbol_t.Figure_builder_symbol
     (Figure_builder_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "U_B")),
    [2; 3; 1; 6]);
   (Figure_symbol_t.Figure_builder_symbol
     (Figure_builder_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "U_C")),
    [3; 3; 1; 6]);
   (Figure_symbol_t.Figure_field_body_symbol
     (Figure_field_body_symbol_t.Figure_segment_symbol
       (Figure_segment_symbol_t.Figure_segment_constructor "BC")),
    [4; 1; 6]);
   (Figure_symbol_t.Figure_builder_symbol
     (Figure_builder_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "BC_B")),
    [1; 4; 1; 6]);
   (Figure_symbol_t.Figure_builder_symbol
     (Figure_builder_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "BC_C")),
    [2; 4; 1; 6]);
   (Figure_symbol_t.Figure_builder_symbol
     (Figure_builder_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "A_A")),
    [5; 1; 6])]
);;

