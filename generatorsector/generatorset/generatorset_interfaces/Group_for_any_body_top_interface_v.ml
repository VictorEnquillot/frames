(** {3 Group_for_any_body_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_any_body_top_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Group_for_any_body_top_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_gbt = 
  match sym_gbt with 
  | Group_for_any_body_top_symbol_t.Sprintf_for_any_fullname ->
(*  Format.sprintf "%s \"%s\"" (longname sym_geo) (string_off sym_geo) *)

      let sym_ca1 = Camlline_for_any_uno_top_symbol_v.sprintf_for_any_fullname in

      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_top_symbol sym_ca1;
     ] 

  | Group_for_any_body_top_symbol_t.Sprintf_for_any_longname ->
(*  Format.sprintf "Geometry_symbol_t.%s" (String.capitalize (name sym_geo)) *)

      let sym_ca1 = Camlline_for_any_uno_top_symbol_v.sprintf_for_any_longname in

      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_top_symbol sym_ca1;
     ] 
;;
