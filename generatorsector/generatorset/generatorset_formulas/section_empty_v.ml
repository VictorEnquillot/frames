(** {3 Section_stem_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Section_stem_interface_v";
   "Current : FGNR:Section_stem_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is an Empty Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sss =
  match for_sss with
  | Section_stem_formula_t.Section_stem_empty _ -> 
      Section_stem_symbol_t.Section_stem_empty
;;

(** {6 Naming_for_formula} *)

let name for_sss = 
  let sym_sss = symbol_of_formula for_sss in
  Section_stem_symbol_v.name sym_sss
;;
(* ***

let string_off for_sss =
  let sym_sss = symbol_of_formula for_sss in
  Section_stem_symbol_v.string_off sym_sss
;;

let longname for_sss =
  Format.sprintf "Section_stem_formula_t.%s" 
    (String.capitalize (name for_sss))

let fullname for_sss =
  Format.sprintf "%s \"%s\"" (longname for_sss) (string_off for_sss)
;;
*** *)

(** {6 Building_and_storing} *)

(** {6 Making_for_formula} *)

let make sym_sss soi_sec =
  match sym_sss with 
  | Section_stem_symbol_t.Section_stem_empty -> 
      Section_stem_formula_t.Section_stem_empty []
;;

(** {6 Retrieving} *)

let retrieve tag_sss =
  let soi_sec = Tag_v.sole_index_off_tag tag_sss in
  let sym_sss = Tag_v.entity_off_tag tag_sss in
  make sym_sss soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_stem_formula for_sss =
  []
;;

let group_tag_list_off_section_stem_tag tag_sss =
  []
;; 

let camlline_tag_list_off_section_stem_formula for_sss =
  []
;;

let camlline_tag_list_off_section_stem_tag tag_sss =
  []
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_sss = 
  []
;;

let iter f_of_tag_gro for_sss = 
  ()
;;

let map2 f_of_tag_gro for_sss_1 for_sss_2  = 
  []
;;

let iter2 f_of_tag_gro for_sss_1 for_sss_2 = 
  ()
;;

