open Make_test_v;;

testing "Measure_v with
   Measure_u_any.ml";;

(* toplevel 
   #use "Measure_u_any.ml";;

*)

let sym_eun = Elementary_symbol_v.meter;;

test_number 1 (
(sym_eun : Elementary_symbol_t.elementary_symbol ) =
  Elementary_symbol_t.Elementary_closure_symbol
   (Elementary_closure_symbol_t.Elementary_units_symbol
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter))
);;

let flo = 3.0 ;;

let mea = Measure_v.make flo sym_eun;;

test_number 2 (
( mea : (float, Elementary_symbol_t.elementary_symbol) Doublet_t.doublet ) =
(3.,
 Elementary_symbol_t.Elementary_closure_symbol
   (Elementary_closure_symbol_t.Elementary_units_symbol
      (Elementary_units_symbol_t.Elementary_units_length_symbol
         Elementary_units_length_symbol_t.Meter)))
);;

let sym_eun_2 = Measure_v.elementary_units_symbol_off_measure mea;;

test_number 3 (
sym_eun_2 = sym_eun
);;
