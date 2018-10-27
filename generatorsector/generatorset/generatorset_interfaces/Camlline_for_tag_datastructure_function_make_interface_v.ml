(** {3 Camlline_for_tag_datastructure_function_make_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_tag_datastructure_function_make_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Camlline_for_tag_datastructure_function_make_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_ctt sym_ent_a sym_ent_b sym_ent_c =
  match sym_ctt with
  | Camlline_for_tag_datastructure_function_make_symbol_t.Lpar_a_b_c_tag_rpar
  | Camlline_for_tag_datastructure_function_make_symbol_t.Lpar_a_b_c_tag_rpar_tree_footed_capped
  | Camlline_for_tag_datastructure_function_make_symbol_t.Lpar_a_b_c_tag_rpar_tree_leafed_capped

      [
       sym_ent_a;
       sym_ent_b;
       sym_ent_c;
     ]
;;


