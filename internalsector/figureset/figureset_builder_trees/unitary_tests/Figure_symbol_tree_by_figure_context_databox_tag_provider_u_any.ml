open Make_test_v;;

testing "Figure_symbol_tree_by_figure_context_databox_tag_provider_v with
    Figure_symbol_tree_by_figure_context_databox_tag_provider_u_any.ml";;

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
   #use "Figure_symbol_tree_by_figure_context_databox_tag_provider_u_any.ml";; 

*)

(* Debug *)



(* Database file *)

let nam_dgn = "db1points";;
let nam_bas = "lanl2dz";;
Parameters_general_register_v.store "databox-name" nam_bas;;

open Figure_symbol_tree_by_figure_context_databox_tag_provider_v;;

(* Databox *)

let tag_dcb = Figure_context_databox_tag_by_databox_name_provider_v.provide nam_bas;;

test_number 1 (
(tag_dcb : Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor "lanl2dz",
   [5; 5; 3])
);;

let sof_dcb = Figure_context_databox_tag_v.string_off tag_dcb ;;
let sym_fig_bas = Figure_symbol_v.figure_context_databox_constructor sof_dcb;; 

test_number 2 (
(sym_fig_bas : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_context_symbol
   (Figure_context_symbol_t.Figure_context_databox_symbol
     (Figure_context_databox_symbol_t.Figure_context_databox_constructor
       "lanl2dz"))
);;

let tag_dgn_l = 
  Dgn_tag_all_list_by_figure_context_databox_tag_provider_v.provide
    tag_dcb;;

(* Any_center *)

let tag_dgn_any_cen = List.find
      (fun (s, i) -> 
	(Dgn_symbol_v.is_dgn_body_node_aoset_anycenter_block s)
      )
    (tag_dgn_all_list ())
;;

test_number 3 (
(tag_dgn_any_cen : Dgn_symbol_t.dgn_symbol Tag_t.tag ) =
  (Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
      (Dgn_body_node_symbol_t.Dgn_body_node_aoset_anycenter_block
        "LANL2DZ")),
   [2; 2; 2; 5; 5; 3])
);;

let tag_dgn_cen_l = Son_dgn_tag_list_by_father_dgn_tag_provider_v.provide tag_dgn_any_cen;;

test_number 4 (
( tag_dgn_cen_l : Dgn_symbol_t.dgn_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_onecenter_block "Ne")),
    [1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_onecenter_block "Au")),
    [2; 2; 2; 2; 5; 5; 3])]
);;

let sof_dgn_cen_l = dgn_center_block_string_off_list_of_unit ();;

(* Center "ne" *)

let nam_cen = "ne";;
let sym_fig_cen = Figure_symbol_v.figure_set_body_centered_aopefset_onecenter nam_cen;;

test_number 5 (
(sym_fig_cen : Figure_symbol_t.figure_symbol ) =
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
         (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_onecenter
           "ne"))))
);;

let sof_dgn_she_l = dgn_shell_block_string_off_list_of_center_name nam_cen;;

test_number 6 (
(sof_dgn_she_l : string list ) =
  ["Ne S 1 GAUSSIAN"; "Ne S 2 GAUSSIAN"; "Ne S 3 GAUSSIAN";
   "Ne P 4 GAUSSIAN"; "Ne P 5 GAUSSIAN"]
);;

let she_sym_l = shell_symmetry_list_of_figure_as_center_symbol sym_fig_cen;;

test_number 7 (
(she_sym_l : string list ) = 
["s"; "p"]
);;

let sof_fig_ssy_l = figure_as_shell_symmetry_string_off_list_of_figure_as_center_symbol sym_fig_cen;;

test_number 8 (
(sof_fig_ssy_l : string list ) = 
["ne s"; "ne p"]
);;

let sym_fig_ssy_l = figure_as_shell_symmetry_symbol_list_of_figure_as_center_symbol sym_fig_cen;;
 
test_number 9 (
(sym_fig_ssy_l : Figure_symbol_t.figure_symbol list ) =
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry
            "ne s"))));
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry
            "ne p"))))]
);;

(* Shell_symmetry "ne s" *)

let sym_fig_ssy = Figure_symbol_v.figure_set_body_centered_aopefset_shellsymmetry "ne s";;

test_number 10 (
( sym_fig_ssy : Figure_symbol_t.figure_symbol ) =
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
         (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry
           "ne s"))))
);;

let sof_ssy = Figure_symbol_v.string_off sym_fig_ssy;;
let nam_cen = String_v.first_word_off_string sof_ssy;;

