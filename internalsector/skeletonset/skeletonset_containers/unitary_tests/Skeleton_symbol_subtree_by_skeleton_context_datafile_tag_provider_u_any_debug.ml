open Make_test_v;;

testing "Skeleton_symbol_subtree_by_skeleton_context_datafile_tag_provider_v with
    Skeleton_symbol_subtree_by_skeleton_context_datafile_tag_provider_u_any_debug.ml";;

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
   #use "Skeleton_symbol_subtree_by_skeleton_context_datafile_tag_provider_u_any_debug.ml";; 

*)

(* Debug *)

Debug_by_module_name_register_v.store "Skeleton_symbol_subtree_by_skeleton_context_datafile_tag_provider_v" "nodebug";;
Debug_by_module_name_register_v.store "Skeleton_symbol_from_dgn_tag_translator_v" "nodebug";;

(* Database file *)

let nam_dba = "nwchem";;
let nam_bas = "lanl2dz";;
Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "datafile-name" nam_bas;;

open Skeleton_symbol_subtree_by_skeleton_context_datafile_tag_provider_v;;

(* Basisset *)

let tag_pcb = Skeleton_context_datafile_tag_by_parameters_general_provider_v.provide ();;

test_number 1 (
(tag_pcb : Skeleton_context_datafile_symbol_t.skeleton_context_datafile_symbol Tag_t.tag ) =
  (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor "lanl2dz",
   [5; 5; 19])
);;

let sym_pcb = Tag_v.entity_off_tag tag_pcb;;
let sym_prt_bas = Skeleton_symbol_v.skeleton_symbol_of_skeleton_context_datafile_symbol sym_pcb;;

test_number 2 (
(sym_prt_bas : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_datafile_symbol
     (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor
       "lanl2dz"))
);;

(* Symbol SubTree *)

let sym_prt_st = skeleton_symbol_subtree_of_skeleton_as_context_basisset_symbol sym_prt_bas;;
let boo = sym_prt_st = provide tag_pcb;;
 
let sym_prt_tso_l = Tree_v.root_topson_node_list_off_tree sym_prt_st;;

test_number 3 (
(sym_prt_tso_l : Skeleton_symbol_t.skeleton_symbol list ) =
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

(* Nwchem_tag_all_list *)

let tag_nwc_l = tag_nwchem_all_list nam_bas;;

test_number 4 (
List.length tag_nwc_l = 367
);;

(* Center "ne" *)

let nam_cen = "ne";;
let sym_prt_cen = Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_center nam_cen;;

test_number 5 (
(sym_prt_cen : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center
           "ne"))))
);;

let sof_nwc_cbl_l = nwchem_center_block_string_off_list_of_basisset_name nam_bas;;

test_number 6 (
(sof_nwc_cbl_l : string list ) = 
["ne"; "au"]
);;


let sym_prt_cen_l = skeleton_as_center_symbol_list_of_basisset_name nam_bas;;

test_number 7 (
( sym_prt_cen_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center
            "ne"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center
            "au"))))]
);;

let sof_nwc_sbl_ll = List.map 
    (fun c -> nwchem_shell_block_string_off_list_of_center_name_of_basisset_name c nam_bas)
     sof_nwc_cbl_l ;;

test_number 8 (
(sof_nwc_sbl_ll : string list list ) =
  [["ne s 1 gaussian"; "ne s 2 gaussian"; "ne s 3 gaussian";
    "ne p 4 gaussian"; "ne p 5 gaussian"];

   ["au s 1 gaussian"; "au s 2 gaussian"; "au p 3 gaussian";
    "au p 4 gaussian"; "au p 5 gaussian"; "au d 6 gaussian";
    "au d 7 gaussian"]]
);;


let she_sym_l = shell_symmetry_list_of_skeleton_as_center_symbol_of_basisset_name sym_prt_cen nam_bas;;

test_number 9 (
(she_sym_l : string list ) = 
["s"; "p"]
);;

