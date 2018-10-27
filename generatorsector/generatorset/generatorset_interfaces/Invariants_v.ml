let nam_cod = "Invariants_v.ml";;

let has_symbol_category_of_entity_proper_triplet tri_enp =
  let nam_fun = "has_symbol_category_of_entity_proper_triplet" in

  let sym_cat = Triplet_v.middle_off_triplet tri_enp in
  match sym_cat with
  | Category_symbol_t.Symbol -> ()
	
  | _ ->
      Error_messages_v.print_fatal_error nam_cod nam_fun
	"category were Symbol"  
	(Category_symbol_v.name sym_cat)
	"Check category"
;;

