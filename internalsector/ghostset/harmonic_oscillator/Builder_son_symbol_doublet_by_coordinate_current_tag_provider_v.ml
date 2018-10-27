(** {3 Builder_son_symbol_doublet_by_coordinate_current_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs :";
   "Current : DFIG:Builder_son_symbol_doublet_by_coordinate_current_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Domain it provides the content of a float file as a key duo";
   "Improve : Information should be read from specific Float : GNR:generatorset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)

let build tag_ccu =
  let (sym_ccu, soi_ccu) = tag_ccu in
  match sym_ccu with
  | Coordinate_current_symbol_t.Current_x ->
      Doublet_v.make 
	Coordinate_step_zero_symbol_v.previous_x 
	Coordinate_step_minusone_symbol_v.anteprevious_x
;;

let build_n_store tag_ccu =
  let sym_ccu_d = build tag_ccu in
  Builder_son_symbol_doublet_by_coordinate_current_tag_register_v.store tag_ccu sym_ccu_d; 
  sym_ccu_d
;;

let provide tag_ccu =
  if Builder_son_symbol_doublet_by_coordinate_current_tag_register_v.is_stored tag_ccu 
  then Builder_son_symbol_doublet_by_coordinate_current_tag_register_v.retrieve tag_ccu
  else build_n_store tag_ccu 
;;
