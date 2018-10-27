open Make_test_v;;

testing "Coordinate_set_fence_heterogeneous_spherical_container_v with
    Coordinate_set_fence_heterogeneous_spherical_container_u_point_a.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Coordinate_set_fence_heterogeneous_spherical_container_u_point_a.ml";;

*)

open Coordinate_set_fence_heterogeneous_spherical_container_v;; 
     
let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let tag_coo_l = Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba) ;;

let pre_tag_rho_sof sof (s, i) = 
  (Coordinate_symbol_v.coordinate_set_fence_heterogeneous_spherical_rho_constructor sof = s)
;;
 
let sof_coo_rho = "A_A";;

let tag_coo_rho = List_v.only_element_of_predicate_off_list (pre_tag_rho_sof sof_coo_rho) tag_coo_l;;

test_number 1 (
(tag_coo_rho : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
        (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
          (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
            (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
              "A_A"))))),
   [1; 1; 10; 1; 6; 5])
);;

(* Argument *)

let tag_cst = Tag_v.map_entity Coordinate_symbol_v.coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_symbol tag_coo_rho;;

test_number 2 (  
( tag_cst :
  Coordinate_set_fence_heterogeneous_spherical_symbol_t.coordinate_set_fence_heterogeneous_spherical_symbol
  Tag_t.tag) =
  (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
    (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
      "A_A"),
   [1; 1; 10; 1; 6; 5])
);;

(** {6 Coercing Up Tag} *)

let tag_coo = tag_coo_rho;;

test_number 3 (
tag_coo = coerce_up_tag tag_cst
);;

(** {6 Coercing Down Tag} *)

let tag_chs = coerce_down_tag tag_coo;;

test_number 4 (
(tag_chs :
  Coordinate_set_fence_heterogeneous_spherical_symbol_t.coordinate_set_fence_heterogeneous_spherical_symbol
  Tag_t.tag ) =
  (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
    (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
      "A_A"),
   [1; 1; 10; 1; 6; 5])
);;

(** {6 Builder Tag} *)

let tag_bui = builder_tag_of_tag tag_cst;;

test_number 5 (
(tag_bui : Coordinate_symbol_t.coordinate_symbol Tag_t.tag )=
  (Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
        (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
          (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
            (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
              "A_A"))))),
   [1; 1; 10; 1; 6; 5])
);;

test_number 6 (
tag_coo = builder_tag_of_tag tag_cst
);;

(** {6 Builder Tag list} *)

let tag_bui_l = builder_tag_list_of_tag tag_cst;;

test_number 7 (
(tag_bui_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
           (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
             (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
               "A_A"))))),
    [1; 1; 10; 1; 6; 5])]
);;

(** {6 Builder Tag Datastructure} *)

let tag_bui = builder_tag_uno_of_tag tag_cst;;

test_number 8 (
(tag_bui : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Uno_t.uno ) =
 (Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
        (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
          (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
            (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
              "A_A"))))),
   [1; 1; 10; 1; 6; 5])
);;

(** {6 Building as Builder Tag uno} *)

let bug_cst = building_of_tag tag_cst;;

test_number 9 (
(bug_cst : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Uno_t.uno ) =
  (Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
        (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
          (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
            (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
              "A_A"))))),
   [1; 1; 10; 1; 6; 5])
);;

(** {6 Builder Tag tuple} *)

let tag_bui_t = builder_tag_tuple_of_tag tag_cst;;

test_number 10 (
(tag_bui_t :
   Coordinate_symbol_t.coordinate_symbol Tag_t.tag Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
           (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
             (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
               "A_A"))))),
    [1; 1; 10; 1; 6; 5])
);;

(** {6 Coercing Down Builder Tag to Containee Tag} *)

let tag_cne = containee_tag_off_builder_tag tag_bui;;

test_number 11 (
(tag_cne :
  Coordinate_set_fence_heterogeneous_spherical_symbol_t.coordinate_set_fence_heterogeneous_spherical_symbol
  Tag_t.tag ) =
  (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
    (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
      "A_A"),
   [1; 1; 10; 1; 6; 5])
);;

(** {6 Coercing Up Containee Tag} *)

let tag_bui = builder_tag_of_tag tag_cne;;

test_number 12 (
(tag_bui : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
 (Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
        (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
          (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
            (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
              "A_A"))))),
   [1; 1; 10; 1; 6; 5])
);;

(** {6 Container_of_tag : Pattern Matching} *)

let con_cst = container_of_tag tag_cst;;

test_number 13 (
(con_cst :
  Coordinate_set_fence_heterogeneous_spherical_container_t.coordinate_set_fence_heterogeneous_spherical_container ) =
  Coordinate_set_fence_heterogeneous_spherical_container_t.Coordinate_set_fence_heterogeneous_spherical_rho_container
   (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
     "A_A",
    [1; 1; 10; 1; 6; 5])
);;

(** {6 Coercing Down Builder Tag to Containee Tag} *)

let cne_cst = containee_tag_off_builder_tag tag_bui;;

test_number 14 (
(cne_cst :
  Coordinate_set_fence_heterogeneous_spherical_symbol_t.coordinate_set_fence_heterogeneous_spherical_symbol
  Tag_t.tag ) =
  (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
    (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
      "A_A"),
   [1; 1; 10; 1; 6; 5])
);;

(** {6 Container_of_tag : Containee Datastructure} *)

test_number 15 (
bug_cst = builder_tag_uno_of_tag tag_cst
);;

(** {6 Containee Tag Datastructures} *)

let tag_con_u = containee_tag_uno_of_tag tag_cst;;

test_number 16 (
(tag_con_u : Coordinate_set_fence_heterogeneous_spherical_container_t.coordinate_set_fence_heterogeneous_spherical_container) =
Coordinate_set_fence_heterogeneous_spherical_container_t.Coordinate_set_fence_heterogeneous_spherical_rho_container
 (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
   "A_A",
  [1; 1; 10; 1; 6; 5])

);;

let tag_cne_t = containee_tag_tuple_of_tag tag_cst;;

test_number 17 (
( tag_cne_t :
    Coordinate_set_fence_heterogeneous_spherical_container_t.coordinate_set_fence_heterogeneous_spherical_container
    Tuple_t.tuple ) =
Tuple_t.Uno
  (Coordinate_set_fence_heterogeneous_spherical_container_t.Coordinate_set_fence_heterogeneous_spherical_rho_container
     (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
	"A_A",
      [1; 1; 10; 1; 6; 5]))
);;

(** {6 Fence *)

let fen_cst_l = fence_as_list_of_tag tag_cst;;

test_number 18 (
(fen_cst_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
           (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
             (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
               "A_A"))))),
    [1; 1; 10; 1; 6; 5])]
);;

let fen_cst_u = fence_as_uno_of_tag tag_cst;;

test_number 19 (
(fen_cst_u : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Uno_t.uno ) =
  (Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
        (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
          (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
            (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
              "A_A"))))),
   [1; 1; 10; 1; 6; 5])
);;

let fen_cst_t = fence_as_tuple_of_tag tag_cst;;

test_number 20 (
( fen_cst_t : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Uno
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
           (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
             (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
               "A_A"))))),
    [1; 1; 10; 1; 6; 5])
);;

let fen_cst_tl = fence_as_tuple_list_of_tag tag_cst;;

test_number 21 (
(fen_cst_tl :
  Coordinate_symbol_t.coordinate_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (Coordinate_symbol_t.Coordinate_set_symbol
      (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
        (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
          (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
            (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
              (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
                "A_A"))))),
     [1; 1; 10; 1; 6; 5])]
);;

