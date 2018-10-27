open Make_test_v;;

testing "Measure_actual_action_v with
       Measure_actual_action_u_any.ml"

(* toplevel 
   #use "Measure_actual_action_u_any.ml";; 

*)

let uaa = Units_actual_action_v.planck_constant;;

test_number 1 (
(uaa : Units_actual_action_t.units_actual_action ) =
  Units_actual_action_t.Planck_constant
);;

let maa = Measure_actual_action_v.make 4.5 uaa;;

test_number 2 (
(maa :
  (float, Units_actual_action_t.units_actual_action) Doublet_t.doublet ) =
  (4.5, Units_actual_action_t.Planck_constant)
);;

let uaa = units_actual_action_off_measure_actual_action maa;;
