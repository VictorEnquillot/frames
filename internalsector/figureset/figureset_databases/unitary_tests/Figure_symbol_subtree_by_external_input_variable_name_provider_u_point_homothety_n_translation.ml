open Make_test_v;;

testing "Figure_symbol_subtree_by_external_input_variable_name_provider_v with
   Figure_symbol_subtree_by_external_input_variable_name_provider_u_point_homothety_n_translation_debug.ml";;

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
   #use "Figure_symbol_subtree_by_external_input_variable_name_provider_u_point_homothety_n_translation_debug.ml";;

*)

(* Input File *)

let nam_inp = "Point_homothety_n_translation.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"
);;

let sym_inp_t = 
  Input_symbol_tree_by_input_fullnameoffile_provider_v.provide 
    fno_inp;;

let nam_n_kin_l = Input_variable_name_n_kind_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 2 (
(nam_n_kin_l :
  (string, Input_symbol_t.input_symbol) Doublet_t.doublet list ) =
  [("Con_db1",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_context);
   ("Con_hom",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_context);
   ("Hom_b_2",
    Input_symbol_t.Input_keyword_symbol
     (Input_keyword_symbol_t.Input_keyword_operator_symbol
       Input_keyword_operator_symbol_t.Input_keyword_operator_constructor));
   ("Tra_bc",
    Input_symbol_t.Input_keyword_symbol
     (Input_keyword_symbol_t.Input_keyword_operator_symbol
       Input_keyword_operator_symbol_t.Input_keyword_operator_constructor));
   ("Seg_bc",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_external);
   ("Cen_b",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_external);
   ("Poi_a",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_external);
   ("Poi_h",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_target);
   ("Poi_t",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_target)]
);;

open Figure_symbol_subtree_by_external_input_variable_name_provider_v;;

(* Seg_bc *)

let nam_ivn_ext = "Seg_bc";;
let kin_ivn_ext = Input_variable_kind_by_input_variable_name_provider_v.provide nam_ivn_ext;;

test_number 3 (
(kin_ivn_ext : Input_symbol_t.input_symbol ) =
  Input_symbol_t.Input_keyword_symbol
   Input_keyword_symbol_t.Input_keyword_external
);;

let boo = Input_symbol_v.is_input_keyword_external kin_ivn_ext;;

test_number 4 (
(boo : bool ) = 
true
);;

let sym_fig_ext = Figure_symbol_in_inputfile_by_external_input_variable_name_provider_v.provide nam_ivn_ext;;

test_number 5 (
(sym_fig_ext : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_body_symbol
     (Figure_field_body_symbol_t.Figure_segment_symbol
       (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc")))
);;

let nam_con = Context_name_by_external_input_variable_name_provider_v.provide nam_ivn_ext;;
  
test_number 6 (
(nam_con : string ) =
 "Con_db1"
 );;

let nam_dba = Database_name_by_context_input_variable_name_provider_v.provide nam_con;;

test_number 7 (
(nam_dba : string ) =
 "db1"
 );;

let sym_fig_dba_t = Figure_symbol_tree_by_database_name_provider_v.provide nam_dba;;

test_number 8 (
(sym_fig_dba_t : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_domain_symbol
       (Figure_domain_symbol_t.Figure_domain_constructor "figure")),
   [Tree_t.Inner
     (Figure_symbol_t.Figure_context_symbol
       (Figure_context_symbol_t.Figure_createdby_symbol
         (Figure_createdby_symbol_t.Figure_database_symbol
           (Figure_database_symbol_t.Figure_database_constructor "db1"))),
     [Tree_t.Inner
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_body_symbol
           (Figure_field_body_symbol_t.Figure_segment_symbol
             (Figure_segment_symbol_t.Figure_segment_constructor "BC"))),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "BC_B"))));
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "BC_C"))))]);
      Tree_t.Inner
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_body_symbol
           (Figure_field_body_symbol_t.Figure_triangle_symbol
             (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
               (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
                 "T")))),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "T_A"))));
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "T_B"))));
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "T_C"))))]);
      Tree_t.Inner
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_body_symbol
           (Figure_field_body_symbol_t.Figure_triangle_symbol
             (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
               (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_obtuse
                 "V")))),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "V_A"))));
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "V_B"))));
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "V_C"))))]);
      Tree_t.Inner
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_body_symbol
           (Figure_field_body_symbol_t.Figure_triangle_symbol
             (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
               (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_right
                 "U")))),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "U_A"))));
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "U_B"))));
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "U_C"))))]);
      Tree_t.Leaf
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "A_A"))))])])
);;
 
