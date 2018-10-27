(** {3 Factorial_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : GHO:Factorial_formula_v";
   "Current : GHO:Factorial_name_provider_v";
   "Needed-by : GHO:";
   "What-is-it : It computes Name from Formula and builders Names";
   "Remark : Factorial_basic of int is NOT a datastructure";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Register.} *)

let factorial_name_register : 
    (Factorial_tag_t.factorial_tag, 
     string)
    Register_t.register = Register_v.make 137
;;

(** {6 Storing.} *)

let store tag_fac val_fac =
  try Register_v.store factorial_name_register tag_fac val_fac
  with Failure ("Already_stored:Register_v.store") ->
    failwith ("Already_stored:Factorial_name_provider_v.store")
;;

(** {6 Retrieving.} *)

let retrieve tag_fac =
  try Register_v.retrieve factorial_name_register tag_fac 
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Not_stored:Factorial_name_provider_v.retrieve")
;;  

let previous_tag_of_current_tag tag_fac =
  (* Datastructure of builder Tags *)
  let tag_fac_s = Factorial_formula_v.factorial_tag_singlet_off_factorial_tag tag_fac in
  Singlet_v.element_off_singlet tag_fac_s
;;

(** {6 Building.} *)

let build_and_store tag_fac =
  let step_cur = Factorial_parameters_v.step_number_of_factorial_tag tag_fac in

  let nam_fac_cur = 
    if step_cur = Factorial_parameters_v.first_step
    then
      begin   
	"1"
      end
    else
      begin
	let tag_fac_pre = previous_tag_of_current_tag tag_fac in
	if Register_v.is_stored factorial_name_register tag_fac_pre
	then 
	  begin
	    let nam_fac_pre =
	      try Register_v.retrieve factorial_name_register tag_fac_pre 
	      with Failure ("Not_stored:Register_v.retrieve") ->
		failwith ("Not_stored_1:Factorial_name_provider_v.name")
	    in
	    (Format.sprintf "%s.%i" nam_fac_pre step_cur)
	  end
	else 
	  begin
	    failwith ("Not_stored_2:Factorial_name_provider_v.name")
	  end
      end
  in	
  store tag_fac nam_fac_cur; 
  nam_fac_cur
;;   

(** {6 Providing.} *)

let provide tag_fac =
  if Register_v.is_stored factorial_name_register tag_fac
  then retrieve tag_fac
  else build_and_store tag_fac
;;

let name_of_key tag_fac =
  Tag_v.name Factorial_symbol_v.name tag_fac
;;

let name_of_value nam  =
  nam
;;

let is_empty () =
  Register_v.is_empty factorial_name_register
;;

let dump () = 
  let key_n_val_l = Register_v.entry_list factorial_name_register in 
  Doublet_list_v.name name_of_key name_of_value key_n_val_l
;;

