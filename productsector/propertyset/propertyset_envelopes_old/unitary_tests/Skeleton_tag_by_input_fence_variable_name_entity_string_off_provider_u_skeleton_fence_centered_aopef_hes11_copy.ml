open Make_test_v;;

testing "Skeleton_tag_by_input_fence_variable_name_entity_string_off_provider_v with
    Skeleton_tag_by_input_fence_variable_name_entity_string_off_provider_u_skeleton_fence_centered_aopef_hes11_copy.ml";;

(* Deleting Registers *)


(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Skeleton_tag_by_input_fence_variable_name_entity_string_off_provider_u_skeleton_fence_centered_aopef_hes11_copy.ml";; 

*)

(* Input File *)

let nof_inp = "Print_copy_aopef_hes11.inp";;
let fno_inp = Input_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;
Parameters_general_register_v.store "input-file" fno_inp;;


(* Argument sof_ine "Aopef_hes11" *)

let sof_ine = "Aopef_hes11";;

open Skeleton_tag_by_input_fence_variable_name_entity_string_off_provider_v;; 

let sym_ske = 
    Skeleton_symbol_by_input_fence_variable_name_entity_string_off_provider_v.provide
      sof_ine;;

test_number 1 (
(sym_ske : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_fence_symbol
   (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
     (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
       (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
         "he s 1 1")))
);;

let nam_dba =
    Input_fence_cell_database_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
      sof_ine;;

test_number 2 (
(nam_dba : string ) = 
"nwchem"
);;

let nam_dbo =
    Input_fence_cell_databox_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
      sof_ine;;

test_number 3 (
(nam_dbo ) = 
"test_ao"
);;

let nam_dom =
    Input_fence_cell_domain_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
      sof_ine;;

test_number 4 (
(nam_dom : string ) = 
"skeleton"
);;

let tag_ske_l =
    Skeleton_tag_all_list_by_database_name_n_databox_name_provider_v.provide 
      (nam_dba, nam_dbo);;

test_number 5 (
(tag_ske_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [22]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 22]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "test_ao")),
    [6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter_symbol
           (Skeleton_body_centered_aopefset_anycenter_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor
             "test_ao")))),
    [1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter_symbol
           (Skeleton_body_centered_aopefset_onecenter_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor
             "he")))),
    [1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
           (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
             "he s")))),
    [1; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
           (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
             "he s 1")))),
    [1; 1; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he s 1 1"))),
    [1; 1; 1; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he s 1 2"))),
    [2; 1; 1; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
           (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
             "he s 2")))),
    [2; 1; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he s 2 1"))),
    [1; 2; 1; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
           (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
             "he p")))),
    [2; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
           (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
             "he p 2")))),
    [1; 2; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he p 2 1"))),
    [1; 1; 2; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he p 2 2"))),
    [2; 1; 2; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
           (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
             "he p 3")))),
    [2; 2; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_fence_symbol
     (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
       (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
         (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
           "he p 3 1"))),
    [1; 2; 2; 1; 1; 6; 5; 22]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppefset_symbol
         (Skeleton_body_centered_ecppefset_symbol_t.Skeleton_body_centered_ecppefset_constructor
           "test_ao"))),
    [2; 6; 5; 22])]
);;

let pre_tag_ske (s, i) = (s = sym_ske);;

let tag_ske = List_v.only_element_of_predicate_off_list pre_tag_ske tag_ske_l;;

test_number 6 (
(tag_ske : Skeleton_tag_t.skeleton_tag ) =
 (Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "he s 1 1"))),
   [1; 1; 1; 1; 1; 6; 5; 22])
);;

test_number 7 (
tag_ske = provide sof_ine
);;
