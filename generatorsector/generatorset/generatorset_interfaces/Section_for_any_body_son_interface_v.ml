(** {6 Section_for_any_body_son_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_any_body_son_interface_v";
   "Needed-by : FGNR:Section_for_any_body_son_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Remark : It is two Repeated list of the same Builder";
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_sbs = (*** Improve  move into formula ***)
  let sym_sbs = Octuplet_v.left_off_octuplet oct_sbs in
  match sym_sbs with
  | Section_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_constructors ->

      let sym_gbs = Group_for_any_body_son_symbol_v.pipe_topson_any_type_notleaf_one_constructor in
      let sym_gbs_l = 
	Tools_ignr_v.topson_notleaf_symbol_repeated_list_of_octtup_of_group_symbol 
	  oct_sbs 
	  sym_gbs
      in
      let sym_gnl_l = List.map
	  Group_symbol_v.group_symbol_of_group_for_any_body_son_symbol
	  sym_gbs_l
      in 
      
      sym_gnl_l

;;