let tag_dgn_any_she = List.find 
      (fun (s, i) -> 
	(Dgn_symbol_v.is_dgn_body_node_aoset_anyshell_block s)
	&& 
	(String.lowercase (Dgn_symbol_v.string_off s) = nam_cen)
      )
    (tag_dgn_all_list ())

 ;;

test_number 11 (
(tag_dgn_any_she : Dgn_symbol_t.dgn_symbol Tag_t.tag ) =
  (Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
      (Dgn_body_node_symbol_t.Dgn_body_node_aoset_anyshell_block "Ne")),
   [2; 1; 2; 2; 2; 5; 5; 3])
);;

let tag_dgn_she_l = Son_dgn_tag_list_by_father_dgn_tag_provider_v.provide tag_dgn_any_she;;

test_number 12 (
(tag_dgn_she_l : Dgn_symbol_t.dgn_symbol Tag_t.tag list ) =
[(Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_oneshell_block
          "Ne S 1 GAUSSIAN")),
  [1; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_oneshell_block
         "Ne S 2 GAUSSIAN")),
    [2; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_oneshell_block
         "Ne S 3 GAUSSIAN")),
    [3; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_oneshell_block
         "Ne P 4 GAUSSIAN")),
    [4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_oneshell_block
         "Ne P 5 GAUSSIAN")),
    [5; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

let dgn_sof_she_l = dgn_shell_block_string_off_list_of_center_name nam_cen;;

test_number 13 (
(dgn_sof_she_l : string list ) =
  ["Ne S 1 GAUSSIAN"; "Ne S 2 GAUSSIAN"; "Ne S 3 GAUSSIAN";
   "Ne P 4 GAUSSIAN"; "Ne P 5 GAUSSIAN"]
);;

let nam_cns = Format.sprintf "%s %s" nam_cen (String_v.second_word_off_string sof_ssy);;

test_number 14 ( 
(nam_cns : string ) = 
"ne s"
);;

let str_sym = "p";;
let dgn_sof_ssy_l = dgn_shell_block_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 15 (
(dgn_sof_ssy_l : string list ) = 
["Ne P 4 GAUSSIAN"; "Ne P 5 GAUSSIAN"]
);;

let prt_sof_ssy_l = figure_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 16 (
(prt_sof_ssy_l : string list ) = 
["ne p 2"; "ne p 3"]
);;


let dgn_n_fig_ssy_l = dgn_shell_string_off_n_figure_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 17 (
(dgn_n_fig_ssy_l : (string * string) list ) =
  [("Ne P 4 GAUSSIAN", "ne p 2"); ("Ne P 5 GAUSSIAN", "ne p 3")]
);;

let sym_fig_l = List.map Figure_symbol_v.figure_set_body_centered_aopefset_shellordinal  prt_sof_ssy_l;;

test_number 18 (
( sym_fig_l : Figure_symbol_t.figure_symbol list ) =
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
            "ne p 2"))));
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
            "ne p 3"))))]
);;

let sof_sor = "ne s 1";;

let tag_dgn_nvb = List.find 
    (fun (s, i) -> 
      (Dgn_symbol_v.is_dgn_body_node_aoset_numerical_values_block s)
	&& 
      (String.lowercase (Dgn_symbol_v.string_off s) = (sof_sor^" gaussian"))
    )
    (tag_dgn_all_list ())
;;    

test_number 19 (
(tag_dgn_nvb : Dgn_symbol_t.dgn_symbol Tag_t.tag ) =
  (Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
      (Dgn_body_node_symbol_t.Dgn_body_node_aoset_numerical_values_block
        "Ne S 1 GAUSSIAN")),
   [2; 1; 2; 1; 2; 2; 2; 5; 5; 3])
);;

let tag_dgn_nva_l = Son_dgn_tag_list_by_father_dgn_tag_provider_v.provide tag_dgn_nvb;;

test_number 20 (
( tag_dgn_nva_l : Dgn_symbol_t.dgn_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_numerical_values
         "Ne S 1 GAUSSIAN 1")),
    [1; 2; 1; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_numerical_values
         "Ne S 1 GAUSSIAN 2")),
    [2; 2; 1; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_numerical_values
         "Ne S 1 GAUSSIAN 3")),
    [3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_numerical_values
         "Ne S 1 GAUSSIAN 4")),
    [4; 2; 1; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

let sof_nva_l = List.map (fun s -> String.lowercase (Dgn_tag_v.string_off s)) tag_dgn_nva_l;;

test_number 21 (
(sof_nva_l : string list ) =
  ["ne s 1 gaussian 1"; "ne s 1 gaussian 2"; "ne s 1 gaussian 3";
   "ne s 1 gaussian 4"]
);;

let sym_fig_sor = Figure_symbol_v.figure_set_body_centered_aopefset_shellordinal "ne s 2";;

test_number 22 (
( sym_fig_sor : Figure_symbol_t.figure_symbol ) =
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
         (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
           "ne s 2"))))
);;

