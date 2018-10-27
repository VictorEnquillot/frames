(** {3 The Symbol functionalities for a Primitive_set.} *)

(** {6 Modules.} *)

module Hbs_t = Hsbf_bundle_symbol_t
module Hbs_v = Hsbf_bundle_symbol_v
module Hcs_t = Hsbf_cluster_symbol_t
module Hcs_v = Hsbf_cluster_symbol_v
module Hxs_t = Hsbf_expanded_symbol_t
module Hxs_v = Hsbf_expanded_symbol_v
module Hms_t = Hsbf_molbasis_symbol_t
module Hms_v = Hsbf_molbasis_symbol_v
module Hps_t = Hsbf_pack_symbol_t
module Hps_v = Hsbf_pack_symbol_v
module Hss_t = Hsbf_single_symbol_t
module Hss_v = Hsbf_single_symbol_v
module Xxs_t = Xfp_expanded_symbol_t
module Xxs_v = Xfp_expanded_symbol_v
module Xss_t = Xfp_single_symbol_t
module Xss_v = Xfp_single_symbol_v
module Pss_t = Primitiveset_symbol_t

(** {6 Extracting.} *)
 
let hsbf_bundle_symbol_off_primitiveset_symbol = function
  | Pss_t.Hsbf_bundle_symbol smb -> smb
  | _ -> failwith "No_Hsbf_bundle_symbol:hsbf_bundle_symbol_off_primitiveset_symbol"
;;
 
let hsbf_cluster_symbol_off_primitiveset_symbol = function
  | Pss_t.Hsbf_cluster_symbol smb -> smb
  | _ -> failwith "No_Hsbf_cluster_symbol:hsbf_cluster_symbol_off_primitiveset_symbol"
;;
 
let hsbf_expanded_symbol_off_primitiveset_symbol = function
  | Pss_t.Hsbf_expanded_symbol smb -> smb
  | _ -> failwith "No_Hsbf_expanded_symbol:hsbf_expanded_symbol_off_primitiveset_symbol"
;;
 
let hsbf_molbasis_symbol_off_primitiveset_symbol = function
  | Pss_t.Hsbf_molbasis_symbol smb -> smb
  | _ -> failwith "No_Hsbf_molbasis_symbol:hsbf_molbasis_symbol_off_primitiveset_symbol"
;;
 
let hsbf_pack_symbol_off_primitiveset_symbol = function
  | Pss_t.Hsbf_pack_symbol smb -> smb
  | _ -> failwith "No_Hsbf_pack_symbol:hsbf_pack_symbol_off_primitiveset_symbol"
;;
 
let hsbf_single_symbol_off_primitiveset_symbol = function
  | Pss_t.Hsbf_single_symbol smb -> smb
  | _ -> failwith "No_Hsbf_single_symbol:hsbf_single_symbol_off_primitiveset_symbol"
;;
 
let xfp_expanded_symbol_off_primitiveset_symbol = function
  | Pss_t.Xfp_expanded_symbol smb -> smb
  | _ -> failwith "No_Xfp_expanded_symbol:xfp_expanded_symbol_off_primitiveset_symbol"
;;
 
let xfp_single_symbol_off_primitiveset_symbol = function
  | Pss_t.Xfp_single_symbol smb -> smb
  | _ -> failwith "No_Xfp_single_symbol:xfp_single_symbol_off_primitiveset_symbol"
;;
 

(** {6 Upgrading.} *)

let primitiveset_symbol_of_hsbf_bundle_symbol smb_hsb =
  Pss_t.Hsbf_bundle_symbol smb_hsb
;;

let primitiveset_symbol_of_hsbf_cluster_symbol smb_hsc =
  Pss_t.Hsbf_cluster_symbol smb_hsc
;;

let primitiveset_symbol_of_hsbf_expanded_symbol smb_hsx =
  Pss_t.Hsbf_expanded_symbol smb_hsx
;;

let primitiveset_symbol_of_hsbf_molbasis_symbol smb_hsm =
  Pss_t.Hsbf_molbasis_symbol smb_hsm
;;

let primitiveset_symbol_of_hsbf_pack_symbol smb_hsp =
  Pss_t.Hsbf_pack_symbol smb_hsp
;;

let primitiveset_symbol_of_hsbf_single_symbol smb_hss =
  Pss_t.Hsbf_single_symbol smb_hss
;;

let primitiveset_symbol_of_xfp_expanded_symbol smb_xfx =
  Pss_t.Xfp_expanded_symbol smb_xfx
;;

let primitiveset_symbol_of_xfp_single_symbol smb_xfs =
  Pss_t.Xfp_single_symbol smb_xfs
;;


(** {6 Converting.} *)

let print ppf = function
  | Pss_t.Hsbf_bundle_symbol smb ->
     Format.fprintf ppf "Hb_%a" Hbs_v.print smb
  | Pss_t.Hsbf_cluster_symbol smb ->
     Format.fprintf ppf "Hc_%a" Hcs_v.print smb
  | Pss_t.Hsbf_expanded_symbol smb ->
     Format.fprintf ppf "Hx_%a" Hxs_v.print smb
  | Pss_t.Hsbf_molbasis_symbol smb ->
     Format.fprintf ppf "Hm_%a" Hms_v.print smb
  | Pss_t.Hsbf_pack_symbol smb ->
     Format.fprintf ppf "Hp_%a" Hps_v.print smb
  | Pss_t.Hsbf_single_symbol smb ->
     Format.fprintf ppf "Hs_%a" Hss_v.print smb
  | Pss_t.Xfp_expanded_symbol smb ->
     Format.fprintf ppf "Xx_%a" Xxs_v.print smb
  | Pss_t.Xfp_single_symbol smb ->
     Format.fprintf ppf "Xs_%a" Xss_v.print smb
;;

let name = function
  | Pss_t.Hsbf_bundle_symbol smb ->
     Format.sprintf "Hb_%s" (Hbs_v.name smb)
  | Pss_t.Hsbf_cluster_symbol smb ->
     Format.sprintf "Hc_%s" (Hcs_v.name smb)
  | Pss_t.Hsbf_expanded_symbol smb ->
     Format.sprintf "Hx_%s" (Hxs_v.name smb)
  | Pss_t.Hsbf_molbasis_symbol smb ->
     Format.sprintf "Hm_%s" (Hms_v.name smb)
  | Pss_t.Hsbf_pack_symbol smb ->
     Format.sprintf "Hp_%s" (Hps_v.name smb)
  | Pss_t.Hsbf_single_symbol smb ->
     Format.sprintf "Hs_%s" (Hss_v.name smb)
  | Pss_t.Xfp_expanded_symbol smb ->
     Format.sprintf "Xx_%s" (Xxs_v.name smb)
  | Pss_t.Xfp_single_symbol smb ->
     Format.sprintf "Xs_%s" (Xss_v.name smb)

(** created by ./do_entity_set_category_v_ml symbol 07 octobre 2009. *)

