(** {3 The functionalities for the Category_Scoped for an Entity.}  *)

let nam_cod = "category_scoped_v.ml";;

(** {6 Modules.} *)

module Cts_v = Category_symbol_v
module Dbt_v = Doublet_v
module Erm_v = Error_messages_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Fln_v = Filename_p
module Scp_v = Scope_v
module Str_v = String_v

(** {6 Making.} *)

let make smb_cat scp =
  Dbt_v.make smb_cat scp 
;;

(** {6 Extracting.} *)

let category_symbol_off_category_scoped scp_cat =
  Dbt_v.left_off_doublet scp_cat
;;

let scope_off_category_scoped scp_cat =
  Dbt_v.right_off_doublet scp_cat
;;

(** {6 Displaying.} *)

let name scp_cat =
  Dbt_v.name Cts_v.name Scp_v.name scp_cat
;;

let scope_filename = Filename_p.filename ( "category_scoped.dat" );;

let entity_symbol_n_category_scoped_of_string str =
  let w_l = Str_v.split_of_c ' ' str in
  let nam_ent = List.nth w_l 0 in
  let nam_cat = List.nth w_l 1 in
  let nam_scp = List.nth w_l 2 in
  let smb_ent = Ens_v.make nam_ent in
  let smb_cat = Cts_v.make nam_cat in
  let scp = Scp_v.make nam_scp in
  Dbt_v.make smb_ent (make smb_cat scp) 
;;

let entity_symbol_n_category_scoped_list =
  let fln = scope_filename in
  let str_l = Fio_v.string_list_of_filename fln in
  List.map entity_symbol_n_category_scoped_of_string str_l
;;

 
