(** {3 Entity_stem_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Entity_stem_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Entity_stem_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_iii =
  match sym_iii with
  | Entity_stem_symbol_t.Leaf_1 ->

      let sym_ca11 = Camlline_11_symbol_v.cal_11 in
      let sym_ca12 = Camlline_12_symbol_v.cal_12 in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_11_symbol sym_ca11;
       Camlline_symbol_v.camlline_symbol_of_camlline_12_symbol sym_ca12;
     ]
	
  | Entity_stem_symbol_t.Leaf_2 ->

      let sym_ca21 = Camlline_21_symbol_v.cal_21 in
      let sym_ca22 = Camlline_22_symbol_v.cal_22 in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_21_symbol sym_ca21;
       Camlline_symbol_v.camlline_symbol_of_camlline_22_symbol sym_ca22;
     ]
;;


