open Make_test_v;;

testing "Database_db1_tag_subtree_by_database_db1_component_tag_provider_v
   Database_db1_symbol_subtree_by_database_db1_component_tag_provider_u_any.ml";;

(* toplevel 
   #use "Database_db1_symbol_subtree_by_database_db1_component_tag_provider_u_any.ml";;

*)



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

(* From ../common *)
let ndi_ldb_l = Database_fullnameofdirectory_list_by_unit_provider_v.provide tag_dom;;

test_number 2 (
ndi_ldb_l 
(* : String.t list *)
=
  ["/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/db1";
   "/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/db2"]
);;

let sym_eld = Database_db1_database_symbol_v.make "database_db1_database_constructor" "db1";;
let tag_eld = Tag_v.make sym_eld [1; 3];; (* defined in DFIG *)

test_number 3 (
 tag_eld 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor
    "db1",
   [1; 3])
);;

(* Full Builder-Tree *)

let sym_den_t = Database_db1_symbol_subtree_by_database_db1_database_tag_provider_v.provide tag_eld;;

(* Root node *)

let sym_den_roo = Tree_v.root_node_off_tree sym_den_t;;

test_number 4 (
sym_den_roo 
(* : Database_db1_symbol_t.database_db1_symbol *)
=
  Database_db1_symbol_t.Database_db1_database_symbol
   (Database_db1_database_symbol_t.Database_db1_database_constructor
     "db1")
);;

(* Root Topson nodes *)

let sym_den_l = Tree_v.topson_node_list_off_tree sym_den_t;;

test_number 5 (
sym_den_l 
(* : Database_db1_symbol_t.database_db1_symbol *)
=
  [Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
      (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
        "T"));
   Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
      (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
        "V"));
   Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
      (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
        "U"));
   Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
      (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
        "BC"));
   Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
      (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
        "A"))]
);;

(* Triangle T Builder-Tree *)

let tag_dec = (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
          (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
             "T"),
	       [1; 1; 3]);;

let sym_den_st = Database_db1_tag_subtree_by_database_db1_component_tag_provider_v.provide tag_dec;;

test_number 6 (
sym_den_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
 Tree_t.Inner
   (Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
       (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
         "T")),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
         (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
           "nanometer")));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
         (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
           "cartesian")));
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_A")),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.100000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "2.000000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "-2.000000"))]);
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_B")),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "-2.000000"))]);
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_C")),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "2.000000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "-2.000000"))])])
);;

(* Triangle V Builder-Tree *)

let sym_den = Database_db1_symbol_t.Database_db1_component_symbol
        (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
          (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
            "V"));;

let sym_den_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> t = sym_den) sym_den_t;; 
test_number 7 (
sym_den_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   (Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
       (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
         "V")),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
         (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
           "nanometer")));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
         (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
           "cartesian")));
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "V_A")),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.100000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.500000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "-2.000000"))]);
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "V_B")),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "-2.000000"))]);
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "V_C")),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "2.000000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "-2.000000"))])])
);;


(* Segment BC Builder-Tree *)

let sym_den = Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
      (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
        "BC"));;

let sym_den_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> t = sym_den) sym_den_t;; 

test_number 8 (
sym_den_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   (Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
       (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
         "BC")),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
         (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
           "angstrom")));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_angle_symbol
         (Database_db1_element_coordinates_units_angle_symbol_t.Database_db1_element_coordinates_units_angle_constructor
           "radian")));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
         (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
           "cylindrical")));
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "BC_B")),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "4.000000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.100000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "-0.100000"))]);
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "BC_C")),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.100000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "4.000000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "-0.100000"))])])
);;

(* Vertex A Builder-Tree *)

let sym_den = Database_db1_symbol_t.Database_db1_component_symbol
        (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
          (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
            "A"));;

let sym_den_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> t = sym_den) sym_den_t;; 

test_number 9 (
sym_den_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   (Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
       (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
         "A")),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
         (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
           "meter")));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_angle_symbol
         (Database_db1_element_coordinates_units_angle_symbol_t.Database_db1_element_coordinates_units_angle_constructor
           "degree")));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
         (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
           "spherical")));
    Tree_t.Inner
     (Database_db1_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "A_A")),
     [Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "2.000000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "0.000000"));
      Tree_t.Leaf
       (Database_db1_symbol_t.Database_db1_float_symbol
         (Database_db1_float_symbol_t.Database_db1_float_constructor "-0.100000"))])])
);;

(* Vertex T_A Builder-Tree *)

let sym_den = Database_db1_symbol_t.Database_db1_element_symbol
          (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
            (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
              "T_A"));;

let sym_den_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> t = sym_den) sym_den_t;; 

test_number 10 (
 sym_den_st 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag Tree_t.tree *)
  =
  Tree_t.Inner
   (Database_db1_symbol_t.Database_db1_element_symbol
     (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
       (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
         "T_A")),
   [Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_float_symbol
       (Database_db1_float_symbol_t.Database_db1_float_constructor "0.100000"));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_float_symbol
       (Database_db1_float_symbol_t.Database_db1_float_constructor "2.000000"));
    Tree_t.Leaf
     (Database_db1_symbol_t.Database_db1_float_symbol
       (Database_db1_float_symbol_t.Database_db1_float_constructor "-2.000000"))])
);;

(* Triangle V Builder-Tree *)

let sym_den = Database_db1_symbol_t.Database_db1_component_symbol
        (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
          (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
            "V"));;

let sym_den_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> t = sym_den) sym_den_t;; 
let wha_coo = 
    Tree_v.node_find_of_node_predicate_off_tree
      Database_db1_symbol_v.is_database_db1_element_coordinates_kind_constructor 
      sym_den_st;;

test_number 11 (
 wha_coo 
(* : Database_db1_symbol_t.database_db1_symbol *)
=
  Database_db1_symbol_t.Database_db1_element_symbol
   (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
     (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
       "cartesian"))
);;
