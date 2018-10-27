(** {3 Section_for_symbol_footer_son_formula_v} *)
(** {3 Section_for_symbol_footer_son_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Section_for_symbol_footer_son_interface_v";
   "Current : FGNR:Section_for_symbol_footer_son_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is an Empty Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sfs =
  match for_sfs with
  | Section_for_symbol_footer_son_formula_t.Section_for_symbol_footer_son_empty _ -> 
      Section_for_symbol_footer_son_symbol_t.Section_for_symbol_footer_son_empty
;;

(** {6 Naming_for_formula} *)

let name for_sfs = 
  let sym_sfs = symbol_of_formula for_sfs in
  Section_for_symbol_footer_son_symbol_v.name sym_sfs
;;
(* ***

let string_off for_sfs =
  let sym_sfs = symbol_of_formula for_sfs in
  Section_for_symbol_footer_son_symbol_v.string_off sym_sfs
;;

let longname for_sfs =
  Format.sprintf "Section_for_symbol_footer_son_formula_t.%s" 
    (String.capitalize (name for_sfs))

let fullname for_sfs =
  Format.sprintf "%s \"%s\"" (longname for_sfs) (string_off for_sfs)
;;
*** *)

(** {6 Building_and_storing} *)

(** {6 Making_for_formula} *)

let make sym_sfs soi_sec =
  match sym_sfs with 
  | Section_for_symbol_footer_son_symbol_t.Section_for_symbol_footer_son_empty -> 
      Section_for_symbol_footer_son_formula_t.Section_for_symbol_footer_son_empty []
;;

(** {6 Retrieving} *)

let retrieve tag_sfs =
  let soi_sec = Tag_v.sole_index_off_tag tag_sfs in
  let sym_sfs = Tag_v.entity_off_tag tag_sfs in
  make sym_sfs soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_symbol_footer_son_formula for_sfs =
  []
;;

let group_tag_list_off_section_for_symbol_footer_son_tag tag_sfs =
  []
;; 

let camlline_tag_list_off_section_for_symbol_footer_son_formula for_sfs =
  []
;;

let camlline_tag_list_off_section_for_symbol_footer_son_tag tag_sfs =
  []
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_sfs = 
  []
;;

let iter f_of_tag_gro for_sfs = 
  ()
;;

let map2 f_of_tag_gro for_sfs_1 for_sfs_2  = 
  []
;;

let iter2 f_of_tag_gro for_sfs_1 for_sfs_2 = 
  ()
;;

