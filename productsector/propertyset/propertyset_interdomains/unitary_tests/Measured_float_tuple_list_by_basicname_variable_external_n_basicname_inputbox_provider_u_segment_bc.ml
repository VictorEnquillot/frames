open Make_test_v;;

testing "Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v with
        Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_u_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* coordinates_units_length   angstrom  *)
(* coordinates_units_angle    degree *)
(* coordinates_kind           cylindrical   *)
(* figure_kind segment  *)
(* figure_name BC *)
(* vertex BC_B       1.  0.  0. *)
(* vertex BC_C       1. 90.  1. *)

(* toplevel 
   #use "Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_u_segment_bc.ml";;

*)

open Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v;;

let nam_ibo = "Print_length_segment_bc";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

test_number 1 (
(bna_ibo : Basicname_t.basicname ) =
Basicname_t.Inputbox "Print_length_segment_bc"
);;

let nam_var_ext = "Seg_bc";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_ext;;

test_number 2 (
(bna_var_ext : Basicname_t.basicname ) =
  Basicname_t.Variable_external "Seg_bc"
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
      (Figure_set_body_symbol_t.Figure_set_body_segment_symbol
        (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor
          "BC"))),
   [1; 18; 1; 7; 5])
);;

let flo_mtl = Figure_envelope_v.measured_float_tuple_list_of_tag tag_fig;;

test_number 6 (
(flo_mtl :
  (float Uno_t.uno Tuple_t.tuple, Units_t.units) Doublet_t.doublet list ) =
 [(Tuple_t.Trio (1., 0., 0.),
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom));
   (Tuple_t.Trio (6.12303176911188629e-17, 1., 1.),
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))]
);;

test_number 7 (
flo_mtl = provide (bna_var_ext, bna_ibo)
);;
