(** {3 Camlline_duo_value_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_duo_value_interface_v";
   "Needed-by : FGNR:Camlline_duo_value_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
   "Improve : MAY BE INCORRECT";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make dec_cdf soi_cal =
  let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_cdf in

  let sym_snl_l = Tools_ignr_v.entity_topson_notleaf_symbol_list_of_dectup dec_cdf in
  let idx_gro = Sole_index_v.father_index_off_sole_index soi_cal in
  let sym_ent_snl = List.nth sym_snl_l (idx_gro-1) in

  let sym_cdf = Decuplet_v.left_off_decuplet dec_cdf in
  match sym_cdf with
  | Camlline_duo_value_symbol_t.Val_eac_off_eat_colon
  | Camlline_duo_value_symbol_t.Val_eat_of_eac_colon 
  | Camlline_duo_value_symbol_t.Val_is_es_symbol_off_et_symbol_colon ->     
      [
       sym_ent_snl;
       sym_ent_top;
     ]
  | Camlline_duo_value_symbol_t.Val_ec_colon_et_symbol_tdot_et_symbol ->
      [
       sym_ent_top;
     ]
;;