let sym_fig_dba =
    Figure_symbol_in_database_by_external_input_variable_name_provider_v.provide
    nam_ivn_ext ;;

test_number 9 (
(sym_fig_dba : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_body_symbol
     (Figure_field_body_symbol_t.Figure_segment_symbol
       (Figure_segment_symbol_t.Figure_segment_constructor "BC")))
);;

let sym_fig_st = Tree_v.subtree_of_node_predicate_off_tree
    (fun s -> s = sym_fig_dba)
    sym_fig_dba_t
;;

test_number 10 (
(sym_fig_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_body_symbol
       (Figure_field_body_symbol_t.Figure_segment_symbol
         (Figure_segment_symbol_t.Figure_segment_constructor "BC"))),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_field_symbol
       (Figure_field_symbol_t.Figure_field_fence_symbol
         (Figure_field_fence_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "BC_B"))));
    Tree_t.Leaf
     (Figure_symbol_t.Figure_field_symbol
       (Figure_field_symbol_t.Figure_field_fence_symbol
         (Figure_field_fence_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "BC_C"))))])
);;

test_number 11 (
sym_fig_st = Figure_symbol_subtree_by_external_input_variable_name_provider_v.provide nam_ivn_ext
);;

(* Poi_a *)

let nam_ivn_ext = "Poi_a";;
let kin_ivn_ext = Input_variable_kind_by_input_variable_name_provider_v.provide nam_ivn_ext;;

test_number 12 (
(kin_ivn_ext : Input_symbol_t.input_symbol ) =
  Input_symbol_t.Input_keyword_symbol
   Input_keyword_symbol_t.Input_keyword_external
);;

let boo = Input_symbol_v.is_input_keyword_external kin_ivn_ext;;

test_number 13 (
(boo : bool ) = 
true
);;

let sym_fig_ext = Figure_symbol_in_inputfile_by_external_input_variable_name_provider_v.provide nam_ivn_ext;;

test_number 14 (
(sym_fig_ext : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "Poi_a")))
);;

let nam_con = Context_name_by_external_input_variable_name_provider_v.provide nam_ivn_ext;;
  
test_number 15 (
(nam_con : string ) =
 "Con_db1"
 );;

let nam_dba = Database_name_by_context_input_variable_name_provider_v.provide nam_con;;

test_number 16 (
(nam_dba : string ) =
 "db1"
 );;

test_number 17 (
sym_fig_dba_t = Figure_symbol_tree_by_database_name_provider_v.provide nam_dba
);;

let sym_fig_dba =
    Figure_symbol_in_database_by_external_input_variable_name_provider_v.provide
    nam_ivn_ext ;;

test_number 18 (
(sym_fig_dba : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_point_symbol
       (Figure_point_symbol_t.Figure_point_constructor "T_A")))
);;

let sym_fig_st = Tree_v.subtree_of_node_predicate_off_tree
    (fun s -> s = sym_fig_dba)
    sym_fig_dba_t
;;

test_number 19 (
(sym_fig_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "T_A"))))
);;

test_number 20 (
sym_fig_st = Figure_symbol_subtree_by_external_input_variable_name_provider_v.provide nam_ivn_ext
);;
