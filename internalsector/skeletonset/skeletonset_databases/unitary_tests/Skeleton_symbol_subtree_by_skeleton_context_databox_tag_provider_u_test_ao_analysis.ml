open Make_test_v;;

testing "Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_v with
    Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_u_test_ao_analysis.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_u_test_ao_analysis.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_bas = "test_ao";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_bas;;

(* Databox *)

let tag_pcb = Skeleton_context_databox_tag_by_parameters_general_provider_v.provide ();;

test_number 1 (
(tag_pcb : Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag ) =
  (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor "test_ao",
   [6; 5; 19])
);;


(* Analysis *)

open Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_v;;

let sym_ske_st = provide tag_pcb;;

test_number 2 (
(sym_ske_st : Skeleton_symbol_t.skeleton_symbol Tree_t.tree ) =
Tree_t.Inner
  (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
	(Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
           "test_ao")),
   [Tree_t.Inner
      (Skeleton_symbol_t.Skeleton_body_symbol
	 (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
            (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter_symbol
              (Skeleton_body_centered_aopefset_anycenter_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor
		 "test_ao")))),
       [Tree_t.Inner
	  (Skeleton_symbol_t.Skeleton_body_symbol
         (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
            (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
               (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter_symbol
		  (Skeleton_body_centered_aopefset_onecenter_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor
                     "he")))),
       [Tree_t.Inner
          (Skeleton_symbol_t.Skeleton_body_symbol
           (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
              (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
		 (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
                    (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
                       "he s")))),
           [Tree_t.Inner
              (Skeleton_symbol_t.Skeleton_body_symbol
		 (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
		    (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
                       (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
			  (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
			     "he s 1")))),
               [Tree_t.Leaf
		  (Skeleton_symbol_t.Skeleton_fence_symbol
		     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
			(Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
			   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
			      "he s 1 1"))));
		Tree_t.Leaf
		  (Skeleton_symbol_t.Skeleton_fence_symbol
		     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
			(Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
			   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
			      "he s 1 2"))))]);
            Tree_t.Inner
              (Skeleton_symbol_t.Skeleton_body_symbol
		 (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
		    (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
                       (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
			  (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
			     "he s 2")))),
               [Tree_t.Leaf
		  (Skeleton_symbol_t.Skeleton_fence_symbol
		     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
			(Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
			   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
			      "he s 2 1"))))])]);
        Tree_t.Inner
          (Skeleton_symbol_t.Skeleton_body_symbol
             (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
		(Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
		   (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
                      (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
			 "he p")))),
           [Tree_t.Inner
              (Skeleton_symbol_t.Skeleton_body_symbol
		 (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
		    (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
                       (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
			  (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
			     "he p 2")))),
               [Tree_t.Leaf
		  (Skeleton_symbol_t.Skeleton_fence_symbol
		     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
			(Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
			   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
			      "he p 2 1"))));
		Tree_t.Leaf
		  (Skeleton_symbol_t.Skeleton_fence_symbol
		     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
			(Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
			   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
			      "he p 2 2"))))]);
            Tree_t.Inner
              (Skeleton_symbol_t.Skeleton_body_symbol
		 (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
		    (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
                       (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
			  (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
			     "he p 3")))),
               [Tree_t.Leaf
		  (Skeleton_symbol_t.Skeleton_fence_symbol
		     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
			(Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
			   (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
			      "he p 3 1"))))])])])]);
    Tree_t.Leaf
      (Skeleton_symbol_t.Skeleton_body_symbol
	 (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
            (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppefset_symbol
               (Skeleton_body_centered_ecppefset_symbol_t.Skeleton_body_centered_ecppefset_constructor
		  "test_ao"))))])
);;

let sym_ske_tso_1l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree Skeleton_symbol_v.is_skeleton_context_databox_constructor sym_ske_st;;

test_number 3 (
(sym_ske_tso_1l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "test_ao"));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter_symbol
          (Skeleton_body_centered_aopefset_anycenter_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor
            "test_ao"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppefset_symbol
        (Skeleton_body_centered_ecppefset_symbol_t.Skeleton_body_centered_ecppefset_constructor
          "test_ao")))]
);;

let sym_ske_tso_2l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    Skeleton_symbol_v.is_skeleton_body_centered_aopefset_anycenter_constructor
    sym_ske_st;;

test_number 4 (
(sym_ske_tso_2l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter_symbol
          (Skeleton_body_centered_aopefset_anycenter_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor
            "test_ao"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter_symbol
          (Skeleton_body_centered_aopefset_onecenter_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor
            "he"))))]
);;

(* Center "he" *)

let sym_ske_tso_3l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_body_centered_aopefset_onecenter_constructor s) 
	&&
      (Skeleton_symbol_v.string_off s = "he")
    )
    sym_ske_st;;

test_number 5 ( 
(sym_ske_tso_3l : Skeleton_symbol_t.skeleton_symbol list ) = 
 [Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter_symbol
          (Skeleton_body_centered_aopefset_onecenter_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor
            "he"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
          (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
            "he s"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
          (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
            "he p"))))]
);;

(* Shell Symmetry "he p" *)

let sym_ske_tso_4l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_body_centered_aopefset_shellsymmetry_constructor s) 
	&&
      (Skeleton_symbol_v.string_off s = "he p")
    )
    sym_ske_st;;

test_number 6 ( 
(sym_ske_tso_4l : Skeleton_symbol_t.skeleton_symbol list ) = 
  [Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
          (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
            "he p"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
          (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
            "he p 2"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
          (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
            "he p 3"))))]
);;

let sym_ske_l = Tree_v.node_list_off_tree sym_ske_st;;

test_number 7 (
(sym_ske_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "test_ao"));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter_symbol
          (Skeleton_body_centered_aopefset_anycenter_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor
            "test_ao"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter_symbol
          (Skeleton_body_centered_aopefset_onecenter_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor
            "he"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
          (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
            "he s"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
          (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
            "he s 1"))));
   Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "he s 1 1")));
   Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "he s 1 2")));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
          (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
            "he s 2"))));
   Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "he s 2 1")));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
          (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
            "he p"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
          (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
            "he p 2"))));
   Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "he p 2 1")));
   Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "he p 2 2")));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
          (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
            "he p 3"))));
   Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "he p 3 1")));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppefset_symbol
        (Skeleton_body_centered_ecppefset_symbol_t.Skeleton_body_centered_ecppefset_constructor
          "test_ao")))]
);;

let nam_ske_l = List.map Skeleton_symbol_v.fullname sym_ske_l;;

test_number 8 (
(nam_ske_l : string list ) =
 ["Skeleton_symbol_t.Skeleton_context_databox_constructor \"test_ao\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor \"test_ao\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor \"he\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor \"he s\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"he s 1\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"he s 1 1\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"he s 1 2\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"he s 2\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"he s 2 1\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor \"he p\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"he p 2\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"he p 2 1\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"he p 2 2\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"he p 3\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"he p 3 1\"";
   "Skeleton_symbol_t.Skeleton_body_centered_ecppefset_constructor \"test_ao\""]
);;

let sof_ske_l = List.map Skeleton_symbol_v.string_off sym_ske_l;;

test_number 9 (
(sof_ske_l : string list ) =
["test_ao";
   "test_ao";
   "he";
   "he s";
   "he s 1";
   "he s 1 1";
   "he s 1 2";
   "he s 2";
   "he s 2 1";
   "he p";
   "he p 2";
   "he p 2 1";
   "he p 2 2";
   "he p 3";
   "he p 3 1";
   "test_ao"]
);;
