open Make_test_v;;

testing "Component_what_by_database_db1_component_tag_provider_v
   Component_what_by_database_db1_component_tag_provider_u_any.ml";;


(* Deleting Registers *)
Register_v.delete  Common_symbol_by_sole_index_register_v.register;;
Register_v.delete  Component_filename_list_by_database_db1_database_tag_register_v.register;;
Register_v.delete  Database_db1_content_list_list_by_database_db1_database_tag_register_v.register;;
Register_v.delete  Database_db1_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Database_db1_database_tag_by_domain_tag_register_v.register;;
Register_v.delete  Database_db1_symbol_by_sole_index_register_v.register;;
Register_v.delete  Database_db1_symbol_tree_by_database_db1_tag_register_v.register;;
Register_v.delete  Database_db1_tag_all_list_by_database_db1_domain_tag_register_v.register;;
Register_v.delete  Database_db1_tag_closure_by_database_db1_tag_register_v.register;;
Register_v.delete  Database_db1_tag_n_value_float_closure_by_database_db1_tag_register_v.register;;
Register_v.delete  Database_db1_tag_tree_by_database_db1_database_tag_register_v.register;;
Register_v.delete  Database_db1_tag_tree_by_database_db1_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Son_database_db1_tag_list_by_father_database_db1_tag_register_v.register;;
Register_v.delete  String_by_database_db1_component_tag_register_v.register;;
Register_v.delete  String_by_database_db1_database_tag_register_v.register;;
Register_v.delete  String_list_by_database_db1_tag_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Component_what_by_database_db1_component_tag_provider_u_any.ml";;

*)

let nam_dom = "database";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

let sym_dom = Domain_symbol_v.make nam_dom;;
let ind_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;

let sym_den_dom = Database_db1_symbol_v.database_db1_domain_constructor nam_dom;;
let tag_den_dom = Tag_v.make sym_den_dom soi_dom;;
let tag_ddo = Tag_v.map_entity Database_db1_symbol_v.database_db1_domain_symbol_off_database_db1_symbol tag_den_dom;;

test_number 1 (
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
  =
  (Domain_symbol_t.Database, [2])
);;

let tag_d1d = Database_db1_database_tag_by_domain_tag_provider_v.provide tag_dom;;

test_number 2 (
 tag_d1d 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor
    "db1",
   [1; 2])
);;

(* Full Builder-Tree *)

let tag_den_t = Database_db1_tag_subtree_by_database_db1_database_tag_provider_v.provide tag_d1d;;

(* Root node *)

let tag_den_roo = Tree_v.root_node_off_tree tag_den_t;;

test_number 3 (
tag_den_roo 
(* : Database_db1_symbol_t.database_db1_symbol *)
=
  (Database_db1_symbol_t.Database_db1_context_symbol
    (Database_db1_context_symbol_t.Database_db1_database_symbol
      (Database_db1_database_symbol_t.Database_db1_database_constructor "db1")),
   [1; 2])
);;

(* Root Topson nodes *)

let tag_den_l = Tree_v.topson_node_list_off_tree tag_den_t;;

test_number 4 (
tag_den_l 
(* : Database_db1_symbol_t.database_db1_symbol *)
=
  [(Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
       (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
         "T")),
    [1; 1; 3]);
   (Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
       (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
         "V")),
    [2; 1; 3]);
   (Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
       (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
         "U")),
    [3; 1; 3]);
   (Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
       (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
         "BC")),
    [4; 1; 3]);
   (Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
       (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
         "A")),
    [5; 1; 3])]
);;

(* Triangle T Builder-Tree *)

let tag_dec =
  (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
     (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
        "T"),
       [1; 1; 3]);;

let wha_com = Component_what_by_database_db1_component_tag_provider_v.provide tag_dec;;

test_number 5 (
wha_com
(* : string *)
=
"triangle_isosceles_acute"
);;

(* Triangle V Builder-Tree *)

let tag_dec =
        (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
          (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
            "V"),
       [2; 1; 3]);;

let wha_com = Component_what_by_database_db1_component_tag_provider_v.provide tag_dec;;

test_number 6 (
wha_com
(* : string *)
=
"triangle_isosceles_obtuse"
);;

(* Triangle U Builder-Tree *)

let tag_dec =
        (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
          (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
            "U"),
       [3; 1; 3]);;

let wha_com = Component_what_by_database_db1_component_tag_provider_v.provide tag_dec;;

test_number 7 (
wha_com
(* : string *)
=
"triangle_isosceles_right"
);;

