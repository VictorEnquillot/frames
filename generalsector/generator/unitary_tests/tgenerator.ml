
(*
  #use "tgenerator.ml";;
*)

module Str_v = String_v 
module Cfs_v = Codefile_symbol_v
module Cfv_v = Codefile_value_v
module Cns_v = Constructor_symbol_v

module Ens_v = Entity_symbol_v
module Cts_v = Category_symbol_v
module Tgv_v = Target_value_v
module Tvp_v = Target_value_provider_v

let command_line = "symbol type aggregate";;
let command_line = "symbol type atom";;

let w_l = Str_v.split_of_c ' ' command_line ;; (* symbol type atom *)

let nam_cat = List.nth w_l 0;; 
let nam_cod = List.nth w_l 1;; 
let nam_ent = List.nth w_l 2;; 

let smb_cat = Cts_v.make nam_cat;;
let smb_ent = Ens_v.make nam_ent;;
let smb_cfi = Cfs_v.make nam_cfi;;

let kyl_cfi = [("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi ;;
Tvp_v.store_force "current" val_tgt;;
 
let val_cfi =  Cfv_v.make kyl_cfi;;
Cfv_v.write stdout val_cfi;;