(** {3 The functionalities for a Entitycategorycodefile.}  *)

let nam_cod = "entitycategorycodefile_v.ml";;

(** {6 Modules.} *)

module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Csu_v = Codefile_suffix_v
module Cts_v = Category_symbol_v
module Dbt_v = Doublet_v
module Ecc_t = Entitycategorycodefile_t
module Enc_t = Entitycategory_t
module Enc_v = Entitycategory_v
module End_v = Entity_data_v
module Ens_t = Entity_symbol_t
module Ens_v = Entity_symbol_v
module Erm_v = Error_messages_v
module Exs_t = Entity_external_symbol_t
module Exs_v = Entity_external_symbol_v
module Lst_v = List_v
module Str_v = String_v
module Sco_t = Scope_t
module Sco_v = Scope_v
module Scp_v = Scope_provider_v
module Trp_v = Triplet_v

(** {6 Adapting.} *)

let adapt_of_codefile_symbol_of_entity_symbol smb_cfi = function
  | Ens_t.Entity_fictive_symbol _ ->
      Cfs_v.codefile_empty
	
  | smb_ent ->
      begin
	match smb_cfi with
	| Cfs_t.Empty ->
	    Erm_v.print_fatal_error nam_cod
	      "adapt_of_entity_symbol_of_codefile_symbol"
	      (Format.sprintf "Non Empty Codefile Symbol for Entity Symbol >%s<" (Ens_v.name smb_ent))
	      "Empty Codefile Symbol" 
	      "check"
	  | _  ->
	      smb_cfi
      end
;;

(** {6 Making.} *)

let make smb_ent smb_cat smb_cfi =
  let smb_cat_a =  
    Enc_v.adapt_of_category_symbol_of_entity_symbol smb_cat smb_ent
  in
  let smb_cfi_a = 
    adapt_of_codefile_symbol_of_entity_symbol smb_cfi smb_ent 
  in
  Trp_v.make smb_ent smb_cat_a smb_cfi_a
;;

let entitycategorycodefile_of_entitycategory_of_codefile_symbol enc smb_cfi =
  let smb_ent = Enc_v.entity_symbol_off_entitycategory enc in
  let smb_cat = Enc_v.category_symbol_off_entitycategory enc in
  make smb_ent smb_cat smb_cfi  
;;

let entitycategorycodefile_of_string_of_string_of_string s_1 s_2 s_3 =
  let enc = Enc_v.entitycategory_of_string_of_string s_1 s_2 in
  let smb_cfi = Cfs_v.make s_3 in
  entitycategorycodefile_of_entitycategory_of_codefile_symbol enc smb_cfi
;;

let entitycategorycodefile_of_entity_external_symbol_n_codefile_symbol enx_n_cfi =
  let (smb_enx, smb_cfi) = enx_n_cfi in
  let smb_ent = Ens_t.Entity_external_symbol smb_enx in
  let smb_cat = Cts_v.category_empty in
  make smb_ent smb_cat smb_cfi
;;

(** {6 Extracting.} *)

let entity_symbol_off_entitycategorycodefile ecc =
  Trp_v.left_off_triplet ecc
;;

let entityname_off_entitycategorycodefile ecc =
  let smb_ent = entity_symbol_off_entitycategorycodefile ecc in
  Ens_v.name smb_ent
;;

let category_symbol_off_entitycategorycodefile ecc =
  Trp_v.middle_off_triplet ecc
;;

let codefile_symbol_off_entitycategorycodefile ecc =
  Trp_v.right_off_triplet ecc 
;;

let entitycategory_off_entitycategorycodefile ecc =
  Trp_v.left_doublet_off_triplet ecc
;;

let name ecc =
  let enc = entitycategory_off_entitycategorycodefile ecc in
  let nam_enc = Enc_v.name enc in
  let smb_cfi = codefile_symbol_off_entitycategorycodefile ecc in
  match smb_cfi with
  | Cfs_t.Empty -> nam_enc
  | _ ->
      Format.sprintf "%s_%s" nam_enc (Cfs_v.name smb_cfi)
;;

(** {6 Modifying.} *)

let modify_of_entity_symbol_of_entitycategorycodefile smb_ent ecc =
  let smb_cat = category_symbol_off_entitycategorycodefile ecc in
  let smb_cfi = codefile_symbol_off_entitycategorycodefile ecc in
  make smb_ent smb_cat smb_cfi
;;

let modify_of_category_symbol_of_entitycategorycodefile smb_cat ecc =
  let smb_ent = entity_symbol_off_entitycategorycodefile ecc in
  let smb_cfi = codefile_symbol_off_entitycategorycodefile ecc in
  make smb_ent smb_cat smb_cfi
;;

let modify_of_codefile_symbol_of_entitycategorycodefile smb_cfi ecc =
  let smb_ent = entity_symbol_off_entitycategorycodefile ecc in
  let smb_cat = category_symbol_off_entitycategorycodefile ecc in
  make smb_ent smb_cat smb_cfi
;;

let entitycategorytype_of_entitycategory enc =
  entitycategorycodefile_of_entitycategory_of_codefile_symbol 
    enc Cfs_v.codefile_type 
;;

let entitycategorytype_of_entitycategorycodefile ecc =
  let enc = entitycategory_off_entitycategorycodefile ecc in
  entitycategorytype_of_entitycategory enc
;;

(** {6 Inferring.} *)

let scope_of_entitycategorycodefile ecc =
  let enc = entitycategory_off_entitycategorycodefile ecc in
  Scp_v.provide enc 
;;

let codefile_suffix_of_entitycategorycodefile ecc =
  let smb_ent = entity_symbol_off_entitycategorycodefile ecc in
  let smb_cfi = codefile_symbol_off_entitycategorycodefile ecc in
  let sco = scope_of_entitycategorycodefile ecc in

  match (smb_ent, smb_cfi, sco) with
    | (Ens_t.Entity_fictive_symbol _, _, _) -> Csu_v.suffix_empty
    | (_, Cfs_t.Type_symbol, Sco_t.Scope_public) -> Csu_v.suffix_t
    | (_, _, Sco_t.Scope_public) -> Csu_v.suffix_v
    | (_, _, Sco_t.Scope_private) -> Csu_v.suffix_p
    | (_, _, Sco_t.Scope_empty) -> Csu_v.suffix_empty
;;

let file_extension_of_entitycategorycodefile ecc =
  let smb_cfi = codefile_symbol_off_entitycategorycodefile ecc in
  Cfs_v.file_extension smb_cfi
;;

let codefile_suffix_name_of_entitycategorycodefile ecc =
  let suf_cfi = codefile_suffix_of_entitycategorycodefile ecc in
  Csu_v.name suf_cfi
;;
let codefile_suffix_name = codefile_suffix_name_of_entitycategorycodefile;;
