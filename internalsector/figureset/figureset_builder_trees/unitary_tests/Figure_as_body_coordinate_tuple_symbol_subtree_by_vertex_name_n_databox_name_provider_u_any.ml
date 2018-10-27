open Make_test_v;;

testing "Figure_as_body_coordinate_tuple_symbol_subtree_by_vertex_name_n_databox_name_provider_v with
        Figure_as_body_coordinate_tuple_symbol_subtree_by_vertex_name_n_databox_name_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Figure_fence_by_figure_tag_register_v.register;;
Register_v.delete Figure_son_tag_list_by_figure_father_tag_register_v.register;;
Register_v.delete Figure_symbol_by_sole_index_register_v.register;;
Register_v.delete Figure_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_all_list_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_tag_subtree_by_figure_tag_register_v.register;;
Register_v.delete Figure_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_tree_by_figure_context_databox_tag_register_v.register;;

(* Tracing *)

(* toplevel 
   #use "Figure_as_body_coordinate_tuple_symbol_subtree_by_vertex_name_n_databox_name_provider_u_any.ml";; 

*)

open Figure_as_body_coordinate_tuple_symbol_subtree_by_vertex_name_n_databox_name_provider_v;;

let nam_dbo = "Point_a";;
let nam_ver = "A_A";;

let sym_db1_dck = 
    Db1pointsdata_as_fence_token_coordinates_kind_symbol_by_databox_name_provider_v.provide
      nam_dbo;;

test_number 1 (
(sym_db1_dck : Db1pointsdata_symbol_t.db1pointsdata_symbol ) =
  Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
   (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_token_symbol
     (Db1pointsdata_fence_token_symbol_t.Db1pointsdata_fence_token_coordinates_symbol
       (Db1pointsdata_fence_token_coordinates_symbol_t.Db1pointsdata_fence_token_coordinates_kind_symbol
         (Db1pointsdata_fence_token_coordinates_kind_symbol_t.Db1pointsdata_fence_token_coordinates_kind_spherical_symbol
           (Db1pointsdata_fence_token_coordinates_kind_spherical_symbol_t.Db1pointsdata_fence_token_coordinates_kind_spherical_constructor
             "A")))))
);; 

let sym_dck = 
    Db1pointsdata_symbol_v.db1pointsdata_fence_token_coordinates_kind_symbol_off_db1pointsdata_symbol
      sym_db1_dck;;

test_number 2 (
(sym_dck :
  Db1pointsdata_fence_token_coordinates_kind_symbol_t.db1pointsdata_fence_token_coordinates_kind_symbol ) =
  Db1pointsdata_fence_token_coordinates_kind_symbol_t.Db1pointsdata_fence_token_coordinates_kind_spherical_symbol
   (Db1pointsdata_fence_token_coordinates_kind_spherical_symbol_t.Db1pointsdata_fence_token_coordinates_kind_spherical_constructor
     "A")
);;

let sym_fig_ect_l = 
  figure_as_body_coordinate_symbol_list_of_vertex_name_of_coordinates_kind
    nam_ver
    sym_dck;;

test_number 3 (
( sym_fig_ect_l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_set_fence_symbol
    (Figure_set_fence_symbol_t.Figure_set_fence_coordinate_symbol
      (Figure_set_fence_coordinate_symbol_t.Figure_set_fence_coordinate_heterogeneous_symbol
        (Figure_set_fence_coordinate_heterogeneous_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_symbol
          (Figure_set_fence_coordinate_heterogeneous_spherical_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_rho_symbol
            (Figure_set_fence_coordinate_heterogeneous_spherical_rho_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_rho_constructor
              "A_A")))));
   Figure_symbol_t.Figure_set_fence_symbol
    (Figure_set_fence_symbol_t.Figure_set_fence_coordinate_symbol
      (Figure_set_fence_coordinate_symbol_t.Figure_set_fence_coordinate_heterogeneous_symbol
        (Figure_set_fence_coordinate_heterogeneous_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_symbol
          (Figure_set_fence_coordinate_heterogeneous_spherical_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_phi_symbol
            (Figure_set_fence_coordinate_heterogeneous_spherical_phi_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_phi_constructor
              "A_A")))));
   Figure_symbol_t.Figure_set_fence_symbol
    (Figure_set_fence_symbol_t.Figure_set_fence_coordinate_symbol
      (Figure_set_fence_coordinate_symbol_t.Figure_set_fence_coordinate_heterogeneous_symbol
        (Figure_set_fence_coordinate_heterogeneous_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_symbol
          (Figure_set_fence_coordinate_heterogeneous_spherical_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_theta_symbol
            (Figure_set_fence_coordinate_heterogeneous_spherical_theta_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_theta_constructor
              "A_A")))))]
);;

let sym_fig_fl = List.map Tree_v.make_of_leaf sym_fig_ect_l;;