let son_l = figure_as_aopef_single_scaled_symbol_list_of_figure_as_a_shell_ordinal_symbol sym_fig_sor;;

test_number 23 (
( son_l : Figure_symbol_t.figure_symbol list ) =
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopef_single_scaled
            "ne s 2 1"))));
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopef_single_scaled
            "ne s 2 2"))));
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopef_single_scaled
            "ne s 2 3"))))]
);;

let sym_fig_sor = Figure_symbol_v.figure_set_body_centered_aopefset_shellordinal "ne p 2";;

test_number 24 (
( sym_fig_sor : Figure_symbol_t.figure_symbol ) =
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
         (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
           "ne p 2"))))
);;


let sof_sor = Figure_symbol_v.string_off sym_fig_sor;;

let dgn_n_fig_sof_l = dgn_shell_string_off_n_figure_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

let sof_dgn = Duo_list_v.left_of_right_off_duo_list sof_sor dgn_n_fig_sof_l;;

let tag_dgn_nvb = List.find 
    (fun (s, i) -> 
      (Dgn_symbol_v.is_dgn_body_node_aoset_numerical_values_block s)
	&& 
	(Dgn_symbol_v.string_off s = sof_dgn)
    )
    (tag_dgn_all_list ())
;;    

test_number 25 (
(tag_dgn_nvb : Dgn_symbol_t.dgn_symbol Tag_t.tag ) =
  (Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
      (Dgn_body_node_symbol_t.Dgn_body_node_aoset_numerical_values_block
        "Ne P 4 GAUSSIAN")),
   [2; 4; 2; 1; 2; 2; 2; 5; 5; 3])
);;

let tag_dgn_nva_l = Son_dgn_tag_list_by_father_dgn_tag_provider_v.provide tag_dgn_nvb;;

test_number 26 (
( tag_dgn_nva_l : Dgn_symbol_t.dgn_symbol Tag_t.tag list ) =
 [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_numerical_values
         "Ne P 4 GAUSSIAN 1")),
    [1; 2; 4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_numerical_values
         "Ne P 4 GAUSSIAN 2")),
    [2; 2; 4; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

let sof_nva_l = List.map (fun s -> Dgn_tag_v.string_off s) tag_dgn_nva_l;;

test_number 27 (
(sof_nva_l : string list ) =
["Ne P 4 GAUSSIAN 1"; "Ne P 4 GAUSSIAN 2"]
);;

let sof_nva_l = dgn_numerical_value_string_off_list_of_shell_ordinal_string_off sof_sor;;

test_number 28 (
(sof_nva_l : string list ) =
["Ne P 4 GAUSSIAN 1"; "Ne P 4 GAUSSIAN 2"]
);;

let sym_fig_sor = Figure_symbol_v.figure_set_body_centered_aopefset_shellordinal "ne s 2";;

test_number 29 (
( sym_fig_sor : Figure_symbol_t.figure_symbol ) =
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
         (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
           "ne s 2"))))
);;

let son_l = figure_as_aopef_single_scaled_symbol_list_of_figure_as_a_shell_ordinal_symbol sym_fig_sor;;

test_number 30 (
( son_l : Figure_symbol_t.figure_symbol list ) =
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopef_single_scaled
            "ne s 2 1"))));
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopef_single_scaled
            "ne s 2 2"))));
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopef_single_scaled
            "ne s 2 3"))))]
);;

let sym_fig_sor = Figure_symbol_v.figure_set_body_centered_aopefset_shellordinal "ne p 2";;

test_number 31 (
( sym_fig_sor : Figure_symbol_t.figure_symbol ) =
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
         (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
           "ne p 2"))))
);;

let son_l = figure_as_aopef_single_scaled_symbol_list_of_figure_as_a_shell_ordinal_symbol sym_fig_sor;;

test_number 32 (
( son_l : Figure_symbol_t.figure_symbol list ) =
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopef_single_scaled
            "ne p 2 1"))));
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopef_single_scaled
            "ne p 2 2"))))]
);;


