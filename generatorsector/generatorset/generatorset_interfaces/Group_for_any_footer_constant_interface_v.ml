(** {3 Group_for_any_footer_constant_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_any_footer_constant_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Group_for_any_footer_constant_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_gbt =
  match sym_gbt with 
  | Group_for_any_footer_constant_symbol_t.Ending ->

      let sym_ca1 = Camlline_for_any_uno_camlfile_symbol_v.ending in

     [ 
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_camlfile_symbol sym_ca1;
     ]

  | Group_for_any_footer_constant_symbol_t.Double_semicolon ->

      let sym_ca1 = Camlline_constant_pervasive_symbol_v.double_semicolon in

     [ 
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca1;
     ]
;;

