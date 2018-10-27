(** {6 Section_for_any_body_top_main_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_any_body_top_main_interface_v";
   "Needed-by : FGNR:Section_for_any_body_top_main_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Remark : It is two Repeated list of the same Builder";
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make sym_sbt =
  match sym_sbt with
  | Section_for_any_body_top_main_symbol_t.Make_tag_top ->

      let sym_gr1 = Group_for_any_body_top_main_symbol_v.make_tag_top in
      [
       Group_symbol_v.group_symbol_of_group_for_any_body_top_main_symbol sym_gr1;
     ]

;;
