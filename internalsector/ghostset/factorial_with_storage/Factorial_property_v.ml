(** {3 Factorial_property_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : GHO:Factorial_formula_v";
   "Current : GHO:Factorial_property_v";
   "Needed-by : GHO:";
   "What-is-it : It computes Property from Formula and builders Propertys";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Extracting} *)

let integer_of_factorial_evaluation = function
  | Factorial_property_t.Evaluation i -> i
;;

(** {6 Making} *)

let rec make sym_fac soi_fac =
  let tag_fac = Tag_v.make sym_fac soi_fac in
  let tag_fac_s = Factorial_formula_v.factorial_tag_singlet_off_factorial_tag tag_fac in
  let tag_fac_son = Singlet_v.element_off_singlet tag_fac_s in
  let (sym_fac_son, soi_fac_son) = tag_fac_son in

  if List.length soi_fac_son > 5 
  then
    Factorial_property_t.Evaluation 1
  else
    begin
      let evi_fac_son = make sym_fac_son soi_fac_son in
      let i_fac_son = integer_of_factorial_evaluation evi_fac_son in
      
      let val_fac = Factorial_value_provider_v.provide tag_fac in
      let iar_fac = Factorial_value_provider_v.integer_argument val_fac in
      let i_fac = iar_fac * i_fac_son in
      
      Factorial_property_t.Evaluation i_fac
    end
;;

(** {6 Retrieving} *)

let retrieve tag_fac =
  let soi_fac = Tag_v.sole_index_off_tag tag_fac in
  let sym_fac = Tag_v.symbol_off_tag tag_fac in
  make sym_fac soi_fac
;;

