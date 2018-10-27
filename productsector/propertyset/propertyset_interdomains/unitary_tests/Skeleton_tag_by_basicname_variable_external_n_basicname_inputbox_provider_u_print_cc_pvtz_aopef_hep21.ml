open Make_test_v;;

testing "Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v with
    Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_cc_pvtz_aopef_hep21.ml";;

(* Deleting Registers *)


(* Tracing *)

(* define Con_ao  *)
(*        context *)
(*          domain "skeleton" *)
(* 	    database "nwchem" *)
(* 	    databox "cc_pVTZ" *)
(* 	    end -- context *)
(*        end -- define *)

(* define Aopef_hep21	 *)
(*        external  *)
(*          type [ "skeleton" "set" "fence" "centered" "aopef" "constructor" ] *)
(*          external_name "he p 2 1" *)
(*          external_context Con_ao *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_len  *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          external_context Con_ao *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_ang  *)
(*        external  *)
(*          type [ "units" "angle" "radian" ] *)
(*          external_context Con_ao *)
(*          end -- external *)
(*        end -- define *)

(* print Aopef_hep21  *)
(*       units [ Uni_len Uni_ang ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_cc_pvtz_aopef_hep21.ml";; 

*)

open Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v;; 

let nam_ibo = "Print_aopef_hep21";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

test_number 1 (
(bna_ibo : Basicname_t.basicname ) =
  Basicname_t.Inputbox "Print_aopef_hep21"
);;

let nam_var_ext = "Aopef_hep21";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_ext;;

test_number 2 (
(bna_var_ext : Basicname_t.basicname ) =
  Basicname_t.Variable_external "Aopef_hep21"
);;

(* Argument (bna_var_ext, bna_ibo) *)

Check_is_basicname_variable_external_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide 
(bna_var_ext, bna_ibo);;

let sym_ske = 
    Skeleton_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo);;


test_number 3 (
(sym_ske : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_set_symbol
   (Skeleton_set_symbol_t.Skeleton_set_fence_symbol
     (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
       (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
         (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
           "he p 2 1"))))
);;

let bna_dbo =
  Basicname_databox_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
    (bna_var_ext, bna_ibo);;

test_number 4 (
(bna_dbo : Basicname_t.basicname ) = 
Basicname_t.Databox "cc_pVTZ"
);;

let bna_dba =
    Basicname_database_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
    (bna_var_ext, bna_ibo);;

test_number 5 (
(bna_dba : Basicname_t.basicname ) = 
Basicname_t.Database "nwchem"
);;

let tag_ske_l =
    Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide 
      (bna_dbo, bna_dba);;

let tag_ske_he_p_sl = List_v.sublist_included_of_predicate_of_length_of_list (fun (s, i) -> (Skeleton_symbol_v.string_off s = "he p")) 7 tag_ske_l;;

test_number 6 (
(tag_ske_he_p_sl : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_set_symbol
     (Skeleton_set_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
           (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_symbol
             (Skeleton_set_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_constructor
               "he p"))))),
    [2; 2; 1; 16; 5; 19; 5]);
   (Skeleton_symbol_t.Skeleton_set_symbol
     (Skeleton_set_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
           (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_symbol
             (Skeleton_set_body_centered_aopefset_shellordinal_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_constructor
               "he p 2"))))),
    [1; 2; 2; 1; 16; 5; 19; 5]);
   (Skeleton_symbol_t.Skeleton_set_symbol
     (Skeleton_set_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
         (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
           (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
             "he p 2 1")))),
    [1; 1; 2; 2; 1; 16; 5; 19; 5]);
   (Skeleton_symbol_t.Skeleton_set_symbol
     (Skeleton_set_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
           (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_symbol
             (Skeleton_set_body_centered_aopefset_shellordinal_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_constructor
               "he p 3"))))),
    [2; 2; 2; 1; 16; 5; 19; 5]);
   (Skeleton_symbol_t.Skeleton_set_symbol
     (Skeleton_set_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
         (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
           (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
             "he p 3 1")))),
    [1; 2; 2; 2; 1; 16; 5; 19; 5]);
   (Skeleton_symbol_t.Skeleton_set_symbol
     (Skeleton_set_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
           (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_symbol
             (Skeleton_set_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_constructor
               "he d"))))),
    [3; 2; 1; 16; 5; 19; 5]);
   (Skeleton_symbol_t.Skeleton_set_symbol
     (Skeleton_set_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
           (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_symbol
             (Skeleton_set_body_centered_aopefset_shellordinal_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_constructor
               "he d 3"))))),
    [1; 3; 2; 1; 16; 5; 19; 5])]
);;

let tag_ske = List_v.only_element_of_predicate_off_list (fun (s, i) -> s = sym_ske ) tag_ske_l;;

test_number 7 (
(tag_ske : Skeleton_tag_t.skeleton_tag ) =
 (Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "he s 1 1"))),
   [1; 1; 1; 1; 1; 6; 5; 22])
);;

test_number 8 (
tag_ske = provide (bna_var_ext, bna_ibo)
);;
