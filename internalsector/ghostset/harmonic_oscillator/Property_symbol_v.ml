(** {3 Property_symbol_symbol_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : HAR:Coordinate_formula_v";
   "Current : HAR:Property_symbol_symbol_v";
   "Needed-by : HAR:";
   "What-is-it : It computes Property from Formula and builders Propertys";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Extracting} *)

let integer_of_coordinate_evaluation = function
  | Property_symbol_symbol_t.Evaluation i -> i
;;

(** {6 Making} *)

let rec make sym_fac soi_fac =
  let tag_fac = Tag_v.make sym_fac soi_fac in
  let tag_fac_s = Coordinate_formula_v.coordinate_tag_singlet_off_coordinate_tag tag_fac in
  let tag_fac_son = Singlet_v.element_off_singlet tag_fac_s in
  let (sym_fac_son, soi_fac_son) = tag_fac_son in

  let step_cur = Parameters_v.step_number_of_coordinate_tag tag_fac in

  if step_cur = Parameters_v.first_step
  then
    Property_symbol_symbol_t.Evaluation 1
  else
    begin
      let evi_fac_son = make sym_fac_son soi_fac_son in
      let i_fac_son = integer_of_coordinate_evaluation evi_fac_son in
      let i_fac = step_cur * i_fac_son in
      
      Property_symbol_symbol_t.Evaluation i_fac
    end
;;

(** {6 Retrieving} *)

let retrieve tag_fac =
  let soi_fac = Tag_v.sole_index_off_tag tag_fac in
  let sym_fac = Tag_v.symbol_off_tag tag_fac in
  make sym_fac soi_fac
;;

