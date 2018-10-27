open Make_test_v;;

testing "Figure_symbol_subtree_by_figure_context_databox_tag_provider_v with
    Figure_symbol_subtree_by_figure_context_databox_tag_provider_u_segment_BC_trace.ml";;

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
   #use "Figure_symbol_subtree_by_figure_context_databox_tag_provider_u_segment_BC_trace.ml";; 

*)

(* Database file *)

let nam_dba = "db1points";;
let nam_bas = "segment_BC";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_bas;;

(* Databox *)

let tag_pcb = Figure_context_databox_tag_by_parameters_general_provider_v.provide ();;

test_number 1 (
(tag_pcb : Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor "segment_BC",
   [6; 5; 19])
);;

(* Debug *)

open Figure_symbol_subtree_by_figure_context_databox_tag_provider_v;;

let sym_fig_st = provide tag_pcb;;

test_number 2 (
(sym_fig_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
Tree_t.Inner
  (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
	(Figure_context_databox_symbol_t.Figure_context_databox_constructor
           "segment_BC")),
   [Tree_t.Inner
      (Figure_symbol_t.Figure_set_body_symbol
	 (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
            (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
           (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_anycenter_symbol
              (Figure_set_body_centered_aopefset_anycenter_symbol_t.Figure_set_body_centered_aopefset_anycenter_constructor
		 "segment_BC")))),
       [Tree_t.Inner
	  (Figure_symbol_t.Figure_set_body_symbol
         (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
            (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
               (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_onecenter_symbol
		  (Figure_set_body_centered_aopefset_onecenter_symbol_t.Figure_set_body_centered_aopefset_onecenter_constructor
                     "he")))),
       [Tree_t.Inner
          (Figure_symbol_t.Figure_set_body_symbol
           (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
              (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
		 (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
                    (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
                       "he s")))),
           [Tree_t.Inner
              (Figure_symbol_t.Figure_set_body_symbol
		 (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
		    (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
                       (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
			  (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
			     "he s 1")))),
               [Tree_t.Leaf
		  (Figure_symbol_t.Figure_set_fence_symbol
		     (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
			(Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
			   (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
			      "he s 1 1"))));
		Tree_t.Leaf
		  (Figure_symbol_t.Figure_set_fence_symbol
		     (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
			(Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
			   (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
			      "he s 1 2"))))]);
            Tree_t.Inner
              (Figure_symbol_t.Figure_set_body_symbol
		 (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
		    (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
                       (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
			  (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
			     "he s 2")))),
               [Tree_t.Leaf
		  (Figure_symbol_t.Figure_set_fence_symbol
		     (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
			(Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
			   (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
			      "he s 2 1"))))])]);
        Tree_t.Inner
          (Figure_symbol_t.Figure_set_body_symbol
             (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
		(Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
		   (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
                      (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
			 "he p")))),
           [Tree_t.Inner
              (Figure_symbol_t.Figure_set_body_symbol
		 (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
		    (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
                       (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
			  (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
			     "BC")))),
               [Tree_t.Leaf
		  (Figure_symbol_t.Figure_set_fence_symbol
		     (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
			(Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
			   (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
			      "BC 1"))));
		Tree_t.Leaf
		  (Figure_symbol_t.Figure_set_fence_symbol
		     (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
			(Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
			   (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
			      "BC_B"))))]);
            Tree_t.Inner
              (Figure_symbol_t.Figure_set_body_symbol
		 (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
		    (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
                       (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
			  (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
			     "he p 3")))),
               [Tree_t.Leaf
		  (Figure_symbol_t.Figure_set_fence_symbol
		     (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
			(Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
			   (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
			      "he p 3 1"))))])])])]);
    Tree_t.Leaf
      (Figure_symbol_t.Figure_set_body_symbol
	 (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
            (Figure_set_body_centered_symbol_t.Figure_set_body_centered_ecppefset_symbol
               (Figure_set_body_centered_ecppefset_symbol_t.Figure_set_body_centered_ecppefset_constructor
		  "segment_BC"))))])
);;

let sym_fig_tso_1l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree Figure_symbol_v.is_figure_context_databox_constructor sym_fig_st;;

test_number 3 (
(sym_fig_tso_1l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_databox_symbol
      (Figure_context_databox_symbol_t.Figure_context_databox_constructor
        "segment_BC"));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_anycenter_symbol
          (Figure_set_body_centered_aopefset_anycenter_symbol_t.Figure_set_body_centered_aopefset_anycenter_constructor
            "segment_BC"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_ecppefset_symbol
        (Figure_set_body_centered_ecppefset_symbol_t.Figure_set_body_centered_ecppefset_constructor
          "segment_BC")))]
);;

let sym_fig_tso_2l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    Figure_symbol_v.is_figure_set_body_centered_aopefset_anycenter_constructor
    sym_fig_st;;

