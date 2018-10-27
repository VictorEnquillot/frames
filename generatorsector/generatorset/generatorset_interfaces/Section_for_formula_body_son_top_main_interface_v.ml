(** {6 Section_for_formula_body_son_top_main_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_formula_body_son_top_main_interface_v";
   "Needed-by : FGNR:Section_for_formula_body_son_top_main_v";
   "What-is-it : It defines the Son_top_main_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from domain_son_top_mainset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_smb =
  let sym_smb = Octuplet_v.left_off_octuplet oct_smb in
  match sym_smb with
  | Section_for_formula_body_son_top_main_symbol_t.Make_topson_pattern_notleaf_for_formula -> 
  (* | Top_symbol_t.Son_symbol sym_son -> *)
  (*     Top_formula_t.Son_formula  *)
  (*       (Son_formula_v.make sym_son soi_mai) *)

  (* | ... repeat *)
      
      let sym_gr1 = Group_for_formula_body_son_top_main_symbol_v.make_topson_pattern_notleaf_for_formula in
      let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_son_top_main_symbol sym_gr1 in

      Tools_ignr_v.topson_notleaf_symbol_repeated_list_of_octtup_of_group_symbol 
        oct_smb
	sym_gro

;;
