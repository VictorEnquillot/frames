open Make_test_v;;

testing "Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v with
        Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

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

(* define Per_tri *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor" ] *)
(*          end -- operator *)
(*        end -- define *)

(* define Tri_w *)
(*        external  *)
(*        type [ "figure" "set" "body" "triangle" "scalene" "acute" "constructor"] *)
(*          external_name "W" *)
(*          external_context Con_tw *)
(*          end -- external *)
(*        end -- define *)

(* define Perimeter_w *)
(*        target  *)
(*        type [ "property" "operand" "body" "target" "measured" "constructor" ] *)
(*          target_operator Per_tri *)
(*          target_operand Tri_w *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Perimeter_w *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* coordinates_units_length  nanometer  *)
(* coordinates_kind          cartesian  *)
(* figure_kind               triangle  *)
(* figure_name W *)
(* vertex W_A       1.   0.   0. *)
(* vertex W_B       0.   2.   0. *)
(* vertex W_C       0.   0.   3.   *)

(* toplevel 
   #use "Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

*)

open Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v;;

let nam_ibo = "Print_perimeter_triangle_w";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

test_number 1 (
(bna_ibo : Basicname_t.basicname ) =
Basicname_t.Inputbox "Print_perimeter_triangle_w"
);;

let nam_var_ext = "Tri_w";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_ext;;

test_number 2 (
(bna_var_ext : Basicname_t.basicname ) =
  Basicname_t.Variable_external "Tri_w"
);;

(* Argument (bna_var_ext, bna_ibo) *)

let bna_dom =
    Basicname_domain_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo) 
;;

test_number 3 (
(bna_dom : Basicname_t.basicname ) = 
Basicname_t.Domain "figure"
);;

let nam_dom = Basicname_v.string_off bna_dom;;

test_number 4 (
(nam_dom : string ) = 
"figure"
);;

let tag_fig = 
	Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
	  (bna_var_ext, bna_ibo)
;;

test_number 5 (
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

let flo_mtl = Figure_envelope_v.measured_float_tuple_list_of_tag tag_fig;;

test_number 6 (
(flo_mtl :
  (float Uno_t.uno Tuple_t.tuple, Units_t.units) Doublet_t.doublet list ) =
  [(Tuple_t.Trio (1., 0., 0.),
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Nanometer));
   (Tuple_t.Trio (0., 2., 0.),
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Nanometer));
   (Tuple_t.Trio (0., 0., 3.),
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Nanometer))]
);;

test_number 7 (
flo_mtl = provide (bna_var_ext, bna_ibo)
);;
