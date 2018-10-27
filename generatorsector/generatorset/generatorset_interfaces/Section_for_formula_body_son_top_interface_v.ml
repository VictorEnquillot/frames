(** {6 Section_for_formula_body_son_top_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_formula_body_son_top_interface_v";
   "Needed-by : FGNR:Section_for_formula_body_son_top_v";
   "What-is-it : It defines the Son_top_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from domain_son_topset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_sst =
  let sym_sst = Octuplet_v.left_off_octuplet oct_sst in
  match sym_sst with
  | Section_for_formula_body_son_top_symbol_t.Symbol_of_formula_topson_pattern_bare ->
  (* | Top_formula_t.Son _ ->  *)
  (*     Top_symbol_t.Son *)
  (* | ... repeat *)
      
      let sym_gr1 = Group_for_formula_body_son_top_symbol_v.symbol_of_formula_topson_pattern_bare in
      let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_son_top_symbol sym_gr1 in

      Tools_ignr_v.topson_bare_symbol_repeated_list_of_octtup_of_group_symbol 
	oct_sst
	sym_gro

  | Section_for_formula_body_son_top_symbol_t.Symbol_of_formula_topson_pattern_notleaf ->
  (* | Top_formula_t.Son_formula for_cc1 -> *)
  (*     Top_symbol_t.Son_symbol *)
  (*       (Son_formula_v.symbol_of_formula for_cc1) *)
  (* | ... repeat *)

      let sym_gr1 = Group_for_formula_body_son_top_symbol_v.symbol_of_formula_topson_pattern_notleaf in
      let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_son_top_symbol sym_gr1 in

      Tools_ignr_v.topson_notleaf_symbol_repeated_list_of_octtup_of_group_symbol 
	oct_sst
	sym_gro

  | Section_for_formula_body_son_top_symbol_t.Symbol_of_formula_topson_pattern_ofstring ->
  (* | Top_formula_t.Son (s, _) ->  *)
  (*     Top_symbol_t.Son s *)
  (* | ... repeat *)

      let sym_gr1 = Group_for_formula_body_son_top_symbol_v.symbol_of_formula_topson_pattern_ofstring in
      let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_son_top_symbol sym_gr1 in

      Tools_ignr_v.topson_ofstring_symbol_repeated_list_of_octtup_of_group_symbol 
	oct_sst
	sym_gro
;;