(* Center "au" *)

let nam_cen = "au";;
let sym_fig_cen = Figure_symbol_v.figure_set_body_centered_aopefset_onecenter nam_cen;;

test_number 33 (
(sym_fig_cen : Figure_symbol_t.figure_symbol ) =
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
         (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_onecenter
           "au"))))
);;

let sof_dgn_she_l = dgn_shell_block_string_off_list_of_center_name nam_cen;;

test_number 34 (
(sof_dgn_she_l : string list ) =
 ["Au S 1 GAUSSIAN"; "Au S 2 GAUSSIAN"; "Au P 3 GAUSSIAN";
   "Au P 4 GAUSSIAN"; "Au P 5 GAUSSIAN"; "Au D 6 GAUSSIAN";
   "Au D 7 GAUSSIAN"]
);;

let she_sym_l = shell_symmetry_list_of_figure_as_center_symbol sym_fig_cen;;

test_number 35 (
(she_sym_l : string list ) = 
["s"; "p"; "d"]
);;

let sof_fig_ssy_l = figure_as_shell_symmetry_string_off_list_of_figure_as_center_symbol sym_fig_cen;;

test_number 36 (
(sof_fig_ssy_l : string list ) = 
["au s"; "au p"; "au d"]
);;

let sym_fig_ssy_l = figure_as_shell_symmetry_symbol_list_of_figure_as_center_symbol sym_fig_cen;;
 
test_number 37 (
(sym_fig_ssy_l : Figure_symbol_t.figure_symbol list ) =
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry
            "au s"))));
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry
            "au p"))));
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry
            "au d"))))]
);;

(* Shell_symmetry "au s" *)

let sym_fig_ssy = Figure_symbol_v.figure_set_body_centered_aopefset_shellsymmetry "au s";;

test_number 38 (
( sym_fig_ssy : Figure_symbol_t.figure_symbol ) =
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
         (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry
           "au s"))))
);;

let sof_ssy = Figure_symbol_v.string_off sym_fig_ssy;;
let nam_cen = String_v.first_word_off_string sof_ssy;;

let tag_dgn_any_she = List.find 
      (fun (s, i) -> 
	(Dgn_symbol_v.is_dgn_body_node_aoset_anyshell_block s)
	&& 
	(String.lowercase (Dgn_symbol_v.string_off s) = nam_cen)
      )
    (tag_dgn_all_list ())

 ;;

test_number 39 (
(tag_dgn_any_she : Dgn_symbol_t.dgn_symbol Tag_t.tag ) =
 (Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
      (Dgn_body_node_symbol_t.Dgn_body_node_aoset_anyshell_block "Au")),
   [2; 2; 2; 2; 2; 5; 5; 3])
);;

let tag_dgn_she_l = Son_dgn_tag_list_by_father_dgn_tag_provider_v.provide tag_dgn_any_she;;

test_number 40 (
(tag_dgn_she_l : Dgn_symbol_t.dgn_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_oneshell_block
         "Au S 1 GAUSSIAN")),
    [1; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_oneshell_block
         "Au S 2 GAUSSIAN")),
    [2; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_oneshell_block
         "Au P 3 GAUSSIAN")),
    [3; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_oneshell_block
         "Au P 4 GAUSSIAN")),
    [4; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_oneshell_block
         "Au P 5 GAUSSIAN")),
    [5; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_oneshell_block
         "Au D 6 GAUSSIAN")),
    [6; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_oneshell_block
         "Au D 7 GAUSSIAN")),
    [7; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

let dgn_sof_she_l = dgn_shell_block_string_off_list_of_center_name nam_cen;;

test_number 41 (
(dgn_sof_she_l : string list ) =
  ["Au S 1 GAUSSIAN"; "Au S 2 GAUSSIAN"; "Au P 3 GAUSSIAN";
   "Au P 4 GAUSSIAN"; "Au P 5 GAUSSIAN"; "Au D 6 GAUSSIAN";
   "Au D 7 GAUSSIAN"]
);;

let nam_cns = Format.sprintf "%s %s" nam_cen (String_v.second_word_off_string sof_ssy);;

test_number 42 ( 
(nam_cns : string ) = 
"au s"
);;

(* Au Symmetry "p" *)

let str_sym = "p";;
let dgn_sof_ssy_l = dgn_shell_block_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 43 (
(dgn_sof_ssy_l : string list ) = 
 ["Au P 3 GAUSSIAN"; "Au P 4 GAUSSIAN"; "Au P 5 GAUSSIAN"]
);;

let prt_sof_ssy_l = figure_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 44 (
(prt_sof_ssy_l : string list ) = 
["au p 2"; "au p 3"; "au p 4"]
);;

let dgn_n_fig_ssy_l = dgn_shell_string_off_n_figure_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 45 (
(dgn_n_fig_ssy_l : (string * string) list ) =
  [("Au P 3 GAUSSIAN", "au p 2"); ("Au P 4 GAUSSIAN", "au p 3");
   ("Au P 5 GAUSSIAN", "au p 4")]
);;

let sym_fig_l = List.map Figure_symbol_v.figure_set_body_centered_aopefset_shellordinal  prt_sof_ssy_l;;

test_number 46 (
( sym_fig_l : Figure_symbol_t.figure_symbol list ) =
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
            "au p 2"))));
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
            "au p 3"))));
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
            "au p 4"))))]
);;

