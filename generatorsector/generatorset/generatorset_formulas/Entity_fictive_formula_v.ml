(** {3 Entity_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_proper_symbol_list_by_localset_tag_provider_v";
   "Current : FGNR:Entity_formula_v";
   "What-is-it : It is a list of Contentfile_tag";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making.} *)

let make sym_enf soi_ent =
  match sym_enf with
  | Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol sym_efb -> 
      (* Entity_fictive_basicnullary_formula_v.make sym_efb soi_ent *)
      Utilities_v.not_yet_implemented nam_cod "make Entity_fictive_basicnullary_symbol"

  |  Entity_fictive_symbol_t.Entity_fictive_nullary_symbol sym_efn ->
      Entity_fictive_nullary_formula_v.make sym_efn soi_ent
;;

(** {6 Retrieving.} *)

let retrieve tag_ent = 
  let soi_ent = Tag_v.sole_index_off_tag tag_ent in
  let sym_ent = Tag_v.entity_off_tag tag_ent in
  make sym_ent soi_ent
;;

(** {6 Extracting.} *)

let contentfile_tag_list_off_entity_fictive_formula for_enf =
  match for_enf with
  |  Entity_fictive_formula_t.Entity_fictive_basicnullary_formula -> 
      Utilities_v.not_yet_implemented nam_cod "contentfile_tag_list_off_entity_fictive_formula Entity_fictive_basicnullary_formulaî"
  |  Entity_fictive_formula_t.Entity_fictive_nullary_formula for_efn ->
      Entity_fictive_nullary_formula_v.contentfile_tag_list_off_entity_fictive_nullary_formula for_efn
;;
(*
let name = 
  | Entity_fictive_formula_t.Entity_fictive_basicnullary_formula -> 
      Entity_fictive_basicnullary_formula_v.name for_efb

  |  Entity_fictive_symbol_t.Entity_fictive_nullary_symbol sym_efn ->
      Entity_fictive_nullary_formula_v.name for_efn
;;
*)
