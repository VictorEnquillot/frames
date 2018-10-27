(** {3 The functionalities for the Key list for Provider management.}  *)

let nam_cod = "key_list_v";;

(** {6 Modules.} *)

module Cfs_v = Codefile_symbol_v
module Cts_v = Category_symbol_v
module Dbl_v = Doublet_list_v
module Dbt_v = Doublet_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Enc_v = Entitycategory_v
module Ens_v = Entity_symbol_v
module Erm_v = Error_messages_v
module Its_v = Item_symbol_v
module Kyl_t = Key_list_t
module Lst_v = List_v
module Tre_v = Tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cns_v = Constructor_symbol_v

(** {6 Making.} *)

let make st1 st2 str_l = 
  Dbl_v.prepend st1 st2 str_l 
;;
(** Example : ("codefilename", "atom_symbol_function") :: [ ...] 
    constructor_path simulation. *)

(** {6 Displaying.} *)

let name key_l =
  Dbl_v.name_with_separator (fun s->s) (fun s->s) "; " key_l
;;

(** {6 Querying.} *)

(** {6 Extracting.} *)

let value_name_of_key_name_off_key_list nam_key key_l =
  let str_dbt = 
    try Dbl_v.find_if_left (fun s -> s = nam_key) key_l
    with Failure ("Not_found:Dbl_v.find_if_left") ->
      failwith "Not_found:Kyl_v.value_name_of_key_name_off_key_list"
  in
  Dbt_v.right_off_doublet str_dbt
;;

let head_instance_name_off_key_list key_l =
    let str_dbt = List.hd key_l in
    Dbt_v.left_off_doublet str_dbt
;;

let head_instance_symbol_name_off_key_list key_l =
    let str_dbt = List.hd key_l in
    Dbt_v.right_off_doublet str_dbt
;;

let entityname_off_key_list key_l =
  value_name_of_key_name_off_key_list "entity" key_l
;;

let entity_proper_symbol_off_key_list key_l =
  let nam_ent = entityname_off_key_list key_l in
  Ens_v.entity_proper_symbol_of_string nam_ent
;;

let entity_symbol_off_key_list key_l =
  let nam_ent = entityname_off_key_list key_l in
  Ens_v.make nam_ent
;;

let category_symbol_off_key_list key_l =
  let nam_cat = value_name_of_key_name_off_key_list "category" key_l in
  Cts_v.make nam_cat
;;

let codefile_symbol_off_key_list key_l =
  let nam_cfi = value_name_of_key_name_off_key_list "codefile" key_l in
  Cfs_v.make nam_cfi
;;

let entitycategory_off_key_list key_l =
  let smb_ent = entity_symbol_off_key_list key_l in
  let smb_cat = category_symbol_off_key_list key_l in
  Enc_v.make smb_ent smb_cat
;;

let entitycategorycodefile_off_key_list key_l =
  let enc = entitycategory_off_key_list key_l in
  let nam_cfi = value_name_of_key_name_off_key_list "codefile" key_l in
  let smb_cfi = Cfs_v.make nam_cfi in
  Ecc_v.entitycategorycodefile_of_entitycategory_of_codefile_symbol enc smb_cfi
;;

let entitycategorysuffix_off_key_list key_l =
  let ecc = entitycategorycodefile_off_key_list key_l in
  Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc
;;
 
let codefile_suffix_off_key_list key_l =
  let ecc = entitycategorycodefile_off_key_list key_l in
  Ecc_v.codefile_suffix_of_entitycategorycodefile ecc
;;

let item_symbol_off_key_list key_l =
  let nam_itm = value_name_of_key_name_off_key_list "item" key_l in
  Its_v.make nam_itm
;;

let replace_of_codefile_symbol_of_key_list smb_cfi key_l =
  Lst_v.replace_of_predicate_of_element_of_list
    (fun (s, v) -> s = "codefile") 
    (Dbt_v.make "codefile" (Cfs_v.name smb_cfi)) 
    key_l
;;