let sof_prt_ssy_l = skeleton_as_shell_symmetry_string_off_list_of_skeleton_as_center_symbol_of_basisset_name sym_prt_cen nam_bas ;;

test_number 10 (
(sof_prt_ssy_l : string list ) = 
["ne s"; "ne p"]
);;

let sym_prt_ssy_l = skeleton_as_shell_symmetry_symbol_list_of_skeleton_as_center_symbol_of_basisset_name sym_prt_cen nam_bas;;
 
test_number 11 (
(sym_prt_ssy_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
            "ne s"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
            "ne p"))))]
);;

(* Shell_symmetry "ne s" *)

let sym_prt_ssy = List.find (fun s -> Skeleton_symbol_v.string_off s = "ne s") sym_prt_ssy_l;;

test_number 12 (
( sym_prt_ssy : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
           "ne s"))))
);;

let sof_ssy = Skeleton_symbol_v.string_off sym_prt_ssy;;
let nam_cen = String_v.first_word_off_string sof_ssy;;

(** need tag_prt_all_list () 
let tag_prt_any_she = List.find 
      (fun (s, i) -> 
	(Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_center s)
	&& 
	(String.lowercase (Skeleton_symbol_v.string_off s) = nam_cen)
      )
    (tag_prt_all_list ())

 ;;

test_number 13 (
(tag_prt_any_she : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_set_body_symbol
    (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
      (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_for_any_shell_block "Ne")),
   [2; 1; 2; 2; 2; 5; 5; 3])
);;

let tag_prt_she_l = Son_protocole_tag_list_by_father_protocole_tag_provider_v.provide tag_prt_any_she;;

test_number 14 (
(tag_prt_she_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
[(Skeleton_symbol_t.Skeleton_set_body_symbol
    (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_block
          "Ne S 1 GAUSSIAN")),
  [1; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_block
         "Ne S 2 GAUSSIAN")),
    [2; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_block
         "Ne S 3 GAUSSIAN")),
    [3; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_block
         "Ne P 4 GAUSSIAN")),
    [4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_block
         "Ne P 5 GAUSSIAN")),
    [5; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

let nwchem_sof_she_l = nwchem_shell_block_string_off_list_of_center_name nam_cen;;

test_number 15 (
(nwchem_sof_she_l : string list ) =
  ["Ne S 1 GAUSSIAN"; "Ne S 2 GAUSSIAN"; "Ne S 3 GAUSSIAN";
   "Ne P 4 GAUSSIAN"; "Ne P 5 GAUSSIAN"]
);;

let nam_cns = Format.sprintf "%s %s" nam_cen (String_v.second_word_off_string sof_ssy);;

test_number 16 ( 
(nam_cns : string ) = 
"ne s"
);;

let str_sym = "p";;
let nwchem_sof_ssy_l = nwchem_shell_block_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 17 (
(nwchem_sof_ssy_l : string list ) = 
["Ne P 4 GAUSSIAN"; "Ne P 5 GAUSSIAN"]
);;

let prt_sof_ssy_l = skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 18 (
(prt_sof_ssy_l : string list ) = 
["ne p 2"; "ne p 3"]
);;


let nwchem_n_prt_ssy_l = nwchem_shell_string_off_n_skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 19 (
(nwchem_n_prt_ssy_l : (string * string) list ) =
  [("Ne P 4 GAUSSIAN", "ne p 2"); ("Ne P 5 GAUSSIAN", "ne p 3")]
);;

let sym_prt_l = List.map Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_shell_ordinal  prt_sof_ssy_l;;

test_number 20 (
( sym_prt_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "ne p 2"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "ne p 3"))))]
);;

let sof_sor = "ne s 1";;

let tag_prt_nvb = List.find 
    (fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_numerical_values_block s)
	&& 
      (String.lowercase (Skeleton_symbol_v.string_off s) = (sof_sor^" gaussian"))
    )
    (tag_prt_all_list ())
