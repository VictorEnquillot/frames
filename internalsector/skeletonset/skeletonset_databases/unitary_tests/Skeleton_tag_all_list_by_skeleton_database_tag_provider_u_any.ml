open Make_test_v;;

testing "Skeleton_tag_all_list_by_skeleton_database_tag_provider_v with
    Skeleton_tag_all_list_by_skeleton_database_tag_provider_u_any.ml";;

(* Deleting Registers *)










(* Tracing *)


(* toplevel 
   #use "Skeleton_tag_all_list_by_skeleton_database_tag_provider_u_any.ml";;

*)

let nam_dom = "skeleton";;
let sof_dom = "";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_string_of_sole_index_up nam_dom sof_dom [];;
let tag_fdo = Skeleton_domain_tag_from_domain_tag_translator_v.translate tag_dom;;

test_number 1 (
tag_fdo 
(* : Skeleton_domain_symbol_t.skeleton_domain_symbol Tag_t.tag *)
=
  (Skeleton_domain_symbol_t.Skeleton_domain_constructor, [6])
);;

let nam_dba = "db1";;
let tag_fig_dda = Skeleton_as_database_tag_by_database_name_provider_v.provide nam_dba;;

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

let sym_fig_db1 = Skeleton_symbol_from_database_db1_tag_translator_v.translate tag_dd1_db1;;
let soi_d1d = Tag_v.sole_index_off_tag tag_d1d;;
let sym_fdb = Skeleton_symbol_v.skeleton_database_symbol_off_skeleton_symbol sym_fig_db1;;
let tag_fdb = Tag_v.make sym_fdb soi_d1d;;

  let sof_fdb = Skeleton_database_tag_v.string_off tag_fdb;;
  let soi_fdb = Tag_v.sole_index_off_tag tag_fdb;;
  let sym_d1d = Database_db1_database_symbol_v.database_db1_database_constructor sof_fdb;;
  let tag_d1d = Tag_v.make sym_d1d soi_fdb;;

let tag_dd1_t = Database_db1_tag_subtree_by_database_db1_database_tag_provider_v.provide tag_d1d;;

let sym_fig_st = Skeleton_symbol_subtree_by_database_db1_database_tag_provider_v.provide tag_d1d;;

let tag_fig_t = Skeleton_tag_tree_by_skeleton_database_tag_provider_v.provide tag_fdb;;

let tag_fig_l = Skeleton_tag_all_list_by_skeleton_database_tag_provider_v.provide tag_fdb;;

test_number 4 (
 tag_fig_l
(* : Skeleton_tag_t.skeleton_tag list *)
=
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_domain_symbol
       Skeleton_domain_symbol_t.Skeleton_domain_constructor),
    [6]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_database_symbol
       (Skeleton_database_symbol_t.Skeleton_database_constructor "db1")),
    [1; 6]);
   (Skeleton_symbol_t.Skeleton_field_body_symbol
     (Skeleton_field_body_symbol_t.Skeleton_triangle_symbol
       (Skeleton_triangle_symbol_t.Skeleton_triangle_isosceles_symbol
         (Skeleton_triangle_isosceles_symbol_t.Skeleton_triangle_isosceles_acute
           "T"))),
    [1; 1; 6]);
   (Skeleton_symbol_t.Skeleton_builder_symbol
     (Skeleton_builder_symbol_t.Skeleton_point_symbol
       (Skeleton_point_symbol_t.Skeleton_point_constructor "T_A")),
    [1; 1; 1; 6]);
   (Skeleton_symbol_t.Skeleton_builder_symbol
     (Skeleton_builder_symbol_t.Skeleton_point_symbol
       (Skeleton_point_symbol_t.Skeleton_point_constructor "T_B")),
    [2; 1; 1; 6]);
   (Skeleton_symbol_t.Skeleton_builder_symbol
     (Skeleton_builder_symbol_t.Skeleton_point_symbol
       (Skeleton_point_symbol_t.Skeleton_point_constructor "T_C")),
    [3; 1; 1; 6]);
   (Skeleton_symbol_t.Skeleton_field_body_symbol
     (Skeleton_field_body_symbol_t.Skeleton_triangle_symbol
       (Skeleton_triangle_symbol_t.Skeleton_triangle_isosceles_symbol
         (Skeleton_triangle_isosceles_symbol_t.Skeleton_triangle_isosceles_obtuse
           "V"))),
    [2; 1; 6]);
   (Skeleton_symbol_t.Skeleton_builder_symbol
     (Skeleton_builder_symbol_t.Skeleton_point_symbol
       (Skeleton_point_symbol_t.Skeleton_point_constructor "V_A")),
    [1; 2; 1; 6]);
   (Skeleton_symbol_t.Skeleton_builder_symbol
     (Skeleton_builder_symbol_t.Skeleton_point_symbol
       (Skeleton_point_symbol_t.Skeleton_point_constructor "V_B")),
    [2; 2; 1; 6]);
   (Skeleton_symbol_t.Skeleton_builder_symbol
     (Skeleton_builder_symbol_t.Skeleton_point_symbol
       (Skeleton_point_symbol_t.Skeleton_point_constructor "V_C")),
    [3; 2; 1; 6]);
   (Skeleton_symbol_t.Skeleton_field_body_symbol
     (Skeleton_field_body_symbol_t.Skeleton_triangle_symbol
       (Skeleton_triangle_symbol_t.Skeleton_triangle_isosceles_symbol
         (Skeleton_triangle_isosceles_symbol_t.Skeleton_triangle_isosceles_right
           "U"))),
    [3; 1; 6]);
   (Skeleton_symbol_t.Skeleton_builder_symbol
     (Skeleton_builder_symbol_t.Skeleton_point_symbol
       (Skeleton_point_symbol_t.Skeleton_point_constructor "U_A")),
    [1; 3; 1; 6]);
   (Skeleton_symbol_t.Skeleton_builder_symbol
     (Skeleton_builder_symbol_t.Skeleton_point_symbol
       (Skeleton_point_symbol_t.Skeleton_point_constructor "U_B")),
    [2; 3; 1; 6]);
   (Skeleton_symbol_t.Skeleton_builder_symbol
     (Skeleton_builder_symbol_t.Skeleton_point_symbol
       (Skeleton_point_symbol_t.Skeleton_point_constructor "U_C")),
    [3; 3; 1; 6]);
   (Skeleton_symbol_t.Skeleton_field_body_symbol
     (Skeleton_field_body_symbol_t.Skeleton_cc_pvtzymbol
       (Skeleton_cc_pvtzymbol_t.Skeleton_segment_constructor "BC")),
    [4; 1; 6]);
   (Skeleton_symbol_t.Skeleton_builder_symbol
     (Skeleton_builder_symbol_t.Skeleton_point_symbol
       (Skeleton_point_symbol_t.Skeleton_point_constructor "BC_B")),
    [1; 4; 1; 6]);
   (Skeleton_symbol_t.Skeleton_builder_symbol
     (Skeleton_builder_symbol_t.Skeleton_point_symbol
       (Skeleton_point_symbol_t.Skeleton_point_constructor "BC_C")),
    [2; 4; 1; 6]);
   (Skeleton_symbol_t.Skeleton_builder_symbol
     (Skeleton_builder_symbol_t.Skeleton_point_symbol
       (Skeleton_point_symbol_t.Skeleton_point_constructor "A_A")),
    [5; 1; 6])]
);;

