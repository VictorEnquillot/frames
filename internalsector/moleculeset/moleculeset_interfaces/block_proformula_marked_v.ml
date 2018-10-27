(** {3 Provides of Atom_mark_list_symbol for an Block_tag .}  *)

let nam_cod = "block_proformula_marked_v.ml";;

(**
Needs :  Word_list_by_entity_name_n_name_provider_v

Remark : It is a Database retrieving Atom_mark list for each Block_tag
*)

(** {6 Aliasing} *)

(** {6 Registering} *)

let nam_reg = "atom_mark_list_by_block_tag_register_v";;

let atom_mark_list_by_block_tag_register_v : 
    (Block_tag_t.block_tag, Atom_mark_t.atom_mark list)
    Register_t.register = Register_v.make 137
;;

let store tag_blo mar_ato_l =
  try Register_v.store 
      atom_mark_list_by_block_tag_register_v tag_blo mar_ato_l
  with Failure ("Already_stored:Register_v.store") ->
    failwith ("Already_stored:Islctp_v.store")
;;

let is_stored tag_blo =
  Register_v.is_stored 
    atom_mark_list_by_block_tag_register_v tag_blo
;;

let retrieve tag_blo =
  try Register_v.retrieve 
      atom_mark_list_by_block_tag_register_v tag_blo
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Not_stored:Islctp_v.retrieve")
;;  

let atom_zerotied_symbol_of_string_of_block_symbol str = function
  | Block_symbol_t.Block_zerotied_symbol 
      (Block_zerotied_symbol_t.Block_zerotied_zerotied_symbol 
	 (Block_none_none_linear_symbol_t.Block_none_none_monoatomic_symbol _)) -> 
	Atom_zerotied_symbol_v.make str

;;

let atom_twotied_symbol_of_string_of_block_symbol str = function
  | Block_symbol_t.Block_zerotied_symbol 
      (Block_zerotied_symbol_t.Block_zerotied_zerotied_symbol 
	 (Block_none_none_bentonelonepair_symbol_t.Block_none_none_bentonelonepair_symbol _))

  | Block_symbol_t.Block_zerotied_symbol 
      (Block_zerotied_symbol_t.Block_zerotied_zerotied_symbol 
	 (Block_none_none_benttwolonepair_symbol_t.Block_none_none_bentonelonepair_symbol _))

  | Block_symbol_t.Block_zerotied_symbol 
      (Block_zerotied_symbol_t.Block_zerotied_zerotied_symbol 
	 (Block_none_none_linear_symbol_t.Block_none_none_bentonelonepair_symbol _)) -> 
	Atom_twotied_symbol_v.make str
;;

let atom_zerotied_symbol_of_string_of_block_symbol str = function
  | Block_symbol_t.Block_zerotied_symbol 
      (Block_zerotied_symbol_t.Block_zerotied_onetied_symbol sym_b01) ->
	Atom_onetied_symbol_v.make str
	  
  | Block_symbol_t.Block_zerotied_symbol 
      (Block_zerotied_symbol_t.Block_zerotied_forktied_symbol 
	(Block_zerotied_biforktied_symbol_t.Block_zerotied_biforktied_symbol 
	   (Block_none_singlesingle_symbol _))) ->
	     Atom_onetied_symbol_v

  | Block_symbol_t.Block_onetied_symbol 
()

;;

let atom_mark_of_string_with_colon str =
  let wor_l = String_v.split_of_c ':' str in
  let nam_ato = List.nth wor_l 0 in
  let nam_vin = List.nth wor_l 1 in
  let sym_ato = Atom_symbol_v.make nam_ato in
  let vin = Vsepr_index_v.make nam_vin in
  Mark_v.make sym_ato vin
;;

let build tag_blo =
  let sym_blo = Tag_v.symbol_off_tag tag_blo in 
  let nam_blo = Block_symbol_v.name sym_blo in
  let nam_ent_n_nam = ("block", nam_blo) in 

  let wor_l = (* Ex.: ["n_sss:tpl_c"; "h_s:tpl_l"; "h_s:tpl_r"] *) 
    Word_list_by_entity_name_n_name_provider_v.provide 
      nam_ent_n_nam
  in
  List.map atom_mark_of_string_with_colon wor_l
;;

let build_n_store tag_blo =
  let mar_ato_l = build tag_blo in
  store tag_blo mar_ato_l; 
  mar_ato_l
;;

let provide tag_blo =
  if Register_v.is_stored atom_mark_list_by_block_tag_register_v tag_blo 
  then retrieve tag_blo
  else build_n_store tag_blo 
;;

