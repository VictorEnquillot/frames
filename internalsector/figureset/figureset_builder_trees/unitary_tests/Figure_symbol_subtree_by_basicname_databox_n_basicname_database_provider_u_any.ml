open Make_test_v;;

testing "Figure_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v with
    Figure_symbol_subtree_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* coordinates_units_length   angstrom  *)
(* coordinates_units_angle    degree *)
(* coordinates_kind           cylindrical   *)
(* figure_kind segment  *)
(* figure_name BC *)
(* vertex BC_B       1.  0.  0. *)
(* vertex BC_C       1. 90.  1. *)

(* toplevel 
   #use "Figure_symbol_subtree_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)

open Figure_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v;;

let nam_dbo = "segment_BC";;
let nam_dba = "db1points";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_dcb = 
  Db1pointsdata_context_databox_tag_by_basicname_databox_provider_v.provide
    bna_dbo;;

test_number 1 (
(tag_dcb :
   Db1pointsdata_context_databox_symbol_t.db1pointsdata_context_databox_symbol
   Tag_t.tag ) =
(Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
   "segment_BC",
 [18; 1; 7; 2])
);;

let sym_fig_st = 
  Figure_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v.provide
    tag_dcb;;

test_number 2 (
(sym_fig_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_set_symbol
     (Figure_set_symbol_t.Figure_set_body_symbol
       (Figure_set_body_symbol_t.Figure_set_body_segment_symbol
         (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor
           "BC"))),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_set_symbol
       (Figure_set_symbol_t.Figure_set_fence_symbol
         (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
           (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
             "BC_B"))));
    Tree_t.Leaf
     (Figure_symbol_t.Figure_set_symbol
       (Figure_set_symbol_t.Figure_set_fence_symbol
         (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
           (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
             "BC_C"))))])
);;

test_number 3 (
sym_fig_st = provide (bna_dbo, bna_dba)
);;