(* Au Shell Ordinal S 1 *)

let sof_sor = "au s 1";;

let tag_dgn_nvb = List.find 
    (fun (s, i) -> 
      (Dgn_symbol_v.is_dgn_body_node_aoset_numerical_values_block s)
	&& 
      (String.lowercase (Dgn_symbol_v.string_off s) = (sof_sor^" gaussian"))
    )
    (tag_dgn_all_list ())
;;    

test_number 47 (
(tag_dgn_nvb : Dgn_symbol_t.dgn_symbol Tag_t.tag ) =
  (Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
      (Dgn_body_node_symbol_t.Dgn_body_node_aoset_numerical_values_block
        "Au S 1 GAUSSIAN")),
   [2; 1; 2; 2; 2; 2; 2; 5; 5; 3])
);;

let tag_dgn_nva_l = Son_dgn_tag_list_by_father_dgn_tag_provider_v.provide tag_dgn_nvb;;

test_number 48 (
( tag_dgn_nva_l : Dgn_symbol_t.dgn_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_numerical_values
         "Au S 1 GAUSSIAN 1")),
    [1; 2; 1; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_numerical_values
         "Au S 1 GAUSSIAN 2")),
    [2; 2; 1; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_numerical_values
         "Au S 1 GAUSSIAN 3")),
    [3; 2; 1; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

let sof_nva_l = List.map (fun s -> String.lowercase (Dgn_tag_v.string_off s)) tag_dgn_nva_l;;

test_number 49 (
(sof_nva_l : string list ) =
  ["au s 1 gaussian 1"; "au s 1 gaussian 2"; "au s 1 gaussian 3"]
);;

let sym_fig_sor = Figure_symbol_v.figure_set_body_centered_aopefset_shellordinal "au s 2";;

test_number 50 (
( sym_fig_sor : Figure_symbol_t.figure_symbol ) =
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
         (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
           "au s 2"))))
);;

let son_l = figure_as_aopef_single_scaled_symbol_list_of_figure_as_a_shell_ordinal_symbol sym_fig_sor;;

test_number 51 (
( son_l : Figure_symbol_t.figure_symbol list ) =
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopef_single_scaled
            "au s 2 1"))))]
);;

let sym_fig_sor = Figure_symbol_v.figure_set_body_centered_aopefset_shellordinal "au p 2";;

test_number 52 (
( sym_fig_sor : Figure_symbol_t.figure_symbol ) =
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
         (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
           "au p 2"))))
);;


let sof_sor = Figure_symbol_v.string_off sym_fig_sor;;

let dgn_n_fig_sof_l = dgn_shell_string_off_n_figure_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

let sof_dgn = Duo_list_v.left_of_right_off_duo_list sof_sor dgn_n_fig_sof_l;;

let tag_dgn_nvb = List.find 
    (fun (s, i) -> 
      (Dgn_symbol_v.is_dgn_body_node_aoset_numerical_values_block s)
	&& 
	(Dgn_symbol_v.string_off s = sof_dgn)
    )
    (tag_dgn_all_list ())
;;    

test_number 53 (
(tag_dgn_nvb : Dgn_symbol_t.dgn_symbol Tag_t.tag ) =
  (Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
      (Dgn_body_node_symbol_t.Dgn_body_node_aoset_numerical_values_block
        "Au P 3 GAUSSIAN")),
   [2; 3; 2; 2; 2; 2; 2; 5; 5; 3])
);;

let tag_dgn_nva_l = Son_dgn_tag_list_by_father_dgn_tag_provider_v.provide tag_dgn_nvb;;

