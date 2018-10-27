(** {3 The Tag functionalities for a Primitive_set.} *)

let nam_mod = "Primitiveset_tag_v";;

(** {6 Modules.} *)

module Psi_t = Primitiveset_index_t
module Psi_v = Primitiveset_index_v
module PsS_t = Primitiveset_state_t
module PsS_v = Primitiveset_state_v
module Pss_t = Primitiveset_symbol_t
module Pss_v = Primitiveset_symbol_v

module Hbt_v = Hsbf_bundle_tag_v
module Hct_v = Hsbf_cluster_tag_v
module Hxt_v = Hsbf_expanded_tag_v
module Hmt_v = Hsbf_molbasis_tag_v
module Hpt_v = Hsbf_pack_tag_v
module Hst_v = Hsbf_single_tag_v
module Xxt_v = Xfp_expanded_tag_v
module Xst_v = Xfp_single_tag_v

(** {6 Making.} *)

let make = Tag_v.make;;

(** {6 Extracting.} *)

let hsbf_bundle_tag_off_primitiveset_tag tag_chs =
  let (smb_chs, sta_chs, idx_chs) = Tag_v.triplet_off_tag tag_chs in
  let smb_hsb = Pss_v.hsbf_bundle_symbol_off_primitiveset_symbol smb_chs in
  let sta_hsb = PsS_v.hsbf_bundle_state_off_primitiveset_state sta_chs in
  let idx_hsb = Psi_v.hsbf_bundle_index_off_primitiveset_index idx_chs in
  Hbt_v.make smb_hsb sta_hsb idx_hsb
;;
 
let hsbf_cluster_tag_off_primitiveset_tag tag_chs =
  let (smb_chs, sta_chs, idx_chs) = Tag_v.triplet_off_tag tag_chs in
  let smb_hsc = Pss_v.hsbf_cluster_symbol_off_primitiveset_symbol smb_chs in
  let sta_hsc = PsS_v.hsbf_cluster_state_off_primitiveset_state sta_chs in
  let idx_hsc = Psi_v.hsbf_cluster_index_off_primitiveset_index idx_chs in
  Hct_v.make smb_hsc sta_hsc idx_hsc
;;
 
let hsbf_expanded_tag_off_primitiveset_tag tag_chs =
  let (smb_chs, sta_chs, idx_chs) = Tag_v.triplet_off_tag tag_chs in
  let smb_hsx = Pss_v.hsbf_expanded_symbol_off_primitiveset_symbol smb_chs in
  let sta_hsx = PsS_v.hsbf_expanded_state_off_primitiveset_state sta_chs in
  let idx_hsx = Psi_v.hsbf_expanded_index_off_primitiveset_index idx_chs in
  Hxt_v.make smb_hsx sta_hsx idx_hsx
;;
 
let hsbf_molbasis_tag_off_primitiveset_tag tag_chs =
  let (smb_chs, sta_chs, idx_chs) = Tag_v.triplet_off_tag tag_chs in
  let smb_hsm = Pss_v.hsbf_molbasis_symbol_off_primitiveset_symbol smb_chs in
  let sta_hsm = PsS_v.hsbf_molbasis_state_off_primitiveset_state sta_chs in
  let idx_hsm = Psi_v.hsbf_molbasis_index_off_primitiveset_index idx_chs in
  Hmt_v.make smb_hsm sta_hsm idx_hsm
;;
 
let hsbf_pack_tag_off_primitiveset_tag tag_chs =
  let (smb_chs, sta_chs, idx_chs) = Tag_v.triplet_off_tag tag_chs in
  let smb_hsp = Pss_v.hsbf_pack_symbol_off_primitiveset_symbol smb_chs in
  let sta_hsp = PsS_v.hsbf_pack_state_off_primitiveset_state sta_chs in
  let idx_hsp = Psi_v.hsbf_pack_index_off_primitiveset_index idx_chs in
  Hpt_v.make smb_hsp sta_hsp idx_hsp
;;
 
let hsbf_single_tag_off_primitiveset_tag tag_chs =
  let (smb_chs, sta_chs, idx_chs) = Tag_v.triplet_off_tag tag_chs in
  let smb_hss = Pss_v.hsbf_single_symbol_off_primitiveset_symbol smb_chs in
  let sta_hss = PsS_v.hsbf_single_state_off_primitiveset_state sta_chs in
  let idx_hss = Psi_v.hsbf_single_index_off_primitiveset_index idx_chs in
  Hst_v.make smb_hss sta_hss idx_hss
;;
 
let xfp_expanded_tag_off_primitiveset_tag tag_chs =
  let (smb_chs, sta_chs, idx_chs) = Tag_v.triplet_off_tag tag_chs in
  let smb_xfx = Pss_v.xfp_expanded_symbol_off_primitiveset_symbol smb_chs in
  let sta_xfx = PsS_v.xfp_expanded_state_off_primitiveset_state sta_chs in
  let idx_xfx = Psi_v.xfp_expanded_index_off_primitiveset_index idx_chs in
  Xxt_v.make smb_xfx sta_xfx idx_xfx
;;
 