test_number 4 (
(sym_fig_tso_2l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_anycenter_symbol
          (Figure_set_body_centered_aopefset_anycenter_symbol_t.Figure_set_body_centered_aopefset_anycenter_constructor
            "segment_BC"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_onecenter_symbol
          (Figure_set_body_centered_aopefset_onecenter_symbol_t.Figure_set_body_centered_aopefset_onecenter_constructor
            "he"))))]
);;

(* Center "he" *)

let sym_fig_tso_3l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Figure_symbol_v.is_figure_set_body_centered_aopefset_onecenter_constructor s) 
	&&
      (Figure_symbol_v.string_off s = "he")
    )
    sym_fig_st;;

test_number 5 ( 
(sym_fig_tso_3l : Figure_symbol_t.figure_symbol list ) = 
 [Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_onecenter_symbol
          (Figure_set_body_centered_aopefset_onecenter_symbol_t.Figure_set_body_centered_aopefset_onecenter_constructor
            "he"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
          (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
            "he s"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
          (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
            "he p"))))]
);;

(* Shell Symmetry "he p" *)

let sym_fig_tso_4l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Figure_symbol_v.is_figure_set_body_centered_aopefset_shellsymmetry_constructor s) 
	&&
      (Figure_symbol_v.string_off s = "he p")
    )
    sym_fig_st;;

test_number 6 ( 
(sym_fig_tso_4l : Figure_symbol_t.figure_symbol list ) = 
  [Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
          (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
            "he p"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
          (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
            "BC"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
          (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
            "he p 3"))))]
);;

let sym_fig_l = Tree_v.node_list_off_tree sym_fig_st;;

test_number 7 (
(sym_fig_l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_databox_symbol
      (Figure_context_databox_symbol_t.Figure_context_databox_constructor
        "segment_BC"));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_anycenter_symbol
          (Figure_set_body_centered_aopefset_anycenter_symbol_t.Figure_set_body_centered_aopefset_anycenter_constructor
            "segment_BC"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_onecenter_symbol
          (Figure_set_body_centered_aopefset_onecenter_symbol_t.Figure_set_body_centered_aopefset_onecenter_constructor
            "he"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
          (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
            "he s"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
          (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
            "he s 1"))));
   Figure_symbol_t.Figure_set_fence_symbol
    (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
      (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
        (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
          "he s 1 1")));
   Figure_symbol_t.Figure_set_fence_symbol
    (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
      (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
        (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
          "he s 1 2")));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
          (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
            "he s 2"))));
   Figure_symbol_t.Figure_set_fence_symbol
    (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
      (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
        (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
          "he s 2 1")));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
          (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
            "he p"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
          (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
            "BC"))));
   Figure_symbol_t.Figure_set_fence_symbol
    (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
      (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
        (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
          "BC 1")));
   Figure_symbol_t.Figure_set_fence_symbol
    (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
      (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
        (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
          "BC_B")));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
          (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
            "he p 3"))));
   Figure_symbol_t.Figure_set_fence_symbol
    (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
      (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
        (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
          "he p 3 1")));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_ecppefset_symbol
        (Figure_set_body_centered_ecppefset_symbol_t.Figure_set_body_centered_ecppefset_constructor
          "segment_BC")))]
);;

let nam_fig_l = List.map Figure_symbol_v.fullname sym_fig_l;;

test_number 8 (
(nam_fig_l : string list ) =
 ["Figure_symbol_t.Figure_context_databox_constructor \"segment_BC\"";
   "Figure_symbol_t.Figure_set_body_centered_aopefset_anycenter_constructor \"segment_BC\"";
   "Figure_symbol_t.Figure_set_body_centered_aopefset_onecenter_constructor \"he\"";
   "Figure_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor \"he s\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"he s 1\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"he s 1 1\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"he s 1 2\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"he s 2\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"he s 2 1\"";
   "Figure_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor \"he p\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"BC\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"BC 1\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"BC_B\"";
   "Figure_symbol_t.Figure_set_body_segment_constructor \"he p 3\"";
   "Figure_symbol_t.Figure_set_fence_centered_aopef_constructor \"he p 3 1\"";
   "Figure_symbol_t.Figure_set_body_centered_ecppefset_constructor \"segment_BC\""]
);;

let sof_fig_l = List.map Figure_symbol_v.string_off sym_fig_l;;

test_number 9 (
(sof_fig_l : string list ) =
["segment_BC";
   "segment_BC";
   "he";
   "he s";
   "he s 1";
   "he s 1 1";
   "he s 1 2";
   "he s 2";
   "he s 2 1";
   "he p";
   "BC";
   "BC 1";
   "BC_B";
   "he p 3";
   "he p 3 1";
   "segment_BC"]
);;
