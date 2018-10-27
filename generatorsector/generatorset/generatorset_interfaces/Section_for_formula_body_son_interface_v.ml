(** {6 Section_for_formula_body_son_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_formula_body_son_interface_v";
   "Needed-by : FGNR:Section_for_formula_body_son_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_sbs =
  let sym_sbs = Octuplet_v.left_off_octuplet oct_sbs in
  match sym_sbs with
   | Section_for_formula_body_son_symbol_t.Pipe_topson_symbol_type_notleaf_constructors ->
(* | Son of Son_symbol_t.son : Notleaf *)

	let sym_gr1 = Group_for_any_body_son_symbol_v.pipe_es_any_notleaf_type_constructor in
	let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_body_son_symbol sym_gr1 in

        Tools_ignr_v.topson_notleaf_symbol_repeated_list_of_octtup_of_group_symbol 
            oct_sbs 
            sym_gro

    | Section_for_formula_body_son_symbol_t.Section_for_formula_body_son_bare_symbol sym_ssb ->
(* | "son" -> son    : Leaf_bare *)

	let sep = Octuplet_v.right_septuplet_off_octuplet oct_sbs in
	let oct_ssb = Octuplet_v.make_of_left_of_septuplet sym_ssb sep in
	Section_for_formula_body_son_bare_interface_v.make_of_tuple oct_ssb

    | Section_for_formula_body_son_symbol_t.Section_for_formula_body_son_ofstring_symbol sym_sso ->
(* | "son" -> son s  : Leaf_ofstring *)
	let sep = Octuplet_v.right_septuplet_off_octuplet oct_sbs in
	let oct_sso = Octuplet_v.make_of_left_of_septuplet sym_sso sep in
	Section_for_formula_body_son_ofstring_interface_v.make_of_tuple oct_sso

;;
