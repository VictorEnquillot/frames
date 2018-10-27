(** {3 Section_for_symbol_footer_current_son_top_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Section_for_symbol_footer_current_son_top_interface_v";
   "Current : FGNR:Section_for_symbol_footer_current_son_top_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is an Empty Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sst =
  match for_sst with
  | Section_for_symbol_footer_current_son_top_formula_t.Section_for_symbol_footer_current_son_top_empty _ -> 
      Section_for_symbol_footer_current_son_top_symbol_t.Section_for_symbol_footer_current_son_top_empty
;;

(** {6 Naming_for_formula} *)

let name for_sst = 
  let sym_sst = symbol_of_formula for_sst in
  Section_for_symbol_footer_current_son_top_symbol_v.name sym_sst
;;
(* ***

let string_off for_sst =
  let sym_sst = symbol_of_formula for_sst in
  Section_for_symbol_footer_current_son_top_symbol_v.string_off sym_sst
;;

let longname for_sst =
  Format.sprintf "Section_for_symbol_footer_current_son_top_formula_t.%s" 
    (String.capitalize (name for_sst))

let fullname for_sst =
  Format.sprintf "%s \"%s\"" (longname for_sst) (string_off for_sst)
;;
*** *)

(** {6 Building_and_storing} *)

(** {6 Making_for_formula} *)

let make sym_sst soi_sec =
  match sym_sst with 
  | Section_for_symbol_footer_current_son_top_symbol_t.Section_for_symbol_footer_current_son_top_empty -> 
      Section_for_symbol_footer_current_son_top_formula_t.Section_for_symbol_footer_current_son_top_empty []
;;

(** {6 Retrieving} *)

let retrieve tag_sst =
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  make sym_sst soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_symbol_footer_current_son_top_formula for_sst =
  []
;;

let group_tag_list_off_section_for_symbol_footer_current_son_top_tag tag_sst =
  []
;; 

let camlline_tag_list_off_section_for_symbol_footer_current_son_top_formula for_sst =
  []
;;

let camlline_tag_list_off_section_for_symbol_footer_current_son_top_tag tag_sst =
  []
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_sst = 
  []
;;

let iter f_of_tag_gro for_sst = 
  ()
;;

let map2 f_of_tag_gro for_sst_1 for_sst_2  = 
  []
;;

let iter2 f_of_tag_gro for_sst_1 for_sst_2 = 
  ()
;;

