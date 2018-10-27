(** {3 Section_stem_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Builder_symbol";  
   "Needs : IGNR:";
   "Current : IGNR:Section_stem_interface_v";
   "Needed-by : FGNR:Section_stem_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make oct_shc soi_sec =
  let sym_shc = Octuplet_v.left_off_octuplet oct_shc in
  match sym_shc with 
  | Section_stem_symbol_t.B_1 ->
      [
       Bbb_symbol_v.b_1;
     ]

  | Section_stem_symbol_t.B_2 ->
      [
       Bbb_symbol_v.b_2;
     ]

  | Section_stem_symbol_t.B_3 -> 
      [
       Bbb_symbol_v.b_3;
     ]

  | Section_stem_symbol_t.B_4 -> 
      [
       Bbb_symbol_v.b_4;
     ]

  | Section_stem_symbol_t.B_5 -> 
      [
       Bbb_symbol_v.b_5;
     ]
;;

