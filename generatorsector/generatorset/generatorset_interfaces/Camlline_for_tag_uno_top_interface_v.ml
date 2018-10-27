(** {3 Camlline_for_tag_uno_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_tag_uno_top_interface_v";
   "Needed-by : FGNR:Camlline_for_tag_uno_top_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_cut sym_ent_top =
  match sym_cut with
  | Camlline_for_tag_uno_top_symbol_t.Let_make_soi_at_nam_at_s_equal
  | Camlline_for_tag_uno_top_symbol_t.Let_make_sym_at_soi_at_equal
  | Camlline_for_tag_uno_top_symbol_t.Let_name_tag_at_equal
  | Camlline_for_tag_uno_top_symbol_t.Tag_vdot_make_sym_at_soi_at
  | Camlline_for_tag_uno_top_symbol_t.Tag_vdot_name_et_symbol_vdot_name_tag_at ->
      
      [
       sym_ent_top;
     ]
;;
