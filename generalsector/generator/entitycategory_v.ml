(** {3 The functionalities for a Entitycategory.}  *)

let nam_cod = "entitycategory_v.ml";;

(** {6 Modules.} *)

module Cts_t = Category_symbol_t
module Cts_v = Category_symbol_v
module Dbt_v = Doublet_v
module Enc_t = Entitycategory_t
module End_v = Entity_data_v
module Ens_t = Entity_symbol_t
module Ens_v = Entity_symbol_v
module Erm_v = Error_messages_v
module Exs_v = Entity_external_symbol_v
module Lst_v = List_v
module Str_v = String_v

(** {6 Adapting.} *)

let adapt_of_category_symbol_of_entity_symbol smb_cat = function
  | Ens_t.Entity_fictive_symbol _  
  | Ens_t.Entity_external_symbol _ ->  
      Cts_v.category_empty
  | s ->
      begin
	match smb_cat with
	| Cts_t.Empty ->
	    Erm_v.print_fatal_error nam_cod
	      "adapt_of_category_symbol_of_entity_symbol"
	      (Format.sprintf "Non Empty Category Symbol for Entity Symbol >%s<" (Ens_v.name s))
	      "Empty Category Symbol" 
	      "check"
	| _  ->
	    smb_cat
      end
;;

(** {6 Making.} *)

let make smb_ent smb_cat =
  let smb_cat_a =  
    adapt_of_category_symbol_of_entity_symbol smb_cat smb_ent
  in
  Dbt_v.make smb_ent smb_cat_a
;;

let entitycategory_of_string_of_string nam_ent nam_cat =
  let smb_ent = Ens_v.make nam_ent in
  let smb_cat = Cts_v.make nam_cat in
  make smb_ent smb_cat
;;

(** {6 Extracting.} *)

let category_symbol_off_entitycategory enc =
  Dbt_v.right_off_doublet enc
;;

let entity_symbol_off_entitycategory enc =
  Dbt_v.left_off_doublet enc
;;

(** {6 Displaying.} *)

let name enc =
  let smb_ent = entity_symbol_off_entitycategory enc in
  let smb_cat = category_symbol_off_entitycategory enc in
  let nam_ent = Ens_v.name smb_ent in 

  match smb_cat with
    | Cts_t.Empty -> nam_ent
    | _ ->
	let nam_cat = Cts_v.name smb_cat in 
	Format.sprintf "%s_%s" nam_ent nam_cat
;;(** Ex. : atom_symbol;  "aggregate"; "string" *)

let name_capitalized enc =
  let nam_enc = name enc in
  String.capitalize nam_enc
;; 
(** Atom_symbol *)
