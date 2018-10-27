(** {3 Factorial_value_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : GHO:Factorial_formula_v";
   "Current : GHO:Factorial_value_provider_v";
   "Needed-by : GHO:";
   "What-is-it : It computes Value from Formula and builders Values";
   "Remark : Factorial_basic of int is NOT a datastructure";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Register.} *)

let factorial_value_register : 
    (Factorial_tag_t.factorial_tag, 
     Factorial_value_t.factorial_value)
    Register_t.register = Register_v.make 137
;;

(** {6 Storing.} *)

let store tag_fac val_fac =
  try Register_v.store factorial_value_register tag_fac val_fac
  with Failure ("Already_stored:Register_v.store") ->
    failwith ("Already_stored:Factorial_value_provider_v.store")
;;

(** {6 Retrieving.} *)

let retrieve tag_fac =
  try Register_v.retrieve factorial_value_register tag_fac 
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Not_stored:Factorial_value_provider_v.retrieve")
;;  

(** {6 Building.} *)

let previous_tag_of_current_tag tag_fac =
  (* Datastructure - Singlet - of builder Tags *)
  let tag_fac_s = Factorial_formula_v.factorial_tag_singlet_off_factorial_tag tag_fac in
  Singlet_v.element_off_singlet tag_fac_s
;;

let build_and_store tag_fac =
  let nam_fun = "build_and_store" in
  
  let step_cur = Factorial_parameters_v.step_number_of_factorial_tag tag_fac in

  let val_fac_cur =
    if step_cur = Factorial_parameters_v.first_step
    then
      begin   
	Factorial_value_t.Factorial_basic 1 
      end
    else
      begin
	(* Datastructure - Singlet - of builder Tags *)
	let tag_fac_pre = previous_tag_of_current_tag tag_fac in

	(* Calculates current from previous *)
	let val_fac_pre =
	  if Register_v.is_stored factorial_value_register tag_fac_pre 
	  then retrieve tag_fac_pre
	  else 
	    let tag_fac_l = Register_v.key_list factorial_value_register in
	    Error_messages_v.print_fatal_error nam_cod nam_fun
	      (Format.sprintf "Previous step # %i were done" step_cur)
	      (Format.sprintf "Last step done is # %i " (List.length tag_fac_l) )
	      "Check Factorial_value_propagator"
	in
	Factorial_value_t.Factorial_recursive (Singlet_v.make val_fac_pre)
      end
  in
  store tag_fac val_fac_cur; 
  val_fac_cur
;;

(** {6 Providing.} *)

let provide tag_fac =
  if Register_v.is_stored factorial_value_register tag_fac
  then retrieve tag_fac
  else build_and_store tag_fac
;;

let name_of_key tag_fac =
  Tag_v.name Factorial_symbol_v.name tag_fac
;;

let factorial_tag_of_factorial_value val_fac =
  let nam_fun = "factorial_tag_of_factorial_value" in

  try Register_v.only_key_of_value factorial_value_register val_fac
  with Failure "Several_key_for_value:Register_v.only_key_of_value" ->

    let key_l = Register_v.key_list_of_value factorial_value_register val_fac in

    Error_messages_v.print_fatal_error nam_cod nam_fun 
      "Biunivoqual relation between tag and value"
      (Format.sprintf "this list of tags :@.%s" 
	 (List_v.name_with_separator name_of_key "\n  " key_l)
      )
      "Check"
;;

let name val_fac =
  let tag_fac = factorial_tag_of_factorial_value val_fac in
  Factorial_name_provider_v.provide tag_fac
;;   

let name_of_value val_fac  =
  name val_fac
 ;;

let is_empty () =
  Register_v.is_empty factorial_value_register
;;

let dump () = 
  let key_n_val_l = Register_v.entry_list factorial_value_register in 
  Doublet_list_v.name name_of_key name_of_value key_n_val_l
;;