let xfp_single_tag_off_primitiveset_tag tag_chs =
  let (smb_chs, sta_chs, idx_chs) = Tag_v.triplet_off_tag tag_chs in
  let smb_xfs = Pss_v.xfp_single_symbol_off_primitiveset_symbol smb_chs in
  let sta_xfs = PsS_v.xfp_single_state_off_primitiveset_state sta_chs in
  let idx_xfs = Psi_v.xfp_single_index_off_primitiveset_index idx_chs in
  Xst_v.make smb_xfs sta_xfs idx_xfs
;;
 

(** {6 Upgrading.} *)

let primitiveset_tag_of_hsbf_bundle_tag tag_hsb =
  let (smb_hsb, sta_hsb, idx_hsb) = Tag_v.triplet_off_tag tag_hsb in
  let smb_hsb = Pss_t.Hsbf_bundle_symbol smb_hsb in
  let sta_hsb = PsS_t.Hsbf_bundle_state sta_hsb in
  let idx_hsb = Psi_t.Hsbf_bundle_index idx_hsb in
  make smb_hsb sta_hsb idx_hsb
;;
(** hsbf_bundle_tag is upgraded to Primitiveset_tag. *)

let primitiveset_tag_of_hsbf_cluster_tag tag_hsc =
  let (smb_hsc, sta_hsc, idx_hsc) = Tag_v.triplet_off_tag tag_hsc in
  let smb_hsc = Pss_t.Hsbf_cluster_symbol smb_hsc in
  let sta_hsc = PsS_t.Hsbf_cluster_state sta_hsc in
  let idx_hsc = Psi_t.Hsbf_cluster_index idx_hsc in
  make smb_hsc sta_hsc idx_hsc
;;
(** hsbf_cluster_tag is upgraded to Primitiveset_tag. *)

let primitiveset_tag_of_hsbf_expanded_tag tag_hsx =
  let (smb_hsx, sta_hsx, idx_hsx) = Tag_v.triplet_off_tag tag_hsx in
  let smb_hsx = Pss_t.Hsbf_expanded_symbol smb_hsx in
  let sta_hsx = PsS_t.Hsbf_expanded_state sta_hsx in
  let idx_hsx = Psi_t.Hsbf_expanded_index idx_hsx in
  make smb_hsx sta_hsx idx_hsx
;;
(** hsbf_expanded_tag is upgraded to Primitiveset_tag. *)

let primitiveset_tag_of_hsbf_molbasis_tag tag_hsm =
  let (smb_hsm, sta_hsm, idx_hsm) = Tag_v.triplet_off_tag tag_hsm in
  let smb_hsm = Pss_t.Hsbf_molbasis_symbol smb_hsm in
  let sta_hsm = PsS_t.Hsbf_molbasis_state sta_hsm in
  let idx_hsm = Psi_t.Hsbf_molbasis_index idx_hsm in
  make smb_hsm sta_hsm idx_hsm
;;
(** hsbf_molbasis_tag is upgraded to Primitiveset_tag. *)

let primitiveset_tag_of_hsbf_pack_tag tag_hsp =
  let (smb_hsp, sta_hsp, idx_hsp) = Tag_v.triplet_off_tag tag_hsp in
  let smb_hsp = Pss_t.Hsbf_pack_symbol smb_hsp in
  let sta_hsp = PsS_t.Hsbf_pack_state sta_hsp in
  let idx_hsp = Psi_t.Hsbf_pack_index idx_hsp in
  make smb_hsp sta_hsp idx_hsp
;;
(** hsbf_pack_tag is upgraded to Primitiveset_tag. *)

let primitiveset_tag_of_hsbf_single_tag tag_hss =
  let (smb_hss, sta_hss, idx_hss) = Tag_v.triplet_off_tag tag_hss in
  let smb_hss = Pss_t.Hsbf_single_symbol smb_hss in
  let sta_hss = PsS_t.Hsbf_single_state sta_hss in
  let idx_hss = Psi_t.Hsbf_single_index idx_hss in
  make smb_hss sta_hss idx_hss
;;
(** hsbf_single_tag is upgraded to Primitiveset_tag. *)

let primitiveset_tag_of_xfp_expanded_tag tag_xfx =
  let (smb_xfx, sta_xfx, idx_xfx) = Tag_v.triplet_off_tag tag_xfx in
  let smb_xfx = Pss_t.Xfp_expanded_symbol smb_xfx in
  let sta_xfx = PsS_t.Xfp_expanded_state sta_xfx in
  let idx_xfx = Psi_t.Xfp_expanded_index idx_xfx in
  make smb_xfx sta_xfx idx_xfx
;;
(** xfp_expanded_tag is upgraded to Primitiveset_tag. *)

let primitiveset_tag_of_xfp_single_tag tag_xfs =
  let (smb_xfs, sta_xfs, idx_xfs) = Tag_v.triplet_off_tag tag_xfs in
  let smb_xfs = Pss_t.Xfp_single_symbol smb_xfs in
  let sta_xfs = PsS_t.Xfp_single_state sta_xfs in
  let idx_xfs = Psi_t.Xfp_single_index idx_xfs in
  make smb_xfs sta_xfs idx_xfs
;;
(** xfp_single_tag is upgraded to Primitiveset_tag. *)
(** {6 Converting.} *)

let print =
  Tag_v.print Pss_v.print PsS_v.print Psi_v.print
;;

let name =
  Tag_v.name Pss_v.name PsS_v.name Psi_v.name
;;

(** created by ./do_entity_set_tag_v_ml tag 07 octobre 2009. *)

