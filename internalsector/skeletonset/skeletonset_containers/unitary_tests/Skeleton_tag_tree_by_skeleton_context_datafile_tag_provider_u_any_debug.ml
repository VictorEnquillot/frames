open Make_test_v;;

testing "Skeleton_tag_tree_by_skeleton_context_datafile_tag_provider_v with
    Skeleton_tag_tree_by_skeleton_context_datafile_tag_provider_u_any_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_deepfence_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_basisset_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_lexer_symbol_reverse_list_by_database_fullnameoffile_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_basisset_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete  Skeleton_tag_all_list_by_skeleton_context_datafile_tag_register_v.register;;
Register_v.delete  Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete  Son_nwchem_tag_list_by_father_nwchem_tag_register_v.register;;


(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Skeleton_tag_tree_by_skeleton_context_datafile_tag_provider_u_any_debug.ml";; 

*)

let nam_dba = "nwchem";;
let nam_bas = "lanl2dz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "datafile-name" nam_bas;;
 
open Skeleton_tag_tree_by_skeleton_context_datafile_tag_provider_v;;

let tag_pcb = Skeleton_context_datafile_tag_by_parameters_general_provider_v.provide () ;;

test_number 1 ( 
( tag_pcb : Skeleton_context_datafile_symbol_t.skeleton_context_datafile_symbol Tag_t.tag ) =
  (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor
    "lanl2dz",
   [5; 5; 19])
);;

let soi_pcb = Tag_v.sole_index_off_tag tag_pcb;;

test_number 2 (
(soi_pcb : Sole_index_t.sole_index) = 
[5; 5; 19]
);;

let sym_prt_bas_st =
    Skeleton_symbol_subtree_by_skeleton_context_datafile_tag_provider_v.provide
    tag_pcb
;;

let sym_prt_bas_tso_l = Tree_v.root_topson_node_list_off_tree sym_prt_bas_st;;

test_number 3 (
(sym_prt_bas_tso_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_datafile_symbol
      (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor
        "lanl2dz"));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_any_center
            "lanl2dz"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_ecppef
          "lanl2dz")))]
);;
  
let tag_prt_dom = Skeleton_as_context_domain_tag_by_unit_provider_v.provide ();;

test_number 4 (
(tag_prt_dom : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
(Skeleton_symbol_t.Skeleton_context_symbol
  (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
    (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
      "skeleton")),
 [19])
);;

let tag_prt_dba = Skeleton_as_context_database_tag_by_parameters_general_provider_v.provide ();;

test_number 5 (
(tag_prt_dba: Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
(Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_database_symbol
      (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
	 "nwchem")),
 [5; 19])
);;

let tag_prt_bas = Tag_v.map_entity 
      Skeleton_symbol_v.skeleton_symbol_of_skeleton_context_datafile_symbol
      tag_pcb
;;

test_number 6 (
(tag_prt_bas : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_datafile_symbol
      (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor
        "lanl2dz")),
   [5; 5; 19])
);;

let soi_bas = Tag_v.sole_index_off_tag tag_prt_bas;;

test_number 7 (
(soi_bas : Sole_index_t.sole_index ) = 
[5; 5; 19]
);;

let soi_prt_bas_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_prt_bas_st 
      soi_bas 
;;

let soi_prt_tso_l = Tree_v.root_topson_node_list_off_tree soi_prt_bas_st;;

test_number 8 (
(soi_prt_tso_l : Sole_index_t.sole_index list ) =
  [[5; 5; 19]; [1; 5; 5; 19]; [2; 5; 5; 19]]
);;

let tag_prt_bas_st = Tree_v.map2 Tag_v.make sym_prt_bas_st soi_prt_bas_st;;

let tag_prt_bas_tso_l = Tree_v.root_topson_node_list_off_tree tag_prt_bas_st;;

test_number 9 (
(tag_prt_bas_tso_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_datafile_symbol
       (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor
         "lanl2dz")),
    [5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_any_center
             "lanl2dz")))),
    [1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_ecppef
           "lanl2dz"))),
    [2; 5; 5; 19])]
);;

let tag_prt_dba_st = Tree_v.make_of_node tag_prt_dba [tag_prt_bas_st];;
  
let tag_prt_dba_tso_l = Tree_v.root_topson_node_list_off_tree tag_prt_dba_st;;

test_number 10 (
(tag_prt_dba_tso_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 19]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_datafile_symbol
       (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor
         "lanl2dz")),
    [5; 5; 19])]
);;

let tag_prt_t = Tree_v.make_of_node tag_prt_dom [tag_prt_dba_st];;

let tag_prt_tso_l = Tree_v.root_topson_node_list_off_tree tag_prt_t;;

test_number 11 (
(tag_prt_tso_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [19]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 19])]
);;
