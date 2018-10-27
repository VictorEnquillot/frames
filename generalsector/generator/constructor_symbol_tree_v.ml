(** {3 The functionalities for a Tree of all Constructor_symbol for an Entity.}  *)

let nam_cod = "constructor_symbol_tree_v.ml";;

(** {6 Modules.} *)

module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Ens_t = Entity_symbol_t
module Ens_v = Entity_symbol_v
module Exs_v = Entity_external_symbol_v
module Est_v = Entity_symbol_tree_v
module End_v = Entity_data_v
module Edp_v = Entity_data_provider_v
module Tre_t = Tree_t
module Tre_v = Tree_v 

(** {6 Making.} *)

let contructorson_symbol_list_of_entity_proper_datastructure_symbol smb_end =
  let nam_ent = smb_end in
  let smb_ens_l =
    Est_v.entityson_symbol_list_of_datastructure_entityname nam_ent 
  in
  List.map Cns_v.make smb_ens_l
;;

let entityson_symbol_list_of_entity_proper_datastructure_symbol smb_end =
  let nam_ent = smb_end in 
  Est_v.entityson_symbol_list_of_datastructure_entityname nam_ent 
;;

let rec constructor_symbol_tree_of_entity_symbol smb_ent =
  let smb_ent_t = Est_v.make smb_ent in
  match smb_ent_t with
    | Tre_t.Empty -> Tre_v.empty
    | Tre_t.Leaf s_ent ->
	begin
	  match s_ent with
	  | Ens_t.Entity_proper_symbol 
	      (Ens_t.Entity_proper_datastructure_symbol smb_epd) ->
		let smb_exd = 
		  Ens_v.entity_symbol_of_entity_proper_datastructure_symbol 
		    smb_epd in
		let smb_ens_l = 
		  entityson_symbol_list_of_entity_proper_datastructure_symbol smb_epd 
		in

	    Tre_v.make_of_node 
		  (Cns_v.make s_ent)      (* aggregate *)
		  [Tre_v.make_of_node   
		     (Cns_v.make smb_exd) (* doublet *)
		     (List.map constructor_symbol_tree_of_entity_symbol smb_ens_l)] (* string, ordinal *)  
		  
	  | _ -> Tre_v.make_of_leaf (Cns_v.make s_ent)
	end	

    | Tre_t.Inner (se, se_tl) ->
	let smb_cns_tl =
	  (List.map (Tre_v.map Cns_v.make) se_tl) 
	in
	Tre_v.make_of_node 
	  (Cns_v.make se)
          smb_cns_tl
;;

let make smb_cnt =
  let smb_ent = Cns_v.entity_symbol_off_constructor_symbol smb_cnt in
  constructor_symbol_tree_of_entity_symbol smb_ent
;;

(** {6 Extracting.} *)

let topson_constructor_symbol_list_of_entity_symbol smb_ent =
  let smb_cnt_t = constructor_symbol_tree_of_entity_symbol smb_ent in
  Tre_v.topsonnode_list_off_tree smb_cnt_t
;;

let topson_constructor_symbol_list_of_constructor_symbol_tree smb_cnt_t =
  Tre_v.topsonnode_list_off_tree smb_cnt_t
;;

let topson_constructor_symbol_list_of_constructor_symbol smb_cnt =
  let smb_cnt_t = make smb_cnt in
  Tre_v.topsonnode_list_off_tree smb_cnt_t
;;

let topson_constructor_proper_symbol_list_of_constructor_symbol smb_cnt =
  let smb_cns_l = 
    topson_constructor_symbol_list_of_constructor_symbol smb_cnt
  in
  let lst = List.filter 
      Cns_v.is_constructor_proper_symbol_off_constructor_symbol smb_cns_l
  in
  match lst with
  | [] -> []
  | h::t_l ->
      List.map Cns_v.constructor_proper_symbol_off_constructor_symbol lst
;;

let anyson_constructor_symbol_list_of_constructor_symbol_tree smb_cnt_t =
  Tre_v.anysonnode_list_off_tree smb_cnt_t
;;

let anyson_constructor_symbol_list_of_constructor_symbol smb_cnt =
  Tre_v.anysonnode_list_off_tree (make smb_cnt)
;;

let up_constructor_symbol_list_of_constructor_symbol_tree smb_cnt_t =
  Tre_v.father_list_off_tree smb_cnt_t
;;

let up_constructor_symbol_list_of_constructor_symbol smb_cnt =
  Tre_v.father_list_off_tree (make smb_cnt)
;;

let external_constructor_symbol_list_of_constructor_symbol_tree smb_cnt_t =
  Utils_v.not_yet_implemented nam_cod "external_constructor_symbol_list_of_constructor_symbol_tree"
;;

let external_constructor_symbol_list_of_constructor_symbol smb_cnt =
  Utils_v.not_yet_implemented nam_cod "external_constructor_symbol_list_of_constructor_symbol"
;;
