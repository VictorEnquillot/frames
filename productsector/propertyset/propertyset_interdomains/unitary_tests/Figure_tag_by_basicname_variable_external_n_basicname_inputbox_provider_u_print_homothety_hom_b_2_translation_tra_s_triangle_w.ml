open Make_test_v;;

testing "Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v with
        Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_homothety_hom_b_2_translation_tra_s_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_bc *)
(*        context *)
(*          databox "segment_BC" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Con_s *)
(*        context *)
(*          databox "segment_S" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Con_tw *)
(*        context *)
(*          databox "Triangle_w" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Cen_b *)
(*        external  *)
(*          type [ "figure" "set" "fence" "point" "constructor" ] *)
(*          external_name "BC_B" *)
(*          external_context Con_bc *)
(*          end -- external *)
(*        end -- define *)

(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_bc *)
(*          end -- external *)
(*        end -- define *)

(* define Seg_s *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "S" *)
(*          external_context Con_s *)
(*          end -- external *)
(*        end -- define *)

(* define Tra_s *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(*          operation "translation" *)
(*          ondomain "figure"   *)
(*          cofactor  *)
(*            cofactor_entity Seg_s *)
(*            end -- cofactor	 *)
(*          end -- operator *)
(*        end -- define *)

(* define Hom_b_2 *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(*          operation "homothety" *)
(*          ondomain "figure" *)
(*          cofactor  *)
(*            cofactor_entity Cen_b  *)
(*            cofactor_basic 2.0  *)
(* 	   end -- cofactor *)
(*          end -- operator *)
(*        end -- define *)

(* define Tri_w         *)
(*        external  *)
(*          type [ "figure" "set" "fence" "point" "constructor" ] *)
(*          external_name "W" *)
(*          external_context Con_tw *)
(*          end -- external *)
(*        end -- define *)

(* define Tri_h *)
(*        target  *)
(*          type [ "property" "operand" "body" "target" "created" "constructor" ] *)
(*          target_operator Hom_b_2 *)
(*          target_operand Tri_w *)
(*          end -- target *)
(*        end -- define *)

(* define Tri_t *)
(*        target  *)
(*          type [ "property" "operand" "body" "target" "created" "constructor" ] *)
(*          target_operator Tra_s *)
(*          target_operand Tri_h *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Tri_t *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_homothety_hom_b_2_translation_tra_s_triangle_w.ml";; 

*)

open Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v;; 

let nam_ibo = "Print_homothety_hom_b_2_translation_tra_s_triangle_w";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

test_number 1 (
(bna_ibo : Basicname_t.basicname ) =
Basicname_t.Inputbox "Print_homothety_hom_b_2_translation_tra_s_triangle_w"
);;

let nam_var_ext = "Tri_w";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_ext;;

test_number 2 (
(bna_var_ext : Basicname_t.basicname ) =
  Basicname_t.Variable_external "Tri_w"
);;

Check_is_basicname_variable_external_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide 
    (bna_var_ext, bna_ibo);;

let sym_fig = 
  Figure_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
    (bna_var_ext, bna_ibo);;

test_number 3 (
(sym_fig : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_set_symbol
   (Figure_set_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_triangle_symbol
       (Figure_set_body_triangle_symbol_t.Figure_set_body_triangle_scalene_symbol
         (Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_acute_symbol
           (Figure_set_body_triangle_scalene_acute_symbol_t.Figure_set_body_triangle_scalene_acute_constructor
             "W")))))
);;

let bna_dbo =
    Basicname_databox_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo);;

test_number 4 (
(bna_dbo : Basicname_t.basicname ) = 
Basicname_t.Databox "triangle_w"
);;

let bna_dba =
    Basicname_database_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo);;

test_number 5 (
(bna_dba : Basicname_t.basicname ) =
 Basicname_t.Database "db1points"
);;

let tag_fig_l =
    Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide 
      (bna_dbo, bna_dba);;

let pre_tag_fig (s, i) = (s = sym_fig);;

let tag_fig = List_v.only_element_of_predicate_off_list pre_tag_fig tag_fig_l;;

test_number 6 (
(tag_fig : Figure_tag_t.figure_tag ) =
  (Figure_symbol_t.Figure_set_symbol
    (Figure_set_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_triangle_symbol
        (Figure_set_body_triangle_symbol_t.Figure_set_body_triangle_scalene_symbol
          (Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_acute_symbol
            (Figure_set_body_triangle_scalene_acute_symbol_t.Figure_set_body_triangle_scalene_acute_constructor
              "W"))))),
   [1; 25; 1; 7; 5])
);;

test_number 7 (
tag_fig = provide (bna_var_ext, bna_ibo)
);;
