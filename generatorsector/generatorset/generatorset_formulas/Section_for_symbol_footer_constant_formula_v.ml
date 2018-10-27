(** {3 Section_for_symbol_footer_constant_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Section_for_symbol_footer_constant_interface_v";
   "Current : FGNR:Section_for_symbol_footer_constant_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is an Empty Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sfc =
  match for_sfc with
  | Section_for_symbol_footer_constant_formula_t.Section_for_symbol_footer_constant_empty _ -> 
      Section_for_symbol_footer_constant_symbol_t.Section_for_symbol_footer_constant_empty
;;

(** {6 Naming_for_formula} *)

let name for_sfc = 
  let sym_sfc = symbol_of_formula for_sfc in
  Section_for_symbol_footer_constant_symbol_v.name sym_sfc
;;
(* ***

let string_off for_sfc =
  let sym_sfc = symbol_of_formula for_sfc in
  Section_for_symbol_footer_constant_symbol_v.string_off sym_sfc
;;

let longname for_sfc =
  Format.sprintf "Section_for_symbol_footer_constant_formula_t.%s" 
    (String.capitalize (name for_sfc))

let fullname for_sfc =
  Format.sprintf "%s \"%s\"" (longname for_sfc) (string_off for_sfc)
;;
*** *)

(** {6 Building_and_storing} *)

(** {6 Making_for_formula} *)

let make sym_sfc soi_sec =
  match sym_sfc with 
  | Section_for_symbol_footer_constant_symbol_t.Section_for_symbol_footer_constant_empty -> 
      Section_for_symbol_footer_constant_formula_t.Section_for_symbol_footer_constant_empty []
;;

(** {6 Retrieving} *)

let retrieve tag_sfc =
  let soi_sec = Tag_v.sole_index_off_tag tag_sfc in
  let sym_sfc = Tag_v.entity_off_tag tag_sfc in
  make sym_sfc soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_symbol_footer_constant_formula for_sfc =
  []
;;

let group_tag_list_off_section_for_symbol_footer_constant_tag tag_sfc =
  []
;; 

let camlline_tag_list_off_section_for_symbol_footer_constant_formula for_sfc =
  []
;;

let camlline_tag_list_off_section_for_symbol_footer_constant_tag tag_sfc =
  []
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_sfc = 
  []
;;

let iter f_of_tag_gro for_sfc = 
  ()
;;

let map2 f_of_tag_gro for_sfc_1 for_sfc_2  = 
  []
;;

let iter2 f_of_tag_gro for_sfc_1 for_sfc_2 = 
  ()
;;

