(** {3 Provides of Kind_symbol_list for a Category_tag.}  *)

let nam_cod = "Kind_symbol_list_by_category_symbol_provider_v.ml";;

(** {6 Registering} *)

let nam_reg = "kind_symbol_list_by_category_symbol_register";;

let kind_symbol_list_by_category_symbol_register : 
    (Category_symbol_t.category_symbol, 
     Kind_symbol_t.kind_symbol list) 
    Register_t.register = Register_v.make 137
;;

let store sym_cat sym_kin_l =
  try Register_v.store 
      kind_symbol_list_by_category_symbol_register 
      sym_cat sym_kin_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored sym_cat =
  Register_v.is_stored 
    kind_symbol_list_by_category_symbol_register sym_cat
;;

let retrieve sym_cat =
  try Register_v.retrieve 
      kind_symbol_list_by_category_symbol_register 
      sym_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let build sym_cat =
(* No selection *)
  Kind_symbol_v.kind_symbol_list ()
;;

let build_n_store sym_cat =
  let sym_kin_l = build sym_cat in
  store sym_cat sym_kin_l; 
  sym_kin_l
;;

let provide sym_cat =
  if Register_v.is_stored 
      kind_symbol_list_by_category_symbol_register 
      sym_cat 
  then retrieve sym_cat
  else build_n_store sym_cat 
;;
