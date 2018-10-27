open Make_test_v;;

testing "Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_v with
    Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_u_lanl2dz_analysis.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_u_lanl2dz_analysis.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_bas = "lanl2dz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_bas;;

(* Databox *)

let tag_pcb = Skeleton_context_databox_tag_by_parameters_general_provider_v.provide ();;

test_number 1 (
(tag_pcb : Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag ) =
  (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor "lanl2dz",
   [5; 5; 19])
);;


(* Analysis *)

open Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_v;;

let sym_ske_st = provide tag_pcb;;

let sym_ske_tso_1l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree Skeleton_symbol_v.is_skeleton_context_databox_constructor sym_ske_st;;

test_number 2 (
(sym_ske_tso_1l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "lanl2dz"));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter_symbol
          (Skeleton_body_centered_aopefset_anycenter_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor
            "lanl2dz"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppefset_symbol
        (Skeleton_body_centered_ecppefset_symbol_t.Skeleton_body_centered_ecppefset_constructor
          "lanl2dz")))]
);;

let sym_ske_tso_2l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    Skeleton_symbol_v.is_skeleton_body_centered_aopefset_anycenter_constructor
    sym_ske_st;;

test_number 3 (
(sym_ske_tso_2l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter_symbol
          (Skeleton_body_centered_aopefset_anycenter_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor
            "lanl2dz"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter_symbol
          (Skeleton_body_centered_aopefset_onecenter_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor
            "ne"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter_symbol
          (Skeleton_body_centered_aopefset_onecenter_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor
            "au"))))]
);;

(* Center "ne" *)

let sym_ske_tso_3l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_body_centered_aopefset_onecenter_constructor s) 
	&&
      (Skeleton_symbol_v.string_off s = "ne")
    )
    sym_ske_st;;

test_number 4 ( 
(sym_ske_tso_3l : Skeleton_symbol_t.skeleton_symbol list ) = 
  [Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter_symbol
          (Skeleton_body_centered_aopefset_onecenter_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor
            "ne"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
          (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
            "ne s"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
          (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
            "ne p"))))]
);;

(* Shell Symmetry "ne p" *)

let sym_ske_tso_4l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_body_centered_aopefset_shellsymmetry_constructor s) 
	&&
      (Skeleton_symbol_v.string_off s = "ne p")
    )
    sym_ske_st;;

test_number 5 ( 
(sym_ske_tso_4l : Skeleton_symbol_t.skeleton_symbol list ) = 
  [Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
          (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
            "ne p"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
          (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
            "ne p 2"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
          (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
            "ne p 3"))))]
);;

(* Shell Ordinal "ne p 3" *)

let sym_ske_tso_5l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_body_centered_aopefset_shellordinal_constructor s) 
	&&
      (Skeleton_symbol_v.string_off s = "ne p 3")
    )
    sym_ske_st;;

test_number 6 ( 
(sym_ske_tso_5l : Skeleton_symbol_t.skeleton_symbol list ) = 
  [Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
          (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
            "ne p 3"))));
   Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "ne p 3 1")))]
);;

(* Center "au" *)

let sym_ske_tso_6l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_body_centered_aopefset_onecenter_constructor s) 
	&&
      (Skeleton_symbol_v.string_off s = "au")
    )
    sym_ske_st;;

test_number 7 ( 
(sym_ske_tso_6l : Skeleton_symbol_t.skeleton_symbol list ) = 
  [Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter_symbol
          (Skeleton_body_centered_aopefset_onecenter_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor
            "au"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
          (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
            "au s"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
          (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
            "au p"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
          (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
            "au d"))))]
);;

(* Shell Ordinal "au p 2" *)

let sym_ske_tso_11l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_fence_centered_aopef_symbol_off_skeleton_symbol s) 
	&&
      (Skeleton_symbol_v.string_off s = "au p 2")
    )
    sym_ske_st;;

test_number 8 (
(sym_ske_tso_11l : Skeleton_symbol_t.skeleton_symbol list ) = 
[]
);;

let sym_ske_l = Tree_v.node_list_off_tree sym_ske_st;;

let nam_ske_l = List.map Skeleton_symbol_v.fullname sym_ske_l;;

test_number 9 (
(nam_ske_l : string list ) =
  ["Skeleton_symbol_t.Skeleton_context_databox_constructor \"lanl2dz\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor \"lanl2dz\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor \"ne\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor \"ne s\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"ne s 1\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"ne s 1 1\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"ne s 1 2\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"ne s 1 3\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"ne s 1 4\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"ne s 2\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"ne s 2 1\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"ne s 2 2\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"ne s 2 3\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"ne s 3\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"ne s 3 1\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor \"ne p\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"ne p 2\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"ne p 2 1\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"ne p 2 2\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"ne p 3\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"ne p 3 1\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor \"au\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor \"au s\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"au s 1\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"au s 1 1\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"au s 1 2\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"au s 1 3\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"au s 2\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"au s 2 1\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor \"au p\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"au p 2\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"au p 2 1\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"au p 2 2\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"au p 3\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"au p 3 1\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"au p 3 2\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"au p 4\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"au p 4 1\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor \"au d\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"au d 3\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"au d 3 1\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"au d 3 2\"";
   "Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"au d 4\"";
   "Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"au d 4 1\"";
   "Skeleton_symbol_t.Skeleton_body_centered_ecppefset_constructor \"lanl2dz\""]
);;

let sof_ske_l = List.map Skeleton_symbol_v.string_off sym_ske_l;;

test_number 10 (
(sof_ske_l : string list ) =
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
