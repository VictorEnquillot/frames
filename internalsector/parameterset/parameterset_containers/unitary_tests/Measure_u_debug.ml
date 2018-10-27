open Make_test_v;;

testing "Measure_v with
   Measure_u_debug.ml";;

(* toplevel 
   #use "Measure_u_debug.ml";;

*)

let sym_eun = Parameter_units_symbol_v.nanometer;;

test_number 1 (
(sym_eun : Parameter_units_symbol_t.parameter_units_symbol ) =
  Parameter_units_symbol_t.Parameter_units_length_symbol
   Parameter_units_length_symbol_t.Nanometer
);;

let flo = 3.0 ;;

let mea = Measure_v.make flo sym_eun;;

test_number 2 (
(mea : Measure_t.measure ) =
(3.,
 Parameter_units_symbol_t.Parameter_units_length_symbol
    Parameter_units_length_symbol_t.Nanometer)
);;

let sym_eun_2 = Measure_v.parameter_units_symbol_off_measure mea;;

test_number 3 (
sym_eun_2 = sym_eun
);;

let flo_met = Measure_v.meter_of_measure mea;;

test_number 4 (
(flo_met : float ) = 
3.00000000000000039e-09
);;

let mca_len = Measure_v.canonical_parameter_units_symbol_as_length;;

test_number 5 (
(mca_len : Parameter_units_symbol_t.parameter_units_symbol ) =
  Parameter_units_symbol_t.Parameter_units_length_symbol
   Parameter_units_length_symbol_t.Meter
);;

let mca = Measure_v.measure_canonical_of_measure mea;;

test_number 6 (
( mca : Measure_t.measure ) =
  (3.00000000000000039e-09,
   Parameter_units_symbol_t.Parameter_units_length_symbol
    Parameter_units_length_symbol_t.Meter)
);;

