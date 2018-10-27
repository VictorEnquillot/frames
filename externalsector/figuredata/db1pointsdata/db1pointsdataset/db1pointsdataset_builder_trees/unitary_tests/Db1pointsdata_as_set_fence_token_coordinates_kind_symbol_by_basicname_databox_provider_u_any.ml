open Make_test_v;;

testing "Db1pointsdata_as_set_fence_token_coordinates_kind_symbol_by_basicname_databox_provider_v with
    Db1pointsdata_as_set_fence_token_coordinates_kind_symbol_by_basicname_databox_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Db1pointsdata_as_set_fence_token_coordinates_kind_symbol_by_basicname_databox_provider_u_any.ml";; 

*)

open Db1pointsdata_as_set_fence_token_coordinates_kind_symbol_by_basicname_databox_provider_v;;

let nam_dbo = "Point_a";;

let sym_db1_dci_st = 
    Db1pointsdata_as_set_body_cluster_information_symbol_subtree_by_basicname_databox_provider_v.provide
      nam_dbo ;;

let sym_db1_dci_rtl = Tree_v.root_topson_node_list_off_tree sym_db1_dci_st;;

test_number 1 (
(sym_db1_dci_rtl : Db1pointsdata_symbol_t.db1pointsdata_symbol list ) =
 [Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
      (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_information_symbol
        (Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor
          "A")));
   Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_bundle_symbol
      (Db1pointsdata_set_body_bundle_symbol_t.Db1pointsdata_set_body_bundle_coordinates_symbol
        (Db1pointsdata_set_body_bundle_coordinates_symbol_t.Db1pointsdata_set_body_bundle_coordinates_constructor
          "A")));
   Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_bundle_symbol
      (Db1pointsdata_set_body_bundle_symbol_t.Db1pointsdata_set_body_bundle_figure_symbol
        (Db1pointsdata_set_body_bundle_figure_symbol_t.Db1pointsdata_set_body_bundle_figure_constructor
          "A")))]
);;

let sym_db1_dck =
  Tree_v.only_node_of_node_predicate_off_tree 
    Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_symbol
    sym_db1_dci_st;;

test_number 2 (
(sym_db1_dck : Db1pointsdata_symbol_t.db1pointsdata_symbol ) =
Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
  (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_token_symbol
     (Db1pointsdata_fence_token_symbol_t.Db1pointsdata_fence_token_coordinates_symbol
	(Db1pointsdata_fence_token_coordinates_symbol_t.Db1pointsdata_fence_token_coordinates_kind_symbol
           (Db1pointsdata_fence_token_coordinates_kind_symbol_t.Db1pointsdata_fence_token_coordinates_kind_spherical_symbol
              (Db1pointsdata_fence_token_coordinates_kind_spherical_symbol_t.Db1pointsdata_fence_token_coordinates_kind_spherical_constructor
             "A")))))
);;

test_number 3 (
sym_db1_dck = provide nam_dbo
);;