;;    

test_number 21 (
(tag_prt_nvb : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_set_body_symbol
    (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
      (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_numerical_values_block
        "Ne S 1 GAUSSIAN")),
   [2; 1; 2; 1; 2; 2; 2; 5; 5; 3])
);;

let tag_prt_nva_l = Son_protocole_tag_list_by_father_protocole_tag_provider_v.provide tag_prt_nvb;;

test_number 22 (
( tag_prt_nva_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_numerical_values
         "Ne S 1 GAUSSIAN 1")),
    [1; 2; 1; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_numerical_values
         "Ne S 1 GAUSSIAN 2")),
    [2; 2; 1; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_numerical_values
         "Ne S 1 GAUSSIAN 3")),
    [3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_numerical_values
         "Ne S 1 GAUSSIAN 4")),
    [4; 2; 1; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

let sof_nva_l = List.map (fun s -> String.lowercase (Skeleton_tag_v.string_off s)) tag_prt_nva_l;;

test_number 23 (
(sof_nva_l : string list ) =
  ["ne s 1 gaussian 1"; "ne s 1 gaussian 2"; "ne s 1 gaussian 3";
   "ne s 1 gaussian 4"]
);;

let sym_prt_sor = Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_shell_ordinal "ne s 2";;

test_number 24 (
( sym_prt_sor : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
           "ne s 2"))))
);;

let son_l = skeleton_as_aopef_symbol_list_of_skeleton_as_one_shell_ordinal_symbol sym_prt_sor;;

test_number 25 (
( son_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_single_scaled
            "ne s 2 1"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_single_scaled
            "ne s 2 2"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_single_scaled
            "ne s 2 3"))))]
);;

let sym_prt_sor = Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_shell_ordinal "ne p 2";;

test_number 26 (
( sym_prt_sor : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
           "ne p 2"))))
);;


let sof_sor = Skeleton_symbol_v.string_off sym_prt_sor;;

let nwchem_n_prt_sof_l = nwchem_shell_string_off_n_skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

let sof_nwchem = Duo_list_v.left_of_right_off_duo_list sof_sor nwchem_n_prt_sof_l;;

let tag_prt_nvb = List.find 
    (fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_numerical_values_block s)
	&& 
	(Skeleton_symbol_v.string_off s = sof_nwchem)
    )
    (tag_prt_all_list ())
;;    

test_number 27 (
(tag_prt_nvb : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_set_body_symbol
    (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
      (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_numerical_values_block
        "Ne P 4 GAUSSIAN")),
   [2; 4; 2; 1; 2; 2; 2; 5; 5; 3])
);;

let tag_prt_nva_l = Son_protocole_tag_list_by_father_protocole_tag_provider_v.provide tag_prt_nvb;;

test_number 28 (
( tag_prt_nva_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
 [(Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_numerical_values
         "Ne P 4 GAUSSIAN 1")),
    [1; 2; 4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_numerical_values
         "Ne P 4 GAUSSIAN 2")),
    [2; 2; 4; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

let sof_nva_l = List.map (fun s -> Skeleton_tag_v.string_off s) tag_prt_nva_l;;

test_number 29 (
(sof_nva_l : string list ) =
["Ne P 4 GAUSSIAN 1"; "Ne P 4 GAUSSIAN 2"]
);;

let sof_nva_l = nwchem_numerical_value_string_off_list_of_shell_ordinal_string_off sof_sor;;

test_number 30 (
(sof_nva_l : string list ) =
["Ne P 4 GAUSSIAN 1"; "Ne P 4 GAUSSIAN 2"]
);;

let sym_prt_sor = Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_shell_ordinal "ne s 2";;

test_number 31 (
( sym_prt_sor : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
           "ne s 2"))))
);;

let son_l = skeleton_as_aopef_symbol_list_of_skeleton_as_one_shell_ordinal_symbol sym_prt_sor;;

