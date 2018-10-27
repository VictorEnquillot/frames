open Make_test_v;;

testing "Cartesian_float_list_list_by_database_db1_component_tag_provider_v
   Cartesian_float_list_list_by_database_db1_component_tag_provider_u_any.ml";;

(* toplevel 
   #use "Cartesian_float_list_list_by_database_db1_component_tag_provider_u_any.ml";;

*)

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

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
  =
(Domain_symbol_t.Figure, [3])
);;

let tag_eld = Database_db1_database_tag_by_domain_tag_provider_v.provide tag_dom;;

test_number 2 (
 tag_eld 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor
    "db1",
   [1; 3])
);;

(* Full Builder-Tree *)

let tag_den_t = Database_db1_tag_subtree_by_database_db1_database_tag_provider_v.provide tag_eld;;

(* Root node *)

let tag_den_roo = Tree_v.root_node_off_tree tag_den_t;;

test_number 3 (
tag_den_roo 
(* : Database_db1_symbol_t.database_db1_symbol *)
=
  (Database_db1_symbol_t.Database_db1_database_symbol
    (Database_db1_database_symbol_t.Database_db1_database_constructor
      "db1"),
   [1; 3])
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

let flo_car_ll = Cartesian_float_list_list_by_database_db1_component_tag_provider_v.provide tag_dec;;

test_number 5 (
flo_car_ll
(* : float list list *)
= 
[[0.1; 0.2; -0.2]; [0.; 0.; -0.2]; [0.2; 0.; -0.2]]
);;

(* Triangle V Builder-Tree *)

let tag_dec =
        (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
          (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
            "V"),
       [2; 1; 3]);;

let flo_car_ll = Cartesian_float_list_list_by_database_db1_component_tag_provider_v.provide tag_dec;;

test_number 6 (
flo_car_ll
(* : string *)
=
[[1.; 0.5; -2.]; [0.; 0.; -2.]; [2.; 0.; -2.]]
);;

(* Triangle U Builder-Tree *)

let tag_dec =
        (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
          (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
            "U"),
       [3; 1; 3]);;

let flo_car_ll = Cartesian_float_list_list_by_database_db1_component_tag_provider_v.provide tag_dec;;

test_number 7 (
flo_car_ll
(* : float list list *)
=
[[0.; 0.; -3.]; [0.; 1.; -3.]; [1.; 0.; -3.]]
);;


(* Segment BC Builder-Tree *)

let tag_dec =
     (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
       (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
         "BC"),
    [4; 1; 3]);;

let flo_car_ll = Cartesian_float_list_list_by_database_db1_component_tag_provider_v.provide tag_dec;;

test_number 8 (
flo_car_ll
(* : float list list *)
=
 [
  [1.; 0.; 0.]; 
  [6.12303176911188629e-17; 1.; 1.]]
);;

(* Vertex A Builder-Tree *)

let tag_dec =
  (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
     (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
        "A"),
   [5; 1; 3]);;

let flo_car_ll = Cartesian_float_list_list_by_database_db1_component_tag_provider_v.provide tag_dec;;

test_number 9 (
flo_car_ll
(* : float list list *)
=
  [[0.499999999999973299; 0.499999836602551651; 0.707106896725981815]]
);;

