(** {3 The functionalities for a Entitycategorysuffix.}  *)

let nam_cod = "entitycategorysuffix_v.ml";;

module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Csu_t = Codefile_suffix_t
module Csu_v = Codefile_suffix_v
module Cts_v = Category_symbol_v
module Dbt_v = Doublet_v
module Ecc_t = Entitycategorycodefile_t
module Ecc_v = Entitycategorycodefile_v
module Ecs_t = Entitycategorysuffix_t
module Enc_t = Entitycategory_t
module Enc_v = Entitycategory_v
module Ens_t = Entity_symbol_t
module Ens_v = Entity_symbol_v
module Erm_v = Error_messages_v
module Sco_t = Scope_t
module Scp_v = Scope_provider_v
module Trp_v = Triplet_v

(** {6 Making.} *)

let adapt_of_codefile_suffix_of_entity_symbol suf_cfi = function
  | Ens_t.Entity_fictive_symbol _ ->
      Csu_v.suffix_empty
	
  | smb_ent ->
      begin
	match suf_cfi with
	| Csu_t.Empty ->
	    Erm_v.print_fatal_error nam_cod
	      "adapt_of_entity_symbol_of_codefile_suffix"
	      (Format.sprintf "Non Empty Codefile Suffix for Entity Symbol >%s<" (Ens_v.name smb_ent))
	      "Empty Codefile Suffix" 
	      "check"
	  | _  ->
	      suf_cfi
      end
;;

let adapt_of_codefile_suffix_of_entitycategory suf_cfi enc =
  let sco = Scp_v.provide enc in
  let smb_ent = Enc_v.entity_symbol_off_entitycategory enc in
 
  match (smb_ent, suf_cfi, sco) with
    | (Ens_t.Entity_fictive_symbol _, _, _) -> Csu_v.suffix_empty
    | (_, Csu_t.T, Sco_t.Scope_public) -> Csu_v.suffix_t
    | (_, Csu_t.Empty, _) -> 
	    Erm_v.print_fatal_error nam_cod
	      "adapt_of_codefile_suffix_of_entitycategory"
	      (Format.sprintf "Non Empty Codefile Suffix for Entity Symbol >%s<" (Ens_v.name smb_ent))
	      "Empty Codefile Suffix" 
	      "check"
    | (_, _, Sco_t.Scope_public) -> Csu_v.suffix_v
    | (_, _, Sco_t.Scope_private) -> Csu_v.suffix_p
    | (_, _, Sco_t.Scope_empty) -> Csu_v.suffix_empty
;;

let make smb_ent smb_cat suf_cfi =
  let smb_cat_a =  
    Enc_v.adapt_of_category_symbol_of_entity_symbol smb_cat smb_ent
  in
  let enc = Enc_v.make smb_ent smb_cat in
  let suf_cfi_a = 
    adapt_of_codefile_suffix_of_entitycategory suf_cfi enc 
  in

  Trp_v.make smb_ent smb_cat_a suf_cfi_a
;;

let entitycategorysuffix_of_entitycategorycodefile ecc =
  let smb_ent = Ecc_v.entity_symbol_off_entitycategorycodefile ecc in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc in
  let suf_cfi = Ecc_v.codefile_suffix_of_entitycategorycodefile ecc in
  make smb_ent smb_cat suf_cfi 
;;

(** {6 Extracting.} *)

let codefile_suffix_off_entitycategorysuffix ecs =
  Trp_v.third_off_triplet ecs
;;

let entitycategory_off_entitycategorysuffix ecs =
    Trp_v.left_doublet_off_triplet ecs
;;

let category_symbol_off_entitycategorysuffix ecs =
  Trp_v.middle_off_triplet ecs
;;

let entity_symbol_off_entitycategorysuffix ecs =
    Trp_v.first_off_triplet ecs
;;

let entityname_off_entitycategorysuffix ecs =
  let smb_ent = entity_symbol_off_entitycategorysuffix ecs in
  Ens_v.name smb_ent
;;

(** {6 Displaying.} *)

let codefile_suffix_name_of_entitycategorysuffix ecs =
  let suf_cfi = codefile_suffix_off_entitycategorysuffix ecs in
  Csu_v.name suf_cfi
;;
let codefile_suffix_name = codefile_suffix_name_of_entitycategorysuffix;;

let name ecs =
  let enc = entitycategory_off_entitycategorysuffix ecs in
  let nam_enc = Enc_v.name enc in
  let suf_cfi = codefile_suffix_off_entitycategorysuffix ecs in

  match suf_cfi with
  | Csu_t.Empty -> nam_enc
  | _ ->
      Format.sprintf "%s_%s" nam_enc (Csu_v.name suf_cfi)
;;

let name_capitalized ecs =
  String.capitalize (name ecs)
;;

(** {6 Modifying.} *)

let modify_of_entity_symbol_of_entitycategorysuffix smb_ent ecs =
  let smb_cat = category_symbol_off_entitycategorysuffix ecs in
  let suf_cfi = codefile_suffix_off_entitycategorysuffix ecs in
  make smb_ent smb_cat suf_cfi
;;

let modify_of_category_symbol_of_entitycategorysuffix smb_cat ecs =
  let smb_ent = entity_symbol_off_entitycategorysuffix ecs in
  let suf_cfi = codefile_suffix_off_entitycategorysuffix ecs in
  make smb_ent smb_cat suf_cfi
;;

let modify_of_codefile_suffix_of_entitycategorysuffix suf_cfi ecs =
  let smb_ent = entity_symbol_off_entitycategorysuffix ecs in
  let smb_cat = category_symbol_off_entitycategorysuffix ecs in
  make smb_ent smb_cat suf_cfi
;;

let entitycategorytype_of_entitycategorysuffix ecs =
  let enc = entitycategory_off_entitycategorysuffix ecs in
  let ect = Ecc_v.entitycategorytype_of_entitycategory enc in
  entitycategorysuffix_of_entitycategorycodefile ect
;;

(** {6 Inferring.} *)

let scope_of_entitycategorysuffix ecs =
  let enc = entitycategory_off_entitycategorysuffix ecs in
  Scp_v.provide enc 
;;