test_number 54 (
( tag_dgn_nva_l : Dgn_symbol_t.dgn_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_numerical_values
         "Au P 3 GAUSSIAN 1")),
    [1; 2; 3; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_numerical_values
         "Au P 3 GAUSSIAN 2")),
    [2; 2; 3; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

let sof_nva_l = List.map (fun s -> Dgn_tag_v.string_off s) tag_dgn_nva_l;;

test_number 55 (
(sof_nva_l : string list ) =
["Au P 3 GAUSSIAN 1"; "Au P 3 GAUSSIAN 2"]
);;

let sof_nva_l = dgn_numerical_value_string_off_list_of_shell_ordinal_string_off sof_sor;;

test_number 56 (
(sof_nva_l : string list ) =
["Au P 3 GAUSSIAN 1"; "Au P 3 GAUSSIAN 2"]
);;

let sym_fig_sor = Figure_symbol_v.figure_set_body_centered_aopefset_shellordinal "au s 2";;

test_number 57 (
( sym_fig_sor : Figure_symbol_t.figure_symbol ) =
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
         (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
           "au s 2"))))
);;

let son_l = figure_as_aopef_single_scaled_symbol_list_of_figure_as_a_shell_ordinal_symbol sym_fig_sor;;

test_number 58 (
( son_l : Figure_symbol_t.figure_symbol list ) =
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopef_single_scaled
            "au s 2 1"))))]
);;

let sym_fig_sor = Figure_symbol_v.figure_set_body_centered_aopefset_shellordinal "au p 2";;

test_number 59 (
( sym_fig_sor : Figure_symbol_t.figure_symbol ) =
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
         (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
           "au p 2"))))
);;

let son_l = figure_as_aopef_single_scaled_symbol_list_of_figure_as_a_shell_ordinal_symbol sym_fig_sor;;

test_number 60 (
( son_l : Figure_symbol_t.figure_symbol list ) =
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopef_single_scaled
            "au p 2 1"))));
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopef_single_scaled
            "au p 2 2"))))]
);;


(* Au Symmetry "d" *)

let str_sym = "d";;
let dgn_sof_ssy_l = dgn_shell_block_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 61 (
(dgn_sof_ssy_l : string list ) = 
["Au D 6 GAUSSIAN"; "Au D 7 GAUSSIAN"]
);;

let prt_sof_ssy_l = figure_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 62 (
(prt_sof_ssy_l : string list ) = 
["au d 3"; "au d 4"]
);;

let dgn_n_fig_ssy_l = dgn_shell_string_off_n_figure_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry nam_cen str_sym;;

test_number 63 (
(dgn_n_fig_ssy_l : (string * string) list ) =
  [("Au D 6 GAUSSIAN", "au d 3"); ("Au D 7 GAUSSIAN", "au d 4")]
);;

let sym_fig_l = List.map Figure_symbol_v.figure_set_body_centered_aopefset_shellordinal  prt_sof_ssy_l;;

test_number 64 (
( sym_fig_l : Figure_symbol_t.figure_symbol list ) =
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
            "au d 3"))));
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
            "au d 4"))))]
);;

(* Shell Ordinal "au d 3" *)

let sof_sor = "au d 3";;

let sym_fig_sor = Figure_symbol_v.figure_set_body_centered_aopefset_shellordinal sof_sor;;

test_number 65 (
( sym_fig_sor : Figure_symbol_t.figure_symbol ) =
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
         (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
           "au d 3"))))
);;

let son_l = figure_as_aopef_single_scaled_symbol_list_of_figure_as_a_shell_ordinal_symbol sym_fig_sor;;

test_number 66 (
( son_l : Figure_symbol_t.figure_symbol list ) = 
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopef_single_scaled
            "au d 3 1"))));
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopef_single_scaled
            "au d 3 2"))))]
);;

(* Scaled Single "au d 3 2" *)

let sof_sor = "au d 3 2";;

let sym_fig_sor = Figure_symbol_v.figure_set_fence_centered_aopef_single_scaled_constructor sof_sor;;

test_number 67 (
(sym_fig_sor : Figure_symbol_t.figure_symbol) =
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
       (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
         (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopef_single_scaled
           "au d 3 2"))))
);;

let sym_fig_t = figure_symbol_subtree_of_figure_as_context_databox_symbol sym_fig_bas;;

let tag_dgn_tso_l = Tree_v.root_topson_node_list_off_tree sym_fig_t;;
