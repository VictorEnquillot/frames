(** {3 The functionalities for a Tree of all Entity_symbol for an Entity.}  *)

let nam_cod = "Entity_symbol_tree_v";;

(** {6 Modules.} *)

module Ens_v = Entity_symbol_v
module End_v = Entity_data_v
module Tre_t = Tree_t 
module Tre_v = Tree_v

(** {6 Making.} *)

let entityson_symbol_list_of_entitynameson_list nam_ent_l =
  List.map Ens_v.make nam_ent_l
;;

let entityson_symbol_list_of_datastructure_entityname nam_ent =
  let nam_ent_l = 
    End_v.entitynameson_list_of_datastructure_entityname nam_ent 
  in
  entityson_symbol_list_of_entitynameson_list nam_ent_l
;;

let rec make smb_ent =
  let nam_ent = Ens_v.name smb_ent in 
  let str_t = End_v.string_tree_of_entityname nam_ent in
  match str_t with 
  | Tre_t.Empty -> Tre_t.Empty
  | Tre_t.Leaf s -> Tre_t.Leaf (Ens_v.make s) 
  | Tre_t.Inner (s, s_tl) -> 
      let se = Ens_v.make s in
      if not (Ens_v.is_datastructure_off_entity_symbol se)
      then 
	begin
	  let s_l = List.map Tre_v.root_off_tree s_tl in
	  let se_l = List.map Ens_v.make s_l in
	  let se_tl = List.map make se_l in
	  Tre_t.Inner (se, se_tl)
	end
      else Tre_t.Leaf se 
;;

