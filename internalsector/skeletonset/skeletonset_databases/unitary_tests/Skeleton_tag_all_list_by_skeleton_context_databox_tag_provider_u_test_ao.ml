open Make_test_v;;

testing "Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v with
    Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_u_test_ao.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)

                                       
(* toplevel 
   #use "Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_u_test_ao.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_dbo = "test_ao";;
let nam_mod = "Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v";;

(* Parameters_general_register_v.store nam_mod "database-name" nam_dba;; *)
(* Parameters_general_register_v.store nam_mod "databox-name" nam_dbo;; *)

(* Argument tag_sbo *)

open Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v;; 

let tag_sbo = Skeleton_context_databox_tag_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

test_number 1 (
true
)

let (nam_dba, nam_dbo) = 
    Database_name_n_databox_name_by_skeleton_context_databox_tag_provider_v.provide
      tag_sbo;;

let tag_ske_l = provide tag_sbo;;

test_number 1 (
( tag_ske_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
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

let str_all = Skeleton_tag_all_list_by_skeleton_context_databox_tag_register_v.dump ();;

test_number 2 (
(str_all : string ) =
 " [\n   ((Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor \"test_ao\", [6; 5; 22]),  [\n   (Skeleton_symbol_t.Skeleton_context_domain_constructor \"skeleton\", [22]);\n   (Skeleton_symbol_t.Skeleton_context_database_constructor \"nwchem\", [5; 22]);\n   (Skeleton_symbol_t.Skeleton_context_databox_constructor \"test_ao\", [6; 5; 22]);\n   (Skeleton_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor \"test_ao\", [1; 6; 5; 22]);\n   (Skeleton_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor \"he\", [1; 1; 6; 5; 22]);\n   (Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor \"he s\", [1; 1; 1; 6; 5; 22]);\n   (Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"he s 1\", [1; 1; 1; 1; 6; 5; 22]);\n   (Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"he s 1 1\", [1; 1; 1; 1; 1; 6; 5; 22]);\n   (Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"he s 1 2\", [2; 1; 1; 1; 1; 6; 5; 22]);\n   (Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"he s 2\", [2; 1; 1; 1; 6; 5; 22]);\n   (Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"he s 2 1\", [1; 2; 1; 1; 1; 6; 5; 22]);\n   (Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor \"he p\", [2; 1; 1; 6; 5; 22]);\n   (Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"he p 2\", [1; 2; 1; 1; 6; 5; 22]);\n   (Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"he p 2 1\", [1; 1; 2; 1; 1; 6; 5; 22]);\n   (Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"he p 2 2\", [2; 1; 2; 1; 1; 6; 5; 22]);\n   (Skeleton_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor \"he p 3\", [2; 2; 1; 1; 6; 5; 22]);\n   (Skeleton_symbol_t.Skeleton_fence_centered_aopef_constructor \"he p 3 1\", [1; 2; 2; 1; 1; 6; 5; 22]);\n   (Skeleton_symbol_t.Skeleton_body_centered_ecppefset_constructor \"test_ao\", [2; 6; 5; 22])\n  ])\n  ]"
);;

let str_soi = Skeleton_creation_module_name_by_sole_index_register_v.dump ();;

test_number 3 (
(str_soi : string ) =
  " [\n   ([2; 1; 1; 1; 6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([2; 6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([1; 2; 1; 1; 1; 6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([1; 1; 1; 1; 1; 6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([1; 6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([1; 2; 1; 1; 6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([1; 1; 6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([2; 1; 1; 6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([1; 1; 1; 1; 6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([1; 2; 2; 1; 1; 6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([2; 1; 2; 1; 1; 6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([2; 1; 1; 1; 1; 6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([1; 1; 2; 1; 1; 6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([1; 1; 1; 6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([2; 2; 1; 1; 6; 5; 22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v);\n   ([22], Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v)\n  ]"
);;