test_number 32 (
( son_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_single_scaled
            "ne s 2 1"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_single_scaled
            "ne s 2 2"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_single_scaled
            "ne s 2 3"))))]
);;

let sym_prt_sor = Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_shell_ordinal "ne p 2";;

test_number 33 (
( sym_prt_sor : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
           "ne p 2"))))
);;

let son_l = skeleton_as_aopef_symbol_list_of_skeleton_as_one_shell_ordinal_symbol sym_prt_sor;;

test_number 34 (
( son_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_single_scaled
            "ne p 2 1"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_single_scaled
            "ne p 2 2"))))]
);;


(* Center "au" *)

let nam_cen = "au";;
let sym_prt_cen = Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_center nam_cen;;

test_number 35 (
(sym_prt_cen : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center
           "au"))))
);;

let sof_prt_she_l = nwchem_shell_block_string_off_list_of_center_name nam_cen;;

test_number 36 (
(sof_prt_she_l : string list ) =
 ["Au S 1 GAUSSIAN"; "Au S 2 GAUSSIAN"; "Au P 3 GAUSSIAN";
   "Au P 4 GAUSSIAN"; "Au P 5 GAUSSIAN"; "Au D 6 GAUSSIAN";
   "Au D 7 GAUSSIAN"]
);;

let she_sym_l = shell_symmetry_list_of_skeleton_as_center_symbol sym_prt_cen;;

test_number 37 (
(she_sym_l : string list ) = 
["s"; "p"; "d"]
);;

let sof_prt_ssy_l = skeleton_as_shell_symmetry_string_off_list_of_skeleton_as_center_symbol sym_prt_cen;;

test_number 38 (
(sof_prt_ssy_l : string list ) = 
["au s"; "au p"; "au d"]
);;

let sym_prt_ssy_l = skeleton_as_shell_symmetry_symbol_list_of_skeleton_as_center_symbol sym_prt_cen;;
 
test_number 39 (
(sym_prt_ssy_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
            "au s"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
            "au p"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
            "au d"))))]
);;

(* Shell_symmetry "au s" *)

let sym_prt_ssy = Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_shell_symmetry "au s";;

test_number 40 (
( sym_prt_ssy : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
           "au s"))))
);;

let sof_ssy = Skeleton_symbol_v.string_off sym_prt_ssy;;
let nam_cen = String_v.first_word_off_string sof_ssy;;

let tag_prt_any_she = List.find 
      (fun (s, i) -> 
	(Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_center s)
	&& 
	(String.lowercase (Skeleton_symbol_v.string_off s) = nam_cen)
      )
    (tag_prt_all_list ())

 ;;

test_number 41 (
(tag_prt_any_she : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
 (Skeleton_symbol_t.Skeleton_set_body_symbol
    (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
      (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_for_any_shell_block "Au")),
   [2; 2; 2; 2; 2; 5; 5; 3])
);;

let tag_prt_she_l = Son_protocole_tag_list_by_father_protocole_tag_provider_v.provide tag_prt_any_she;;

test_number 42 (
(tag_prt_she_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_block
         "Au S 1 GAUSSIAN")),
    [1; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_block
         "Au S 2 GAUSSIAN")),
    [2; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_block
         "Au P 3 GAUSSIAN")),
    [3; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_block
         "Au P 4 GAUSSIAN")),
    [4; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_block
         "Au P 5 GAUSSIAN")),
    [5; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_block
         "Au D 6 GAUSSIAN")),
    [6; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_block
         "Au D 7 GAUSSIAN")),
    [7; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

let nwchem_sof_she_l = nwchem_shell_block_string_off_list_of_center_name nam_cen;;

test_number 43 (
(nwchem_sof_she_l : string list ) =
  ["Au S 1 GAUSSIAN"; "Au S 2 GAUSSIAN"; "Au P 3 GAUSSIAN";
   "Au P 4 GAUSSIAN"; "Au P 5 GAUSSIAN"; "Au D 6 GAUSSIAN";
   "Au D 7 GAUSSIAN"]
);;

let nam_cns = Format.sprintf "%s %s" nam_cen (String_v.second_word_off_string sof_ssy);;

test_number 44 ( 
(nam_cns : string ) = 
"au s"
);;

(* Au Symmetry "p" *)

let str_sym = "p";;
let nwchem_sof_ssy_l = nwchem_shell_block_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 45 (
(nwchem_sof_ssy_l : string list ) = 
 ["Au P 3 GAUSSIAN"; "Au P 4 GAUSSIAN"; "Au P 5 GAUSSIAN"]
);;

let prt_sof_ssy_l = skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 46 (
(prt_sof_ssy_l : string list ) = 
["au p 2"; "au p 3"; "au p 4"]
);;

let nwchem_n_prt_ssy_l = nwchem_shell_string_off_n_skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 47 (
(nwchem_n_prt_ssy_l : (string * string) list ) =
  [("Au P 3 GAUSSIAN", "au p 2"); ("Au P 4 GAUSSIAN", "au p 3");
   ("Au P 5 GAUSSIAN", "au p 4")]
);;

let sym_prt_l = List.map Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_shell_ordinal  prt_sof_ssy_l;;

test_number 48 (
( sym_prt_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "au p 2"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "au p 3"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "au p 4"))))]
);;

