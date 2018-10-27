open Make_test_v;;

testing "Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v with
        Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_tw *)
(*        context *)
(*          databox "triangle_w" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Tri_w *)
(*        external  *)
(*        type [ "figure" "set" "body" "triangle" "scalene" "acute" "constructor"] *)
(*          external_name "W" *)
(*          external_context Con_tw *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          external_context Con_tw *)
(*          end -- external *)
(*        end -- define *)

(* print Tri_w *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_triangle_w.ml";; 

*)

open Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v;; 

let nam_ibo = "Print_triangle_w";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

test_number 1 (
(bna_ibo : Basicname_t.basicname ) =
Basicname_t.Inputbox "Print_triangle_w"
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
