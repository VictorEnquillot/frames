open Make_test_v;;

testing "Skeleton_as_context_domain_tag_by_unit_provider_v with
    Skeleton_as_context_domain_tag_by_unit_provider_u_any_debug.ml";;

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
   #use "Skeleton_as_context_domain_tag_by_unit_provider_u_any_debug.ml";; 

*)


(* Debug *)

open Skeleton_as_context_domain_tag_by_unit_provider_v;;


let nam_dom = String.lowercase (String_v.first_word_of_char_off_string '_' __FILE__);;

let soi_dom = Global_domainset_sole_index_by_domain_name_provider_v.provide nam_dom;;

test_number 1 (
(soi_dom : int list ) = 
[19]
);;

let sym_prt_dom = Skeleton_symbol_v.skeleton_context_domain_constructor nam_dom;;

test_number 2 (
(sym_prt_dom : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
     (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
       "skeleton"))
);;

let tag_prt_dom = Tag_v.make sym_prt_dom soi_dom;;

test_number 3 (
( tag_prt_dom : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
      (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
        "skeleton")),
   [19])
);;

let boo = tag_prt_dom = provide ();;

test_number 4 (
boo
);;
