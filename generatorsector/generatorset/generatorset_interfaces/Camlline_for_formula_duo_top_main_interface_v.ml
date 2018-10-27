(** {3 Camlline_for_formula_duo_top_main_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_duo_top_main_v";
   "Needed-by : FGNR:Camlline_for_formula_duo_top_main_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make_of_tuple dec_ctm =
  let tri_ent = Decuplet_v.right_triplet_off_decuplet dec_ctm in
  let sym_ctm = Decuplet_v.left_off_decuplet dec_ctm in
  let sym_ent_top = Triplet_v.left_off_triplet tri_ent in
  let sym_ent_mai = Entity_main_symbol_by_entity_tritup_provider_v.provide tri_ent in

  match sym_ctm with
  | Camlline_for_formula_duo_top_main_symbol_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in ->

      [
       sym_ent_top;
       sym_ent_mai;
     ]
;;


