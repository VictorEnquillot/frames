(** {3 Translating_entity_symbol_of_constructor_basename_v}  *)

let nam_cod = "Translating_entity_symbol_of_constructor_basename_v.ml";;

(**
let top_has_notopsonleaf s =  (*** Improve is that useful ? ***) 
  Entity_symbol_v.entity_symbol_of_entity_proper_symbol 
    (Entity_proper_symbol_v.top_has_notopsonleaf s)
;;
  
let top_has_sometopsonleaf s = 
  Entity_symbol_v.entity_symbol_of_entity_proper_symbol 
    (Entity_proper_symbol_v.top_has_sometopsonleaf s)
;;
  
let topentity sym_ent_t = 
  let sym_ent_roo = Tree_v.root_off_tree sym_ent_t in
  let nam_ent_roo = Entity_symbol_v.string_off sym_ent_roo in
  
  if (Tree_v.has_notopsonleaf_of_tree sym_ent_t)
  then top_has_notopsonleaf nam_ent_roo 
  else top_has_sometopsonleaf nam_ent_roo 
;;

let selfentity s = 
  Entity_symbol_v.entity_symbol_of_entity_proper_symbol 
    (Entity_proper_symbol_v.selfentity s)
;;

***)

let entity_external nam s = 
  Entity_symbol_v.entity_symbol_of_entity_external_symbol 
    (Entity_external_symbol_v.make nam s)
;;

let entity_external_datastructure s = 
  let (wor, _) = String_v.word_n_string_off_string s in
  Entity_symbol_v.entity_symbol_of_entity_external_symbol 
    (Entity_external_symbol_v.entity_external_symbol_of_entity_external_datastructure_symbol 
       (Entity_external_datastructure_symbol_v.make wor) )
;;

let is_entity_categorized s =
  if not (String_v.is_once_of_char_of_string ':' s) 
  then false
  else  
    begin
      let (nam_ent, nam_dat) = 
	String_v.first_string_doublet_of_char_off_string ':' s 
      in
      Category_symbol_v.is_category_symbol_of_string nam_dat
    end
;;

let is_entity_fictive_nullary_ofstring_of_string s =
  if not (String_v.is_once_of_char_of_string ':' s) 
  then false
  else  
    begin
      let (nam_ent, ofs) = 
	String_v.first_string_doublet_of_char_off_string ':' s 
      in
      ofs = "ofstring"
    end
;;

let is_entity_builder_basic s =
  String_v.is_basictype_name_of_string s 
;;

let is_entity_fictive_basicnullary s =
  String_v.is_basictype_name_of_string s 
;;

let entity_proper_symbol_of_constructor_notleaf_basename_of_son_count ban_con cou_son =
  let nam_fun = "entity_proper_symbol_of_constructor_notleaf_basename_of_son_count" in
  match cou_son with
  | 0 ->
      Error_messages_v.print_fatal_error nam_cod nam_fun 
	"an Inner node without son were a Leaf"
	(Format.sprintf "Inner node >%s< has no son" ban_con)
	"Check Invariant when building the Constructor_basename_tree"
	
  | 1 ->
      Entity_proper_symbol_v.make "entity_proper_with_one_son" ban_con
	
  | n ->
      Entity_proper_symbol_v.make "entity_proper_with_sons" ban_con
;;

