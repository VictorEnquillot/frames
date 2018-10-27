(** {6 Section_for_symbol_body_son_ofstring_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_symbol_body_son_ofstring_interface_v";
   "Needed-by : FGNR:Section_for_symbol_body_son_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_sso =
  let sym_sso = Octuplet_v.left_off_octuplet oct_sso in
  match sym_sso with
    | Section_for_symbol_body_son_ofstring_symbol_t.Make_ecstring_pattern_ofstring_for_symbol ->
(* | "son" -> son s  : Leaf_ofstring *)

	let sym_gr1 = Group_for_symbol_body_son_symbol_v.pipe_esstring_arrow_es_sarg in
	let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_body_son_symbol sym_gr1 in

        Tools_ignr_v.topson_ofstring_symbol_repeated_list_of_octtup_of_group_symbol 
            oct_sso 
            sym_gro

    | Section_for_symbol_body_son_ofstring_symbol_t.Pipe_topson_symbol_type_ofstring_constructors ->

	let sym_gr1 = Group_for_symbol_body_son_symbol_v.pipe_es_symbol_ofstring_type_constructor in
	let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_body_son_symbol sym_gr1 in

        Tools_ignr_v.topson_ofstring_symbol_repeated_list_of_octtup_of_group_symbol 
            oct_sso 
            sym_gro
;;