(* Au Shell Ordinal S 1 *)

let sof_sor = "au s 1";;

let tag_prt_nvb = List.find 
    (fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_numerical_values_block s)
	&& 
      (String.lowercase (Skeleton_symbol_v.string_off s) = (sof_sor^" gaussian"))
    )
    (tag_prt_all_list ())
;;    

test_number 49 (
(tag_prt_nvb : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_set_body_symbol
    (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
      (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_numerical_values_block
        "Au S 1 GAUSSIAN")),
   [2; 1; 2; 2; 2; 2; 2; 5; 5; 3])
);;

let tag_prt_nva_l = Son_protocole_tag_list_by_father_protocole_tag_provider_v.provide tag_prt_nvb;;

test_number 50 (
( tag_prt_nva_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_numerical_values
         "Au S 1 GAUSSIAN 1")),
    [1; 2; 1; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_numerical_values
         "Au S 1 GAUSSIAN 2")),
    [2; 2; 1; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_numerical_values
         "Au S 1 GAUSSIAN 3")),
    [3; 2; 1; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

let sof_nva_l = List.map (fun s -> String.lowercase (Skeleton_tag_v.string_off s)) tag_prt_nva_l;;

test_number 51 (
(sof_nva_l : string list ) =
  ["au s 1 gaussian 1"; "au s 1 gaussian 2"; "au s 1 gaussian 3"]
);;

let sym_prt_sor = Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_shell_ordinal "au s 2";;

test_number 52 (
( sym_prt_sor : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
           "au s 2"))))
);;

let son_l = skeleton_as_aopef_symbol_list_of_skeleton_as_one_shell_ordinal_symbol sym_prt_sor;;

test_number 53 (
( son_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_single_scaled
            "au s 2 1"))))]
);;

let sym_prt_sor = Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_shell_ordinal "au p 2";;

test_number 54 (
( sym_prt_sor : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
           "au p 2"))))
);;


let sof_sor = Skeleton_symbol_v.string_off sym_prt_sor;;

let nwchem_n_prt_sof_l = nwchem_shell_string_off_n_skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

let sof_nwchem = Duo_list_v.left_of_right_off_duo_list sof_sor nwchem_n_prt_sof_l;;

let tag_prt_nvb = List.find 
    (fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_numerical_values_block s)
	&& 
	(Skeleton_symbol_v.string_off s = sof_nwchem)
    )
    (tag_prt_all_list ())
;;    

test_number 55 (
(tag_prt_nvb : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_set_body_symbol
    (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
      (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_numerical_values_block
        "Au P 3 GAUSSIAN")),
   [2; 3; 2; 2; 2; 2; 2; 5; 5; 3])
);;

