open Make_test_v;;

testing "Figure_symbol_subtree_by_figure_context_databox_tag_provider_v with
    Figure_symbol_subtree_by_figure_context_databox_tag_provider_u_lanl2dz_analysis.ml";;

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
   #use "Figure_symbol_subtree_by_figure_context_databox_tag_provider_u_lanl2dz_analysis.ml";; 

*)

(* Database file *)

let nam_dba = "db1points";;
let nam_bas = "lanl2dz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_bas;;

(* Databox *)

let tag_pcb = Figure_context_databox_tag_by_parameters_general_provider_v.provide ();;

test_number 1 (
(tag_pcb : Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor "lanl2dz",
   [5; 5; 19])
);;


(* Analysis *)

open Figure_symbol_subtree_by_figure_context_databox_tag_provider_v;;

let sym_fig_st = provide tag_pcb;;

let sym_fig_tso_1l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree Figure_symbol_v.is_figure_context_databox_constructor sym_fig_st;;

test_number 2 (
(sym_fig_tso_1l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_databox_symbol
      (Figure_context_databox_symbol_t.Figure_context_databox_constructor
        "lanl2dz"));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_anycenter_symbol
          (Figure_set_body_centered_aopefset_anycenter_symbol_t.Figure_set_body_centered_aopefset_anycenter_constructor
            "lanl2dz"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_ecppefset_symbol
        (Figure_set_body_centered_ecppefset_symbol_t.Figure_set_body_centered_ecppefset_constructor
          "lanl2dz")))]
);;

let sym_fig_tso_2l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    Figure_symbol_v.is_figure_set_body_centered_aopefset_anycenter_constructor
    sym_fig_st;;

test_number 3 (
(sym_fig_tso_2l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_anycenter_symbol
          (Figure_set_body_centered_aopefset_anycenter_symbol_t.Figure_set_body_centered_aopefset_anycenter_constructor
            "lanl2dz"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_onecenter_symbol
          (Figure_set_body_centered_aopefset_onecenter_symbol_t.Figure_set_body_centered_aopefset_onecenter_constructor
            "ne"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_onecenter_symbol
          (Figure_set_body_centered_aopefset_onecenter_symbol_t.Figure_set_body_centered_aopefset_onecenter_constructor
            "au"))))]
);;

(* Center "ne" *)

let sym_fig_tso_3l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Figure_symbol_v.is_figure_set_body_centered_aopefset_onecenter_constructor s) 
	&&
      (Figure_symbol_v.string_off s = "ne")
    )
    sym_fig_st;;

test_number 4 ( 
(sym_fig_tso_3l : Figure_symbol_t.figure_symbol list ) = 
  [Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_onecenter_symbol
          (Figure_set_body_centered_aopefset_onecenter_symbol_t.Figure_set_body_centered_aopefset_onecenter_constructor
            "ne"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
          (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
            "ne s"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
          (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
            "ne p"))))]
);;

(* Shell Symmetry "ne p" *)

let sym_fig_tso_4l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Figure_symbol_v.is_figure_set_body_centered_aopefset_shellsymmetry_constructor s) 
	&&
      (Figure_symbol_v.string_off s = "ne p")
    )
    sym_fig_st;;

test_number 5 ( 
(sym_fig_tso_4l : Figure_symbol_t.figure_symbol list ) = 
  [Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
          (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
            "ne p"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
          (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
            "ne p 2"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
          (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
            "ne p 3"))))]
);;

(* Shell Ordinal "ne p 3" *)

let sym_fig_tso_5l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Figure_symbol_v.is_figure_set_body_segment_constructor s) 
	&&
      (Figure_symbol_v.string_off s = "ne p 3")
    )
    sym_fig_st;;

test_number 6 ( 
(sym_fig_tso_5l : Figure_symbol_t.figure_symbol list ) = 
  [Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
          (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
            "ne p 3"))));
   Figure_symbol_t.Figure_set_fence_symbol
    (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
      (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
        (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
          "ne p 3 1")))]
);;

(* Center "au" *)

