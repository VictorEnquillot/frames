(** {3 Translates a Symbol into a Trail.}  *)

let nam_cod = "Translating_trail_of_symbol_v.ml";;

let domain_trail_of_domain_symbol sym_dom =
  let nam_dom = Domain_symbol_v.name sym_dom in
  Trail_v.make "domain" nam_dom []
;;

let category_trail_of_domain_symbol_of_category_symbol sym_dom sym_cat =
  let tra_dom = domain_trail_of_domain_symbol sym_dom in
  let nam_cat = Category_symbol_v.name sym_cat in
  Trail_v.make "category" nam_cat tra_dom
;;

let kind_trail_of_kind_name_of_category_trail nam_kin tra_cat =
  Trail_v.make "kind" nam_kin tra_cat
;;

let entity_basename_for_trail sym_ent = (*** Improve ***)
  match sym_ent with
  | Entity_symbol_t.Entity_proper_symbol _ -> 
      (Entity_symbol_v.string_off sym_ent)

  | Entity_symbol_t.Entity_fictive_symbol 
      Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Bare s ->

      (Entity_symbol_v.string_off sym_ent)

  | Entity_symbol_t.Entity_fictive_symbol 
      Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Ofstring s ->

      (Entity_symbol_v.string_off sym_ent)^":ofstring"

  | Entity_symbol_t.Entity_fictive_symbol 
      Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol _ ->

	Utilities_v.not_yet_implemented nam_cod "entity_basename_for_trail Entity_fictive_basicnullary_symbol"

  | Entity_symbol_t.Entity_external_symbol _ ->
      Utilities_v.not_yet_implemented nam_cod "entity_basename_for_trail Entity_external_symbol"
  ;;


let entity_trail_of_entity_tritup tri_ent =
  let (sym_ent, sym_cat, sym_dom) = tri_ent in 

  let nam_dom = Domain_symbol_v.name sym_dom in
  let nam_cat = Category_symbol_v.name sym_cat in
  let nam_ent = entity_basename_for_trail sym_ent in
  
  let tra_dom = Trail_v.make "domain" nam_dom [] in
  let tra_cat = Trail_v.make "category" nam_cat tra_dom in

  Trail_v.make "entity" nam_ent tra_cat
;;