let tag_prt_nva_l = Son_protocole_tag_list_by_father_protocole_tag_provider_v.provide tag_prt_nvb;;

test_number 56 (
( tag_prt_nva_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_numerical_values
         "Au P 3 GAUSSIAN 1")),
    [1; 2; 3; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_node_symbol
       (Skeleton_set_body_node_symbol_t.Skeleton_set_body_centered_aopef_set_numerical_values
         "Au P 3 GAUSSIAN 2")),
    [2; 2; 3; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

let sof_nva_l = List.map (fun s -> Skeleton_tag_v.string_off s) tag_prt_nva_l;;

test_number 57 (
(sof_nva_l : string list ) =
["Au P 3 GAUSSIAN 1"; "Au P 3 GAUSSIAN 2"]
);;

let sof_nva_l = nwchem_numerical_value_string_off_list_of_shell_ordinal_string_off sof_sor;;

test_number 58 (
(sof_nva_l : string list ) =
["Au P 3 GAUSSIAN 1"; "Au P 3 GAUSSIAN 2"]
);;

let sym_prt_sor = Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_shell_ordinal "au s 2";;

test_number 59 (
( sym_prt_sor : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
           "au s 2"))))
);;

let son_l = skeleton_as_aopef_symbol_list_of_skeleton_as_one_shell_ordinal_symbol sym_prt_sor;;

test_number 60 (
( son_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_single_scaled
            "au s 2 1"))))]
);;

let sym_prt_sor = Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_shell_ordinal "au p 2";;

test_number 61 (
( sym_prt_sor : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
           "au p 2"))))
);;

let son_l = skeleton_as_aopef_symbol_list_of_skeleton_as_one_shell_ordinal_symbol sym_prt_sor;;

test_number 62 (
( son_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_single_scaled
            "au p 2 1"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_single_scaled
            "au p 2 2"))))]
);;


(* Au Symmetry "d" *)

let str_sym = "d";;
let nwchem_sof_ssy_l = nwchem_shell_block_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 63 (
(nwchem_sof_ssy_l : string list ) = 
["Au D 6 GAUSSIAN"; "Au D 7 GAUSSIAN"]
);;

let prt_sof_ssy_l = skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 64 (
(prt_sof_ssy_l : string list ) = 
["au d 3"; "au d 4"]
);;

let nwchem_n_prt_ssy_l = nwchem_shell_string_off_n_skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 65 (
(nwchem_n_prt_ssy_l : (string * string) list ) =
  [("Au D 6 GAUSSIAN", "au d 3"); ("Au D 7 GAUSSIAN", "au d 4")]
);;

let sym_prt_l = List.map Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_shell_ordinal  prt_sof_ssy_l;;

test_number 66 (
( sym_prt_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "au d 3"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "au d 4"))))]
);;

(* Shell Ordinal "au d 3" *)

let sof_sor = "au d 3";;

let sym_prt_sor = Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_shell_ordinal sof_sor;;

test_number 67 (
( sym_prt_sor : Skeleton_symbol_t.skeleton_symbol ) =
 Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
           "au d 3"))))
);;

let son_l = skeleton_as_aopef_symbol_list_of_skeleton_as_one_shell_ordinal_symbol sym_prt_sor;;

test_number 68 (
( son_l : Skeleton_symbol_t.skeleton_symbol list ) = 
 [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_single_scaled
            "au d 3 1"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_single_scaled
            "au d 3 2"))))]
);;

(* Scaled Single "au d 3 2" *)

let sof_sor = "au d 3 2";;

let sym_prt_sor = Skeleton_symbol_v.skeleton_set_fence_centered_aopef_set_single_scaled_constructor sof_sor;;

test_number 69 (
(sym_prt_sor : Skeleton_symbol_t.skeleton_symbol) =
  Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_single_scaled
           "au d 3 2"))))
);;

*)
