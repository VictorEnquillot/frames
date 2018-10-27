(** {3 The functionalities for an Entitycategorycodefile_n_codefile_suffix Doublet.}  *)

module Ecc_v = Entitycategorycodefile_v
module Csu_v = Codefile_suffix_v
module Dbt_v = Doublet_v

(** {6 Codefile Suffix.} *)

let codefile_suffix_private_scope_of_codefile_symbol = function
  | Cfs_t.Implementation_symbol -> Csu_v.suffix_p
  | Cfs_t.Interface_symbol -> Csu_v.suffix_p
  | smb_cfi -> 
      Erm_v.print_fatal_error nam_cod
	"codefile_suffix_private_scope_of_codefile_symbol" 
	"Implementation|Interface" 
	(Format.sprintf ">%s<" (Cfs_v.name smb_cfi)) 
	"check"
;;

let codefile_suffix_public_scope_of_codefile_symbol = function
  | Cfs_t.Implementation_symbol -> Csu_v.suffix_v
  | Cfs_t.Interface_symbol -> Csu_v.suffix_v
  | Cfs_t.Type_symbol -> Csu_v.suffix_t
  | Cfs_t.Empty -> 
      Erm_v.print_fatal_error nam_cod
	"codefile_suffix_private_scope_of_codefile_symbol" 
        "Empty"
	"Public scope suffix" "check"
;;

let codefile_suffix_of_entitycategorycodefile ecc =
  let smb_cfi = codefile_symbol_off_entitycategorycodefile ecc in
  let sco = Scp_v.provide ecc in

  match sco with 
  | Sco_t.Scope_private ->
      codefile_suffix_private_scope_of_codefile_symbol smb_cfi

  | Sco_t.Scope_public ->
      codefile_suffix_public_scope_of_codefile_symbol smb_cfi
;;

let codefile_suffix_name_of_entitycategorycodefile ecc =
  let suf = codefile_suffix_of_entitycategorycodefile ecc in
  Csu_v.name suf
;;

(** {6 Making.} *)

let make ecc =
  let suf = 
  Dbt_v.make ecc suf
;;

(** {6 Extracting} *)

let entitycategorycodefile_off_entitycategorycodefile_n_codefile_suffix ecs =
  Dbt_v.left_off_doublet ecs 
;;

let codefile_suffix_off_entitycategorycodefile_n_codefile_suffix ecs =
  Dbt_v.right_off_doublet ecs 
;;

(** {6 Displaying.} *)

let name ecs =
  let ecc = entitycategorycodefile_off_entitycategorycodefile_n_codefile_suffix ecs in
  let mss = codefile_suffix_off_entitycategorycodefile_n_codefile_suffix ecs in

  Format.sprintf "%s_%s" (Ecc_v.name ecc) (Csu_v.name mss)
;;

let abbreviation_argument ecs =
  let ecc = entitycategorycodefile_off_entitycategorycodefile_n_codefile_suffix ecs in
  Ecc_v.abbreviation_argument ecc
;;

let abbreviation_module ecs =
  let ecc = entitycategorycodefile_off_entitycategorycodefile_n_codefile_suffix ecs in
  let abb_cfi = Ecc_v.abbreviation_module ecc in
  let mss = codefile_suffix_off_entitycategorycodefile_n_codefile_suffix ecs in

  Format.sprintf "%s_%s" abb_cfi (Csu_v.name mss)
;;
