open Make_test_v;;

testing "Figure_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v with
        Figure_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_triangle_w.ml";;

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
(*        type [ "figure" "set" "body" "triangle" "scalene" "acute" ] *)
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
   #use "Figure_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_triangle_w.ml";; 

*)

open Figure_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v;; 

let nam_var_ext = "Tri_w";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_ext;;

let nam_ibo = "Print_triangle_w";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

test_number 1 (
(bna_var_ext : Basicname_t.basicname) =
  Basicname_t.Variable_external "Tri_w"
);;

let bna_var = Basicname_v.basicname_variable_of_basicname_variable_external bna_var_ext;;
let mak_arg = 
    Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v.provide
      (bna_var, bna_ibo);;

test_number 2 (
(mak_arg : string ) = 
"figure_set_body_triangle_scalene_acute_constructor"
);;

let bna_ext_nam = 
    Basicname_external_name_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo);;

test_number 3 (
(bna_ext_nam : Basicname_t.basicname ) = 
Basicname_t.External_name "W"
);;

let nam_fig = Basicname_v.string_off bna_ext_nam;;

let sym_fig = Figure_symbol_v.make mak_arg nam_fig;;

test_number 4 (
(sym_fig : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_set_symbol
   (Figure_set_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_triangle_symbol
       (Figure_set_body_triangle_symbol_t.Figure_set_body_triangle_scalene_symbol
         (Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_acute_symbol
           (Figure_set_body_triangle_scalene_acute_symbol_t.Figure_set_body_triangle_scalene_acute_constructor
             "W")))))
);;

test_number 5 (
sym_fig = provide (bna_var_ext, bna_ibo)
);;
