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

let nam_reg = "Factorial_value_register";;

let factorial_value_register : 
    (Factorial_tag_t.factorial_tag, 
     Factorial_value_t.factorial_value)
    Register_t.register = Register_v.make 137
;;

(** {6 Storing.} *)

let store tag_fac val_fac =
  try Register_v.store factorial_value_register tag_fac val_fac
  with Failure ("Already_stored:Register_v.store") ->
    failwith ("Already_stored:Gsp_v.store")
;;

(** {6 Retrieving.} *)

let retrieve tag_fac =
  try Register_v.retrieve factorial_value_register tag_fac 
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Not_stored:Factorial_value_provider_v.retrieve")
;;  

(** {6 Building.} *)

let rec build_and_store tag_fac =
  let (sym_fac, soi_fac) = tag_fac in

  let step_cur = Factorial_parameters_v.step_number_of_factorial_tag tag_fac in

  if step_cur = Factorial_parameters_v.first_step
  then
    begin   
      let val_fac = Factorial_value_t.Factorial_basic 1 in
      store tag_fac val_fac; 
      val_fac
    end
  else
    begin
      let tag_fac = Tag_v.make sym_fac soi_fac in

      (* Datastructure of builder Tags *)
      let tag_fac_s = Factorial_formula_v.factorial_tag_singlet_off_factorial_tag tag_fac in

      let tag_fac_son = Singlet_v.element_off_singlet tag_fac_s in

      if Register_v.is_stored factorial_value_register tag_fac_son 
      then retrieve tag_fac_son
      else 
	begin
	  (* map on Datastructure of builder Tags *)
	  (* let val_fac_son = build_and_store tag_fac_son in *)
	  (* let val_fac = Factorial_value_t.Factorial_recursive (Singlet_v.make val_fac_son) in *)

	  let val_fac_s =
	    Factorial_value_t.Factorial_recursive 
	      ( 
		Singlet_v.map 
		  build_and_store (* tag -> value *) 
		  tag_fac_s 
	       )
	  in
	  store tag_fac val_fac_s; 
	  val_fac_s
	end
    end
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
  let step_cur = Factorial_parameters_v.step_number_of_factorial_tag tag_fac in
  let rec apply step = function
    | Factorial_value_t.Factorial_recursive val_fac_s ->
	let val_fac_son = Singlet_v.element_off_singlet val_fac_s in
	(Format.sprintf "%s.%i" (apply (step-1) val_fac_son) step)

    | Factorial_value_t.Factorial_basic i -> 
	(Format.sprintf "%i" i)
  in
  apply step_cur val_fac
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

