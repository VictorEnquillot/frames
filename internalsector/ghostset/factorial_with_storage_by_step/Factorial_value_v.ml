(** {3 Factorial_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : GHO:Factorial_formula_v";
   "Current : GHO:Factorial_value_v";
   "Needed-by : GHO:";
   "What-is-it : It computes Value from Formula and builders Values";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Targetting} *)

let argument_of_sole_index soi_fac = 
  let nam_fun = "argument_of_sole_index" in

  let argument = 5 in
  if List.length soi_fac > argument
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      (Format.sprintf "sole_index length =< %i" argument)
      (Format.sprintf "sole_index length = %i" (List.length soi_fac))
      "Increase argument here"
  else
    argument
;;

(** {6 Making} *)

let rec make sym_fac soi_fac =
  if List.length soi_fac = (argument_of_sole_index soi_fac)
  then
    Factorial_value_t.Factorial_basic 1
  else
    begin
      let tag_fac = Tag_v.make sym_fac soi_fac in
      let tag_fac_s = Factorial_formula_v.factorial_tag_singlet_off_factorial_tag tag_fac in
      let tag_fac_son = Singlet_v.element_off_singlet tag_fac_s in
      let sym_fac_son = Tag_v.symbol_off_tag tag_fac_son in
      let soi_fac_son = Tag_v.sole_index_off_tag tag_fac_son in
      let val_fac_son = make sym_fac_son soi_fac_son in
      
      Factorial_value_t.Factorial_recursive (Singlet_v.make val_fac_son)
    end
;;

(** {6 Retrieving} *)

let retrieve tag_fac =
  let soi_fac = Tag_v.sole_index_off_tag tag_fac in
  let sym_fac = Tag_v.symbol_off_tag tag_fac in
  make sym_fac soi_fac
;;

(** {6 Extracting} *)

let rec integer_argument val_fac =
  match val_fac with
  | Factorial_value_t.Factorial_recursive val_fac_s ->
      let val_fac_son = Singlet_v.element_off_singlet val_fac_s in
      (integer_argument val_fac_son) + 1
  | Factorial_value_t.Factorial_basic i -> 
      i
;;

(** {6 Naming} *)

let name val_fac =
  (Format.sprintf "%i!" (integer_argument val_fac))
;;

