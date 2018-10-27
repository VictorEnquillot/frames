(** {3 Factorial_value_propagator_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : GHO:Factorial_formula_v";
   "Current : GHO:Factorial_value_propagator_v";
   "Needed-by : GHO:";
   "What-is-it : It Propagates a leff_recursive Calculation";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

let initialize () =
  let sym_fac = Factorial_symbol_t.Factorial in
  let soi_fac = [1; 1] in
  let tag_fac = Factorial_tag_v.make sym_fac soi_fac in
  Factorial_value_provider_v.provide tag_fac
;;

let last_done_step () =
  let tag_fac_l = Register_v.key_list Factorial_value_provider_v.factorial_value_register in
  if List.length tag_fac_l = 0
  then 
    0
  else
    begin
      let step_l = List.map Factorial_parameters_v.step_number_of_factorial_tag tag_fac_l in
      List_v.sup_of_list step_l
    end
;; 

let current_step_tag () =
  let step_las = last_done_step () in
  let tag_fac_l = Register_v.key_list Factorial_value_provider_v.factorial_value_register in

  let tag_las = List.find 
      (fun t -> Factorial_parameters_v.step_number_of_factorial_tag t = step_las)
      tag_fac_l
  in 
  let (sym_las, soi_las) = tag_las in
  let step_cur = step_las + 1 in
  let soi_cur = List_v.replace_last_element_of_element_of_list step_cur soi_las in
  Tag_v.make sym_las soi_cur
;;

(** {6 Propagating} *)

let propagate () =
  let step_las = last_done_step () in
  if step_las = 0
  then
    initialize ()
  else
    begin
      let tag_fac = current_step_tag () in
      Factorial_value_provider_v.provide tag_fac
    end
;;