let sym_fig_tso_6l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Figure_symbol_v.is_figure_set_body_centered_aopefset_onecenter_constructor s) 
	&&
      (Figure_symbol_v.string_off s = "au")
    )
    sym_fig_st;;

test_number 7 ( 
(sym_fig_tso_6l : Figure_symbol_t.figure_symbol list ) = 
  [Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_onecenter_symbol
          (Figure_set_body_centered_aopefset_onecenter_symbol_t.Figure_set_body_centered_aopefset_onecenter_constructor
            "au"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
          (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
            "au s"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
          (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
            "au p"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
          (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
            "au d"))))]
);;

(* Shell Ordinal "au p 2" *)

let sym_fig_tso_11l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Figure_symbol_v.is_figure_set_fence_centered_aopef_symbol_off_figure_symbol s) 
	&&
      (Figure_symbol_v.string_off s = "au p 2")
    )
    sym_fig_st;;

test_number 8 (
(sym_fig_tso_11l : Figure_symbol_t.figure_symbol list ) = 
[]
);;

let sym_fig_l = Tree_v.node_list_off_tree sym_fig_st;;

let nam_fig_l = List.map Figure_symbol_v.fullname sym_fig_l;;

test_number 9 (
(nam_fig_l : string list ) =
  ["Figure_symbol_t.Figure_context_databox_constructor \"lanl2dz\"";
   "Figure_symbol_t.Figure_set_body_centered_aopefset_anycenter_constructor \"lanl2dz\"";
   "Figure_symbol_t.Figure_set_body_centered_aopefset_onecenter_constructor \"ne\"";
   "Figure_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor \"ne s\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"ne s 1\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"ne s 1 1\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"ne s 1 2\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"ne s 1 3\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"ne s 1 4\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"ne s 2\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"ne s 2 1\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"ne s 2 2\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"ne s 2 3\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"ne s 3\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"ne s 3 1\"";
   "Figure_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor \"ne p\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"ne p 2\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"ne p 2 1\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"ne p 2 2\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"ne p 3\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"ne p 3 1\"";
   "Figure_symbol_t.Figure_set_body_centered_aopefset_onecenter_constructor \"au\"";
   "Figure_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor \"au s\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"au s 1\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"au s 1 1\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"au s 1 2\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"au s 1 3\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"au s 2\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"au s 2 1\"";
   "Figure_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor \"au p\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"au p 2\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"au p 2 1\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"au p 2 2\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"au p 3\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"au p 3 1\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"au p 3 2\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"au p 4\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"au p 4 1\"";
   "Figure_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor \"au d\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"au d 3\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"au d 3 1\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"au d 3 2\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"au d 4\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"au d 4 1\"";
   "Figure_symbol_t.Figure_set_body_centered_ecppefset_constructor \"lanl2dz\""]
);;

let sof_fig_l = List.map Figure_symbol_v.string_off sym_fig_l;;

test_number 10 (
(sof_fig_l : string list ) =
  ["lanl2dz";
   "lanl2dz";
   "ne";
   "ne s";
   "ne s 1";
   "ne s 1 1";
   "ne s 1 2";
   "ne s 1 3";
   "ne s 1 4";
   "ne s 2";
   "ne s 2 1";
   "ne s 2 2";
   "ne s 2 3";
   "ne s 3";
   "ne s 3 1";
   "ne p";
   "ne p 2";
   "ne p 2 1";
   "ne p 2 2";
   "ne p 3";
   "ne p 3 1";
   "au";
   "au s";
   "au s 1";
   "au s 1 1";
   "au s 1 2";
   "au s 1 3";
   "au s 2";
   "au s 2 1";
   "au p";
   "au p 2";
   "au p 2 1";
   "au p 2 2";
   "au p 3";
   "au p 3 1";
   "au p 3 2";
   "au p 4";
   "au p 4 1";
   "au d";
   "au d 3";
   "au d 3 1";
   "au d 3 2";
   "au d 4";
   "au d 4 1";
   "lanl2dz"]
);;
