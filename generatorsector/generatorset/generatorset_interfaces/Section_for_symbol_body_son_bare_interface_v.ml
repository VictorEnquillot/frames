(** {6 Section_for_symbol_body_son_bare_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_symbol_body_son_bare_interface_v";
   "Needed-by : FGNR:Section_for_symbol_body_son_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_ssb =

  let sym_ssb = Octuplet_v.left_off_octuplet oct_ssb in
  match sym_ssb with
    | Section_for_symbol_body_son_bare_symbol_t.Make_ecstring_pattern_bare_for_symbol ->
(* | "son" -> son    : Leaf_bare *)

	let sym_gr1 = Group_for_symbol_body_son_symbol_v.pipe_esstring_arrow_es in
	let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_body_son_symbol sym_gr1 in

        Tools_ignr_v.topson_bare_symbol_repeated_list_of_octtup_of_group_symbol 
            oct_ssb 
            sym_gro
	
    | Section_for_symbol_body_son_bare_symbol_t.Pipe_topson_symbol_type_bare_constructors ->
(* | Son                     : Leaf_bare *)


	let sym_gr1 = Group_for_symbol_body_son_symbol_v.pipe_es_symbol_bare_type_constructor in
	let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_body_son_symbol sym_gr1 in

        Tools_ignr_v.topson_bare_symbol_repeated_list_of_octtup_of_group_symbol 
            oct_ssb 
            sym_gro
;;