test_number 4 (
(sym_fig_fl : Figure_symbol_t.figure_symbol Tree_t.tree list ) =
  [Tree_t.Leaf
    (Figure_symbol_t.Figure_set_fence_symbol
      (Figure_set_fence_symbol_t.Figure_set_fence_coordinate_symbol
        (Figure_set_fence_coordinate_symbol_t.Figure_set_fence_coordinate_heterogeneous_symbol
          (Figure_set_fence_coordinate_heterogeneous_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_symbol
            (Figure_set_fence_coordinate_heterogeneous_spherical_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_rho_symbol
              (Figure_set_fence_coordinate_heterogeneous_spherical_rho_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_rho_constructor
                "A_A"))))));
   Tree_t.Leaf
    (Figure_symbol_t.Figure_set_fence_symbol
      (Figure_set_fence_symbol_t.Figure_set_fence_coordinate_symbol
        (Figure_set_fence_coordinate_symbol_t.Figure_set_fence_coordinate_heterogeneous_symbol
          (Figure_set_fence_coordinate_heterogeneous_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_symbol
            (Figure_set_fence_coordinate_heterogeneous_spherical_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_phi_symbol
              (Figure_set_fence_coordinate_heterogeneous_spherical_phi_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_phi_constructor
                "A_A"))))));
   Tree_t.Leaf
    (Figure_symbol_t.Figure_set_fence_symbol
      (Figure_set_fence_symbol_t.Figure_set_fence_coordinate_symbol
        (Figure_set_fence_coordinate_symbol_t.Figure_set_fence_coordinate_heterogeneous_symbol
          (Figure_set_fence_coordinate_heterogeneous_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_symbol
            (Figure_set_fence_coordinate_heterogeneous_spherical_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_theta_symbol
              (Figure_set_fence_coordinate_heterogeneous_spherical_theta_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_theta_constructor
                "A_A"))))))]
);;

let sym_fig_ect =
  figure_as_body_coordinate_tuple_symbol_of_vertex_name_of_coordinates_kind 
    nam_ver 
    sym_dck ;;

test_number 5 (
(sym_fig_ect : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_set_body_symbol
   (Figure_set_body_symbol_t.Figure_set_body_coordinate_tuple_symbol
     (Figure_set_body_coordinate_tuple_symbol_t.Figure_set_body_coordinate_tuple_heterogeneous_symbol
       (Figure_set_body_coordinate_tuple_heterogeneous_symbol_t.Figure_set_body_coordinate_tuple_heterogeneous_spherical_symbol
         (Figure_set_body_coordinate_tuple_heterogeneous_spherical_symbol_t.Figure_set_body_coordinate_tuple_heterogeneous_spherical_constructor
           "A_A"))))
);;

let sym_fig_ect_st = Tree_v.make sym_fig_ect sym_fig_fl;;

test_number 6 (
(sym_fig_ect_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_coordinate_tuple_symbol
       (Figure_set_body_coordinate_tuple_symbol_t.Figure_set_body_coordinate_tuple_heterogeneous_symbol
         (Figure_set_body_coordinate_tuple_heterogeneous_symbol_t.Figure_set_body_coordinate_tuple_heterogeneous_spherical_symbol
           (Figure_set_body_coordinate_tuple_heterogeneous_spherical_symbol_t.Figure_set_body_coordinate_tuple_heterogeneous_spherical_constructor
             "A_A")))),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_coordinate_symbol
         (Figure_set_fence_coordinate_symbol_t.Figure_set_fence_coordinate_heterogeneous_symbol
           (Figure_set_fence_coordinate_heterogeneous_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_symbol
             (Figure_set_fence_coordinate_heterogeneous_spherical_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_rho_symbol
               (Figure_set_fence_coordinate_heterogeneous_spherical_rho_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_rho_constructor
                 "A_A"))))));
    Tree_t.Leaf
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_coordinate_symbol
         (Figure_set_fence_coordinate_symbol_t.Figure_set_fence_coordinate_heterogeneous_symbol
           (Figure_set_fence_coordinate_heterogeneous_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_symbol
             (Figure_set_fence_coordinate_heterogeneous_spherical_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_phi_symbol
               (Figure_set_fence_coordinate_heterogeneous_spherical_phi_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_phi_constructor
                 "A_A"))))));
    Tree_t.Leaf
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_coordinate_symbol
         (Figure_set_fence_coordinate_symbol_t.Figure_set_fence_coordinate_heterogeneous_symbol
           (Figure_set_fence_coordinate_heterogeneous_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_symbol
             (Figure_set_fence_coordinate_heterogeneous_spherical_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_theta_symbol
               (Figure_set_fence_coordinate_heterogeneous_spherical_theta_symbol_t.Figure_set_fence_coordinate_heterogeneous_spherical_theta_constructor
                 "A_A"))))))])
);;

test_number 7 (
sym_fig_ect_st = provide (nam_ver, nam_dbo)
);;

