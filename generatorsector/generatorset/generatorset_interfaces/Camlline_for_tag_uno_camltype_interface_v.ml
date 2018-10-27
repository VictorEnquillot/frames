(** {3 Camlline_for_tag_uno_camltype_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_tag_uno_camltype_interface_v";
   "Needed-by : FGNR:Camlline_for_tag_uno_camltype_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_cut sym_ent_top =
  match sym_cut with
  | Camlline_for_tag_uno_camltype_symbol_t.Type_et_tag_equal_et_symbol_tdot_et_symbol_tag ->
      
      [
       sym_ent_top;
     ]
;;
