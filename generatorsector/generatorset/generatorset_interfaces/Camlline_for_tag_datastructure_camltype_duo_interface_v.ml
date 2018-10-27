(** {3 Camlline_for_tag_datastructure_camltype_duo_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_tag_datastructure_camltype_duo_interface_v";
   "Current : IGNR:Camlline_for_tag_datastructure_camltype_v";
   "Needed-by : FGNR:Camlline_for_tag_datastructure_camltype_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure_camltype for Leaf Entities"; 
   "Improve : should be read from dobuilderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_cut sym_ent_a sym_ent_b =
  match sym_cut with
  | Camlline_for_tag_datastructure_camltype_duo_symbol_t.Lpar_a_b_tag_rpar ->
      [
       sym_ent_a;
       sym_ent_b;
     ]
;;


