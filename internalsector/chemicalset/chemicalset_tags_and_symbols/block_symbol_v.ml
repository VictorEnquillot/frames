(** {3 A Symbol for a Block.} *)

let nam_mod = "Block_symbol_v";;

(** {6 Modules.} *)

module Aans_t = Atom_zerotied_anion_symbol_t
module Aans_v = Atom_zerotied_anion_symbol_v
module Acns_t = Atom_zerotied_cation_symbol_t
module Acns_v = Atom_zerotied_cation_symbol_v
module Args_t = Atom_zerotied_raregas_symbol_t
module Args_v = Atom_zerotied_raregas_symbol_v
module Azes_t = Atom_zerotied_symbol_t
module Azes_v = Atom_zerotied_symbol_v
module Bdds_t = Block_onedoubleonedouble_symbol_t
module Bdds_v = Block_onedoubleonedouble_symbol_v
module Bdss_t = Block_onedoubleonesingle_symbol_t
module Bdss_v = Block_onedoubleonesingle_symbol_v
module Bls_t = Block_symbol_t
module Bobs_t = Block_onebifork_symbol_t
module Bobs_v = Block_onebifork_symbol_v
module Boes_t = Block_oneend_symbol_t
module Boes_v = Block_oneend_symbol_v
module Bofs_t = Block_onefork_symbol_t
module Bofs_v = Block_onefork_symbol_v
module Boos_t = Block_oneone_symbol_t
module Boos_v = Block_oneone_symbol_v
module Bots_t = Block_onetrifork_symbol_t
module Bots_v = Block_onetrifork_symbol_v
module Bozs_t = Block_onezero_symbol_t
module Bozs_v = Block_onezero_symbol_v
module Bsds_t = Block_onesingleonedouble_symbol_t
module Bsds_v = Block_onesingleonedouble_symbol_v
module Bsss_t = Block_onesingleonesingle_symbol_t
module Bsss_v = Block_onesingleonesingle_symbol_v
module Bsts_t = Block_onesingleonetriple_symbol_t
module Bsts_v = Block_onesingleonetriple_symbol_v
module Btss_t = Block_onetripleonesingle_symbol_t
module Btss_v = Block_onetripleonesingle_symbol_v
module Bzbfs_t = Block_zerobifork_symbol_t
module Bzbfs_v = Block_zerobifork_symbol_v
module Bzds_t = Block_zeroonedouble_symbol_t
module Bzds_v = Block_zeroonedouble_symbol_v
module Bzfs_t = Block_zerofork_symbol_t
module Bzfs_v = Block_zerofork_symbol_v
module Bzos_t = Block_zeroone_symbol_t
module Bzos_v = Block_zeroone_symbol_v
module Bzqfs_t = Block_zeroquadrifork_symbol_t
module Bzqfs_v = Block_zeroquadrifork_symbol_v
module Bzss_t = Block_zeroonesingle_symbol_t
module Bzss_v = Block_zeroonesingle_symbol_v
module Bztfs_t = Block_zerotrifork_symbol_t
module Bztfs_v = Block_zerotrifork_symbol_v
module Bzts_t = Block_zeroonetriple_symbol_t
module Bzts_v = Block_zeroonetriple_symbol_v
module Bzzds_t = Block_zerozero_diatomic_symbol_t
module Bzzds_v = Block_zerozero_diatomic_symbol_v
module Bzzps_t = Block_zerozero_pentatomic_symbol_t
module Bzzps_v = Block_zerozero_pentatomic_symbol_v
module Bzzqs_t = Block_zerozero_tetratomic_symbol_t
module Bzzqs_v = Block_zerozero_tetratomic_symbol_v
module Bzzs_t = Block_zerozero_symbol_t
module Bzzs_v = Block_zerozero_symbol_v
module Bzzts_t = Block_zerozero_triatomic_symbol_t
module Bzzts_v = Block_zerozero_triatomic_symbol_v
module Hbs_t = Halfbridge_symbol_t
module Hbs_v = Halfbridge_symbol_v

(** {6 Displaying.} *)

let name = function
  | Bls_t.Block_zerozero_symbol smb_bzz -> 
      Bzzs_v.name smb_bzz
  | Bls_t.Block_zeroone_symbol smb_bzo -> 
      Bzos_v.name smb_bzo
  | Bls_t.Block_zerofork_symbol smb_bzf -> 
      Bzfs_v.name smb_bzf
  | Bls_t.Block_oneone_symbol smb_boo -> 
      Boos_v.name smb_boo
  | Bls_t.Block_oneend_symbol smb_boe -> 
      Boes_v.name smb_boe
;;

let print ppf = function
  | Bls_t.Block_zerozero_symbol smb_bzz -> 
      Bzzs_v.print ppf smb_bzz
  | Bls_t.Block_zeroone_symbol smb_bzo -> 
      Bzos_v.print ppf smb_bzo
  | Bls_t.Block_zerofork_symbol smb_bzf -> 
      Bzfs_v.print ppf smb_bzf
  | Bls_t.Block_oneone_symbol smb_boo -> 
      Boos_v.print ppf smb_boo
  | Bls_t.Block_oneend_symbol smb_boe -> 
      Boes_v.print ppf smb_boe
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Block_zerozero from Block.} *)

let block_zerozero_symbol_off_block_symbol = function
  | Bls_t.Block_zerozero_symbol smb_bzz -> smb_bzz
  | s ->  print_fatal_error
      "block_zerozero_symbol_off_block_symbol"
      "Block_zerozero_symbol" (name s)
;;

(** {9 Extracting Atom_zerotied from Block_zerozero from Block.} *)

let atom_zerotied_symbol_off_block_symbol smb_blk =
  let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
    Bzzs_v.atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Atom_zerotied_raregas from Atom_zerotied from Block_zerozero from Block.} *)

let atom_zerotied_raregas_symbol_off_block_symbol smb_blk =
  let smb_aze = atom_zerotied_symbol_off_block_symbol smb_blk in
    Azes_v.atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Atom_zerotied_anion from Atom_zerotied from Block_zerozero from Block.} *)

let atom_zerotied_anion_symbol_off_block_symbol smb_blk =
  let smb_aze = atom_zerotied_symbol_off_block_symbol smb_blk in
    Azes_v.atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Atom_zerotied_cation from Atom_zerotied from Block_zerozero from Block.} *)

let atom_zerotied_cation_symbol_off_block_symbol smb_blk =
  let smb_aze = atom_zerotied_symbol_off_block_symbol smb_blk in
    Azes_v.atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Halfbridge from Atom_zerotied from Block_zerozero from Block.} *)

let halfbridge_symbol_off_block_symbol smb_blk =
  let smb_aze = atom_zerotied_symbol_off_block_symbol smb_blk in
    Azes_v.halfbridge_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {9 Extracting Block_zerozero_diatomic from Block_zerozero from Block.} *)

let block_zerozero_diatomic_symbol_off_block_symbol smb_blk =
  let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
    Bzzs_v.block_zerozero_diatomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Co_zz from Block_zerozero_diatomic from Block_zerozero from Block.} *)

(* No Extraction from co_zz 0. *)

(** {9 Extracting Block_zerozero_triatomic from Block_zerozero from Block.} *)

let block_zerozero_triatomic_symbol_off_block_symbol smb_blk =
  let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
    Bzzs_v.block_zerozero_triatomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Co2_zz from Block_zerozero_triatomic from Block_zerozero from Block.} *)

(* No Extraction from co2_zz 0. *)

(** {12 Extracting No2_zz from Block_zerozero_triatomic from Block_zerozero from Block.} *)

(* No Extraction from no2_zz 0. *)

(** {12 Extracting Oh2_zz from Block_zerozero_triatomic from Block_zerozero from Block.} *)

(* No Extraction from oh2_zz 0. *)

(** {12 Extracting Sh2_zz from Block_zerozero_triatomic from Block_zerozero from Block.} *)

(* No Extraction from sh2_zz 0. *)

(** {12 Extracting So2_zz from Block_zerozero_triatomic from Block_zerozero from Block.} *)

(* No Extraction from so2_zz 0. *)

(** {9 Extracting Block_zerozero_tetratomic from Block_zerozero from Block.} *)

let block_zerozero_tetratomic_symbol_off_block_symbol smb_blk =
  let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
    Bzzs_v.block_zerozero_tetratomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Cho2_1m from Block_zerozero_tetratomic from Block_zerozero from Block.} *)

(* No Extraction from cho2_1m 0. *)

(** {12 Extracting Nh2 from Block_zerozero_tetratomic from Block_zerozero from Block.} *)

(* No Extraction from nh2 0. *)

(** {9 Extracting Block_zerozero_pentatomic from Block_zerozero from Block.} *)

let block_zerozero_pentatomic_symbol_off_block_symbol smb_blk =
  let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
    Bzzs_v.block_zerozero_pentatomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Ch4_zz from Block_zerozero_pentatomic from Block_zerozero from Block.} *)

(* No Extraction from ch4_zz 0. *)

(** {12 Extracting Nh4_zz_1p from Block_zerozero_pentatomic from Block_zerozero from Block.} *)

(* No Extraction from nh4_zz_1p 0. *)

(** {6 Extracting Block_zeroone from Block.} *)

let block_zeroone_symbol_off_block_symbol = function
  | Bls_t.Block_zeroone_symbol smb_bzo -> smb_bzo
  | s ->  print_fatal_error
      "block_zeroone_symbol_off_block_symbol"
      "Block_zeroone_symbol" (name s)
;;

(** {9 Extracting Block_zeroonesingle from Block_zeroone from Block.} *)

let block_zeroonesingle_symbol_off_block_symbol smb_blk =
  let smb_bzo = block_zeroone_symbol_off_block_symbol smb_blk in
    Bzos_v.block_zeroonesingle_symbol_off_block_zeroone_symbol smb_bzo
;;

(** {12 Extracting Ch2_zs from Block_zeroonesingle from Block_zeroone from Block.} *)

(* No Extraction from ch2_zs 0. *)

(** {12 Extracting Ch3_zs from Block_zeroonesingle from Block_zeroone from Block.} *)

(* No Extraction from ch3_zs 0. *)

(** {12 Extracting Coc2_zs from Block_zeroonesingle from Block_zeroone from Block.} *)

(* No Extraction from coc2_zs 0. *)

(** {12 Extracting Coh_zs from Block_zeroonesingle from Block_zeroone from Block.} *)

(* No Extraction from coh_zs 0. *)

(** {12 Extracting Nh2_zs from Block_zeroonesingle from Block_zeroone from Block.} *)

(* No Extraction from nh2_zs 0. *)

(** {12 Extracting Nh3_zs_1p from Block_zeroonesingle from Block_zeroone from Block.} *)

(* No Extraction from nh3_zs_1p 0. *)

(** {12 Extracting No2_zs from Block_zeroonesingle from Block_zeroone from Block.} *)

(* No Extraction from no2_zs 0. *)

(** {12 Extracting No_zs from Block_zeroonesingle from Block_zeroone from Block.} *)

(* No Extraction from no_zs 0. *)

(** {12 Extracting Oh_zs from Block_zeroonesingle from Block_zeroone from Block.} *)

(* No Extraction from oh_zs 0. *)

(** {12 Extracting Sh_zs from Block_zeroonesingle from Block_zeroone from Block.} *)

(* No Extraction from sh_zs 0. *)

(** {9 Extracting Block_zeroonedouble from Block_zeroone from Block.} *)

let block_zeroonedouble_symbol_off_block_symbol smb_blk =
  let smb_bzo = block_zeroone_symbol_off_block_symbol smb_blk in
    Bzos_v.block_zeroonedouble_symbol_off_block_zeroone_symbol smb_bzo
;;

(** {12 Extracting Ch2_d from Block_zeroonedouble from Block_zeroone from Block.} *)

(* No Extraction from ch2_d 0. *)

(** {12 Extracting Co_d from Block_zeroonedouble from Block_zeroone from Block.} *)

(* No Extraction from co_d 0. *)

(** {12 Extracting Nh_d from Block_zeroonedouble from Block_zeroone from Block.} *)

(* No Extraction from nh_d 0. *)

(** {12 Extracting Nh2_d_1p from Block_zeroonedouble from Block_zeroone from Block.} *)

(* No Extraction from nh2_d_1p 0. *)

(** {9 Extracting Block_zeroonetriple from Block_zeroone from Block.} *)

let block_zeroonetriple_symbol_off_block_symbol smb_blk =
  let smb_bzo = block_zeroone_symbol_off_block_symbol smb_blk in
    Bzos_v.block_zeroonetriple_symbol_off_block_zeroone_symbol smb_bzo
;;

(** {12 Extracting Ch_t from Block_zeroonetriple from Block_zeroone from Block.} *)

(* No Extraction from ch_t 0. *)

(** {9 Extracting Block_zeroonehalfbridge from Block_zeroone from Block.} *)

(* No Extraction from block_zeroonehalfbridge 0. *)

(** {6 Extracting Block_zerofork from Block.} *)

let block_zerofork_symbol_off_block_symbol = function
  | Bls_t.Block_zerofork_symbol smb_bzf -> smb_bzf
  | s ->  print_fatal_error
      "block_zerofork_symbol_off_block_symbol"
      "Block_zerofork_symbol" (name s)
;;

(** {9 Extracting Block_zerobifork from Block_zerofork from Block.} *)

let block_zerobifork_symbol_off_block_symbol smb_blk =
  let smb_bzf = block_zerofork_symbol_off_block_symbol smb_blk in
    Bzfs_v.block_zerobifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {12 Extracting Ch_zsc from Block_zerobifork from Block_zerofork from Block.} *)

(* No Extraction from ch_zsc 0. *)

(** {12 Extracting Ch_zsd from Block_zerobifork from Block_zerofork from Block.} *)

(* No Extraction from ch_zsd 0. *)

(** {12 Extracting Nh_zs2 from Block_zerobifork from Block_zerofork from Block.} *)

(* No Extraction from nh_zs2 0. *)

(** {9 Extracting Block_zerotrifork from Block_zerofork from Block.} *)

let block_zerotrifork_symbol_off_block_symbol smb_blk =
  let smb_bzf = block_zerofork_symbol_off_block_symbol smb_blk in
    Bzfs_v.block_zerotrifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {12 Extracting Ch_s3 from Block_zerotrifork from Block_zerofork from Block.} *)

(* No Extraction from ch_s3 0. *)

(** {12 Extracting N_s3 from Block_zerotrifork from Block_zerofork from Block.} *)

(* No Extraction from n_s3 0. *)

(** {9 Extracting Block_zeroquadrifork from Block_zerofork from Block.} *)

let block_zeroquadrifork_symbol_off_block_symbol smb_blk =
  let smb_bzf = block_zerofork_symbol_off_block_symbol smb_blk in
    Bzfs_v.block_zeroquadrifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {12 Extracting C_q from Block_zeroquadrifork from Block_zerofork from Block.} *)

(* No Extraction from c_q 0. *)

(** {12 Extracting N_q_1p from Block_zeroquadrifork from Block_zerofork from Block.} *)

(* No Extraction from n_q_1p 0. *)

(** {6 Extracting Block_oneone from Block.} *)

let block_oneone_symbol_off_block_symbol = function
  | Bls_t.Block_oneone_symbol smb_boo -> smb_boo
  | s ->  print_fatal_error
      "block_oneone_symbol_off_block_symbol"
      "Block_oneone_symbol" (name s)
;;

(** {9 Extracting Block_onesingleonesingle from Block_oneone from Block.} *)

let block_onesingleonesingle_symbol_off_block_symbol smb_blk =
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
    Boos_v.block_onesingleonesingle_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Ch2_ss from Block_onesingleonesingle from Block_oneone from Block.} *)

(* No Extraction from ch2_ss 0. *)

(** {12 Extracting Co_ss from Block_onesingleonesingle from Block_oneone from Block.} *)

(* No Extraction from co_ss 0. *)

(** {12 Extracting Nh2_ss_1p from Block_onesingleonesingle from Block_oneone from Block.} *)

(* No Extraction from nh2_ss_1p 0. *)

(** {12 Extracting Nh_ss from Block_onesingleonesingle from Block_oneone from Block.} *)

(* No Extraction from nh_ss 0. *)

(** {12 Extracting O_ss from Block_onesingleonesingle from Block_oneone from Block.} *)

(* No Extraction from o_ss 0. *)

(** {12 Extracting S_ss from Block_onesingleonesingle from Block_oneone from Block.} *)

(* No Extraction from s_ss 0. *)

(** {9 Extracting Block_onesingleonedouble from Block_oneone from Block.} *)

let block_onesingleonedouble_symbol_off_block_symbol smb_blk =
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
    Boos_v.block_onesingleonedouble_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Ch_sd from Block_onesingleonedouble from Block_oneone from Block.} *)

(* No Extraction from ch_sd 0. *)

(** {12 Extracting N_sd from Block_onesingleonedouble from Block_oneone from Block.} *)

(* No Extraction from n_sd 0. *)

(** {12 Extracting N_sd_1p from Block_onesingleonedouble from Block_oneone from Block.} *)

(* No Extraction from n_sd_1p 0. *)

(** {9 Extracting Block_onesingleonetriple from Block_oneone from Block.} *)

let block_onesingleonetriple_symbol_off_block_symbol smb_blk =
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
    Boos_v.block_onesingleonetriple_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting C_st from Block_onesingleonetriple from Block_oneone from Block.} *)

(* No Extraction from c_st 0. *)

(** {12 Extracting N_st_1p from Block_onesingleonetriple from Block_oneone from Block.} *)

(* No Extraction from n_st_1p 0. *)

(** {9 Extracting Block_onedoubleonesingle from Block_oneone from Block.} *)

let block_onedoubleonesingle_symbol_off_block_symbol smb_blk =
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
    Boos_v.block_onedoubleonesingle_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Ch_ds from Block_onedoubleonesingle from Block_oneone from Block.} *)

(* No Extraction from ch_ds 0. *)

(** {12 Extracting N_ds from Block_onedoubleonesingle from Block_oneone from Block.} *)

(* No Extraction from n_ds 0. *)

(** {12 Extracting Nh_ds_1p from Block_onedoubleonesingle from Block_oneone from Block.} *)

(* No Extraction from nh_ds_1p 0. *)

(** {9 Extracting Block_onedoubleonedouble from Block_oneone from Block.} *)

let block_onedoubleonedouble_symbol_off_block_symbol smb_blk =
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
    Boos_v.block_onedoubleonedouble_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting C_dd from Block_onedoubleonedouble from Block_oneone from Block.} *)

(* No Extraction from c_dd 0. *)

(** {12 Extracting N_dd_1p from Block_onedoubleonedouble from Block_oneone from Block.} *)

(* No Extraction from n_dd_1p 0. *)

(** {9 Extracting Block_onetripleonesingle from Block_oneone from Block.} *)

let block_onetripleonesingle_symbol_off_block_symbol smb_blk =
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
    Boos_v.block_onetripleonesingle_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting C_ts from Block_onetripleonesingle from Block_oneone from Block.} *)

(* No Extraction from c_ts 0. *)

(** {12 Extracting N_ts_1p from Block_onetripleonesingle from Block_oneone from Block.} *)

(* No Extraction from n_ts_1p 0. *)

(** {6 Extracting Block_oneend from Block.} *)

let block_oneend_symbol_off_block_symbol = function
  | Bls_t.Block_oneend_symbol smb_boe -> smb_boe
  | s ->  print_fatal_error
      "block_oneend_symbol_off_block_symbol"
      "Block_oneend_symbol" (name s)
;;

(** {9 Extracting Block_onefork from Block_oneend from Block.} *)

let block_onefork_symbol_off_block_symbol smb_blk =
  let smb_boe = block_oneend_symbol_off_block_symbol smb_blk in
    Boes_v.block_onefork_symbol_off_block_oneend_symbol smb_boe
;;

(** {12 Extracting Block_onebifork from Block_onefork from Block_oneend from Block.} *)

let block_onebifork_symbol_off_block_symbol smb_blk =
  let smb_bof = block_onefork_symbol_off_block_symbol smb_blk in
    Bofs_v.block_onebifork_symbol_off_block_onefork_symbol smb_bof
;;

(** {12 Extracting Block_onetrifork from Block_onefork from Block_oneend from Block.} *)

let block_onetrifork_symbol_off_block_symbol smb_blk =
  let smb_bof = block_onefork_symbol_off_block_symbol smb_blk in
    Bofs_v.block_onetrifork_symbol_off_block_onefork_symbol smb_bof
;;

(** {9 Extracting Block_onezero from Block_oneend from Block.} *)

let block_onezero_symbol_off_block_symbol smb_blk =
  let smb_boe = block_oneend_symbol_off_block_symbol smb_blk in
    Boes_v.block_onezero_symbol_off_block_oneend_symbol smb_boe
;;

(** {12 Extracting Onesinglezero from Block_onezero from Block_oneend from Block.} *)

(* No Extraction from onesinglezero 0. *)

(** {12 Extracting Oneconjugatedzero from Block_onezero from Block_oneend from Block.} *)

(* No Extraction from oneconjugatedzero 0. *)

(** {12 Extracting Onedoublelezero from Block_onezero from Block_oneend from Block.} *)

(* No Extraction from onedoublelezero 0. *)

(** {12 Extracting Onetriplezero from Block_onezero from Block_oneend from Block.} *)

(* No Extraction from onetriplezero 0. *)

(** {6 Querying.} *)

(** {6 Querying Block_zerozero in Block.} *)

let is_block_zerozero_symbol_off_block_symbol = function
  | Bls_t.Block_zerozero_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Atom_zerotied in Block_zerozero in Block.} *)

let is_atom_zerotied_symbol_off_block_symbol smb_blk =
  if not (is_block_zerozero_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
      Bzzs_v.is_atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Atom_zerotied_raregas in Atom_zerotied in Block_zerozero in Block.} *)

let is_atom_zerotied_raregas_symbol_off_block_symbol smb_blk =
  if not (is_atom_zerotied_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_block_symbol smb_blk in
      Azes_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Atom_zerotied_anion in Atom_zerotied in Block_zerozero in Block.} *)

let is_atom_zerotied_anion_symbol_off_block_symbol smb_blk =
  if not (is_atom_zerotied_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_block_symbol smb_blk in
      Azes_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Atom_zerotied_cation in Atom_zerotied in Block_zerozero in Block.} *)

let is_atom_zerotied_cation_symbol_off_block_symbol smb_blk =
  if not (is_atom_zerotied_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_block_symbol smb_blk in
      Azes_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Halfbridge in Atom_zerotied in Block_zerozero in Block.} *)

let is_halfbridge_symbol_off_block_symbol smb_blk =
  if not (is_atom_zerotied_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_block_symbol smb_blk in
      Azes_v.is_halfbridge_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {9 Querying Block_zerozero_diatomic in Block_zerozero in Block.} *)

let is_block_zerozero_diatomic_symbol_off_block_symbol smb_blk =
  if not (is_block_zerozero_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
      Bzzs_v.is_block_zerozero_diatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Co_zz in Block_zerozero_diatomic in Block_zerozero in Block.} *)

(* No Query from co_zz 0. *)

(** {9 Querying Block_zerozero_triatomic in Block_zerozero in Block.} *)

let is_block_zerozero_triatomic_symbol_off_block_symbol smb_blk =
  if not (is_block_zerozero_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
      Bzzs_v.is_block_zerozero_triatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Co2_zz in Block_zerozero_triatomic in Block_zerozero in Block.} *)

(* No Query from co2_zz 0. *)

(** {12 Querying No2_zz in Block_zerozero_triatomic in Block_zerozero in Block.} *)

(* No Query from no2_zz 0. *)

(** {12 Querying Oh2_zz in Block_zerozero_triatomic in Block_zerozero in Block.} *)

(* No Query from oh2_zz 0. *)

(** {12 Querying Sh2_zz in Block_zerozero_triatomic in Block_zerozero in Block.} *)

(* No Query from sh2_zz 0. *)

(** {12 Querying So2_zz in Block_zerozero_triatomic in Block_zerozero in Block.} *)

(* No Query from so2_zz 0. *)

(** {9 Querying Block_zerozero_tetratomic in Block_zerozero in Block.} *)

let is_block_zerozero_tetratomic_symbol_off_block_symbol smb_blk =
  if not (is_block_zerozero_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
      Bzzs_v.is_block_zerozero_tetratomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Cho2_1m in Block_zerozero_tetratomic in Block_zerozero in Block.} *)

(* No Query from cho2_1m 0. *)

(** {12 Querying Nh2 in Block_zerozero_tetratomic in Block_zerozero in Block.} *)

(* No Query from nh2 0. *)

(** {9 Querying Block_zerozero_pentatomic in Block_zerozero in Block.} *)

let is_block_zerozero_pentatomic_symbol_off_block_symbol smb_blk =
  if not (is_block_zerozero_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
      Bzzs_v.is_block_zerozero_pentatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Ch4_zz in Block_zerozero_pentatomic in Block_zerozero in Block.} *)

(* No Query from ch4_zz 0. *)

(** {12 Querying Nh4_zz_1p in Block_zerozero_pentatomic in Block_zerozero in Block.} *)

(* No Query from nh4_zz_1p 0. *)

(** {6 Querying Block_zeroone in Block.} *)

let is_block_zeroone_symbol_off_block_symbol = function
  | Bls_t.Block_zeroone_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Block_zeroonesingle in Block_zeroone in Block.} *)

let is_block_zeroonesingle_symbol_off_block_symbol smb_blk =
  if not (is_block_zeroone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_bzo = block_zeroone_symbol_off_block_symbol smb_blk in
      Bzos_v.is_block_zeroonesingle_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

(** {12 Querying Ch2_zs in Block_zeroonesingle in Block_zeroone in Block.} *)

(* No Query from ch2_zs 0. *)

(** {12 Querying Ch3_zs in Block_zeroonesingle in Block_zeroone in Block.} *)

(* No Query from ch3_zs 0. *)

(** {12 Querying Coc2_zs in Block_zeroonesingle in Block_zeroone in Block.} *)

(* No Query from coc2_zs 0. *)

(** {12 Querying Coh_zs in Block_zeroonesingle in Block_zeroone in Block.} *)

(* No Query from coh_zs 0. *)

(** {12 Querying Nh2_zs in Block_zeroonesingle in Block_zeroone in Block.} *)

(* No Query from nh2_zs 0. *)

(** {12 Querying Nh3_zs_1p in Block_zeroonesingle in Block_zeroone in Block.} *)

(* No Query from nh3_zs_1p 0. *)

(** {12 Querying No2_zs in Block_zeroonesingle in Block_zeroone in Block.} *)

(* No Query from no2_zs 0. *)

(** {12 Querying No_zs in Block_zeroonesingle in Block_zeroone in Block.} *)

(* No Query from no_zs 0. *)

(** {12 Querying Oh_zs in Block_zeroonesingle in Block_zeroone in Block.} *)

(* No Query from oh_zs 0. *)

(** {12 Querying Sh_zs in Block_zeroonesingle in Block_zeroone in Block.} *)

(* No Query from sh_zs 0. *)

(** {9 Querying Block_zeroonedouble in Block_zeroone in Block.} *)

let is_block_zeroonedouble_symbol_off_block_symbol smb_blk =
  if not (is_block_zeroone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_bzo = block_zeroone_symbol_off_block_symbol smb_blk in
      Bzos_v.is_block_zeroonedouble_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

(** {12 Querying Ch2_d in Block_zeroonedouble in Block_zeroone in Block.} *)

(* No Query from ch2_d 0. *)

(** {12 Querying Co_d in Block_zeroonedouble in Block_zeroone in Block.} *)

(* No Query from co_d 0. *)

(** {12 Querying Nh_d in Block_zeroonedouble in Block_zeroone in Block.} *)

(* No Query from nh_d 0. *)

(** {12 Querying Nh2_d_1p in Block_zeroonedouble in Block_zeroone in Block.} *)

(* No Query from nh2_d_1p 0. *)

(** {9 Querying Block_zeroonetriple in Block_zeroone in Block.} *)

let is_block_zeroonetriple_symbol_off_block_symbol smb_blk =
  if not (is_block_zeroone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_bzo = block_zeroone_symbol_off_block_symbol smb_blk in
      Bzos_v.is_block_zeroonetriple_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

(** {12 Querying Ch_t in Block_zeroonetriple in Block_zeroone in Block.} *)

(* No Query from ch_t 0. *)

(** {9 Querying Block_zeroonehalfbridge in Block_zeroone in Block.} *)

(* No Query from block_zeroonehalfbridge 0. *)


(** {6 Querying Block_zerofork in Block.} *)

let is_block_zerofork_symbol_off_block_symbol = function
  | Bls_t.Block_zerofork_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Block_zerobifork in Block_zerofork in Block.} *)

let is_block_zerobifork_symbol_off_block_symbol smb_blk =
  if not (is_block_zerofork_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_block_symbol smb_blk in
      Bzfs_v.is_block_zerobifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {12 Querying Ch_zsc in Block_zerobifork in Block_zerofork in Block.} *)

(* No Query from ch_zsc 0. *)

(** {12 Querying Ch_zsd in Block_zerobifork in Block_zerofork in Block.} *)

(* No Query from ch_zsd 0. *)

(** {12 Querying Nh_zs2 in Block_zerobifork in Block_zerofork in Block.} *)

(* No Query from nh_zs2 0. *)

(** {9 Querying Block_zerotrifork in Block_zerofork in Block.} *)

let is_block_zerotrifork_symbol_off_block_symbol smb_blk =
  if not (is_block_zerofork_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_block_symbol smb_blk in
      Bzfs_v.is_block_zerotrifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {12 Querying Ch_s3 in Block_zerotrifork in Block_zerofork in Block.} *)

(* No Query from ch_s3 0. *)

(** {12 Querying N_s3 in Block_zerotrifork in Block_zerofork in Block.} *)

(* No Query from n_s3 0. *)

(** {9 Querying Block_zeroquadrifork in Block_zerofork in Block.} *)

let is_block_zeroquadrifork_symbol_off_block_symbol smb_blk =
  if not (is_block_zerofork_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_block_symbol smb_blk in
      Bzfs_v.is_block_zeroquadrifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {12 Querying C_q in Block_zeroquadrifork in Block_zerofork in Block.} *)

(* No Query from c_q 0. *)

(** {12 Querying N_q_1p in Block_zeroquadrifork in Block_zerofork in Block.} *)

(* No Query from n_q_1p 0. *)

(** {6 Querying Block_oneone in Block.} *)

let is_block_oneone_symbol_off_block_symbol = function
  | Bls_t.Block_oneone_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Block_onesingleonesingle in Block_oneone in Block.} *)

let is_block_onesingleonesingle_symbol_off_block_symbol smb_blk =
  if not (is_block_oneone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
      Boos_v.is_block_onesingleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Ch2_ss in Block_onesingleonesingle in Block_oneone in Block.} *)

(* No Query from ch2_ss 0. *)

(** {12 Querying Co_ss in Block_onesingleonesingle in Block_oneone in Block.} *)

(* No Query from co_ss 0. *)

(** {12 Querying Nh2_ss_1p in Block_onesingleonesingle in Block_oneone in Block.} *)

(* No Query from nh2_ss_1p 0. *)

(** {12 Querying Nh_ss in Block_onesingleonesingle in Block_oneone in Block.} *)

(* No Query from nh_ss 0. *)

(** {12 Querying O_ss in Block_onesingleonesingle in Block_oneone in Block.} *)

(* No Query from o_ss 0. *)

(** {12 Querying S_ss in Block_onesingleonesingle in Block_oneone in Block.} *)

(* No Query from s_ss 0. *)

(** {9 Querying Block_onesingleonedouble in Block_oneone in Block.} *)

let is_block_onesingleonedouble_symbol_off_block_symbol smb_blk =
  if not (is_block_oneone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
      Boos_v.is_block_onesingleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Ch_sd in Block_onesingleonedouble in Block_oneone in Block.} *)

(* No Query from ch_sd 0. *)

(** {12 Querying N_sd in Block_onesingleonedouble in Block_oneone in Block.} *)

(* No Query from n_sd 0. *)

(** {12 Querying N_sd_1p in Block_onesingleonedouble in Block_oneone in Block.} *)

(* No Query from n_sd_1p 0. *)

(** {9 Querying Block_onesingleonetriple in Block_oneone in Block.} *)

let is_block_onesingleonetriple_symbol_off_block_symbol smb_blk =
  if not (is_block_oneone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
      Boos_v.is_block_onesingleonetriple_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying C_st in Block_onesingleonetriple in Block_oneone in Block.} *)

(* No Query from c_st 0. *)

(** {12 Querying N_st_1p in Block_onesingleonetriple in Block_oneone in Block.} *)

(* No Query from n_st_1p 0. *)

(** {9 Querying Block_onedoubleonesingle in Block_oneone in Block.} *)

let is_block_onedoubleonesingle_symbol_off_block_symbol smb_blk =
  if not (is_block_oneone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
      Boos_v.is_block_onedoubleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Ch_ds in Block_onedoubleonesingle in Block_oneone in Block.} *)

(* No Query from ch_ds 0. *)

(** {12 Querying N_ds in Block_onedoubleonesingle in Block_oneone in Block.} *)

(* No Query from n_ds 0. *)

(** {12 Querying Nh_ds_1p in Block_onedoubleonesingle in Block_oneone in Block.} *)

(* No Query from nh_ds_1p 0. *)

(** {9 Querying Block_onedoubleonedouble in Block_oneone in Block.} *)

let is_block_onedoubleonedouble_symbol_off_block_symbol smb_blk =
  if not (is_block_oneone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
      Boos_v.is_block_onedoubleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying C_dd in Block_onedoubleonedouble in Block_oneone in Block.} *)

(* No Query from c_dd 0. *)

(** {12 Querying N_dd_1p in Block_onedoubleonedouble in Block_oneone in Block.} *)

(* No Query from n_dd_1p 0. *)

(** {9 Querying Block_onetripleonesingle in Block_oneone in Block.} *)

let is_block_onetripleonesingle_symbol_off_block_symbol smb_blk =
  if not (is_block_oneone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
      Boos_v.is_block_onetripleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying C_ts in Block_onetripleonesingle in Block_oneone in Block.} *)

(* No Query from c_ts 0. *)

(** {12 Querying N_ts_1p in Block_onetripleonesingle in Block_oneone in Block.} *)

(* No Query from n_ts_1p 0. *)

(** {6 Querying Block_oneend in Block.} *)

let is_block_oneend_symbol_off_block_symbol = function
  | Bls_t.Block_oneend_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Block_onefork in Block_oneend in Block.} *)

let is_block_onefork_symbol_off_block_symbol smb_blk =
  if not (is_block_oneend_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_boe = block_oneend_symbol_off_block_symbol smb_blk in
      Boes_v.is_block_onefork_symbol_off_block_oneend_symbol smb_boe
    end
;;

(** {12 Querying Block_onebifork in Block_onefork in Block_oneend in Block.} *)

let is_block_onebifork_symbol_off_block_symbol smb_blk =
  if not (is_block_onefork_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_bof = block_onefork_symbol_off_block_symbol smb_blk in
      Bofs_v.is_block_onebifork_symbol_off_block_onefork_symbol smb_bof
    end
;;

(** {12 Querying Block_onetrifork in Block_onefork in Block_oneend in Block.} *)

let is_block_onetrifork_symbol_off_block_symbol smb_blk =
  if not (is_block_onefork_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_bof = block_onefork_symbol_off_block_symbol smb_blk in
      Bofs_v.is_block_onetrifork_symbol_off_block_onefork_symbol smb_bof
    end
;;

(** {9 Querying Block_onezero in Block_oneend in Block.} *)

let is_block_onezero_symbol_off_block_symbol smb_blk =
  if not (is_block_oneend_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
      let smb_boe = block_oneend_symbol_off_block_symbol smb_blk in
      Boes_v.is_block_onezero_symbol_off_block_oneend_symbol smb_boe
    end
;;

(** {12 Querying Onesinglezero in Block_onezero in Block_oneend in Block.} *)

(* No Query from onesinglezero 0. *)

(** {12 Querying Oneconjugatedzero in Block_onezero in Block_oneend in Block.} *)

(* No Query from oneconjugatedzero 0. *)

(** {12 Querying Onedoublelezero in Block_onezero in Block_oneend in Block.} *)

(* No Query from onedoublelezero 0. *)

(** {12 Querying Onetriplezero in Block_onezero in Block_oneend in Block.} *)

(* No Query from onetriplezero 0. *)

(** {6 Upgrading from Block_zerozero to Block.} *)

let block_symbol_of_block_zerozero_symbol smb_bzz =
  Bls_t.Block_zerozero_symbol smb_bzz
;;

(** {9 Upgrading from Atom_zerotied through Block_zerozero to Block.} *)

let block_symbol_of_atom_zerotied_symbol smb_aze =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_atom_zerotied_symbol smb_aze in
  block_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Atom_zerotied_raregas through Atom_zerotied through Block_zerozero to Block.} *)

let block_symbol_of_atom_zerotied_raregas_symbol smb_arg =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_arg in
    block_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Atom_zerotied_anion through Atom_zerotied through Block_zerozero to Block.} *)

let block_symbol_of_atom_zerotied_anion_symbol smb_aza =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_aza in
    block_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Atom_zerotied_cation through Atom_zerotied through Block_zerozero to Block.} *)

let block_symbol_of_atom_zerotied_cation_symbol smb_acn =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_acn in
    block_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Halfbridge through Atom_zerotied through Block_zerozero to Block.} *)

let block_symbol_of_halfbridge_symbol smb_hbd =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_halfbridge_symbol smb_hbd in
    block_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {9 Upgrading from Block_zerozero_diatomic through Block_zerozero to Block.} *)

let block_symbol_of_block_zerozero_diatomic_symbol smb_bzzd =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_diatomic_symbol smb_bzzd in
  block_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Co_zz through Block_zerozero_diatomic through Block_zerozero to Block.} *)

let co_zz = block_symbol_of_block_zerozero_diatomic_symbol Bzzds_t.Co_zz;;

(** {9 Upgrading from Block_zerozero_triatomic through Block_zerozero to Block.} *)

let block_symbol_of_block_zerozero_triatomic_symbol smb_bzzt =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_triatomic_symbol smb_bzzt in
  block_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Co2_zz through Block_zerozero_triatomic through Block_zerozero to Block.} *)

let co2_zz = block_symbol_of_block_zerozero_triatomic_symbol Bzzts_t.Co2_zz;;

(** {12 Upgrading from No2_zz through Block_zerozero_triatomic through Block_zerozero to Block.} *)

let no2_zz = block_symbol_of_block_zerozero_triatomic_symbol Bzzts_t.No2_zz;;

(** {12 Upgrading from Oh2_zz through Block_zerozero_triatomic through Block_zerozero to Block.} *)

let oh2_zz = block_symbol_of_block_zerozero_triatomic_symbol Bzzts_t.Oh2_zz;;

(** {12 Upgrading from Sh2_zz through Block_zerozero_triatomic through Block_zerozero to Block.} *)

let sh2_zz = block_symbol_of_block_zerozero_triatomic_symbol Bzzts_t.Sh2_zz;;

(** {12 Upgrading from So2_zz through Block_zerozero_triatomic through Block_zerozero to Block.} *)

let so2_zz = block_symbol_of_block_zerozero_triatomic_symbol Bzzts_t.So2_zz;;

(** {9 Upgrading from Block_zerozero_tetratomic through Block_zerozero to Block.} *)

let block_symbol_of_block_zerozero_tetratomic_symbol smb_bzzq =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_tetratomic_symbol smb_bzzq in
  block_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Cho2_1m through Block_zerozero_tetratomic through Block_zerozero to Block.} *)

let cho2_1m = block_symbol_of_block_zerozero_tetratomic_symbol Bzzqs_t.Cho2_1m;;

(** {12 Upgrading from Nh2 through Block_zerozero_tetratomic through Block_zerozero to Block.} *)

let nh2 = block_symbol_of_block_zerozero_tetratomic_symbol Bzzqs_t.Nh2;;

(** {9 Upgrading from Block_zerozero_pentatomic through Block_zerozero to Block.} *)

let block_symbol_of_block_zerozero_pentatomic_symbol smb_bzzp =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_pentatomic_symbol smb_bzzp in
  block_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Ch4_zz through Block_zerozero_pentatomic through Block_zerozero to Block.} *)

let ch4_zz = block_symbol_of_block_zerozero_pentatomic_symbol Bzzps_t.Ch4_zz;;

(** {12 Upgrading from Nh4_zz_1p through Block_zerozero_pentatomic through Block_zerozero to Block.} *)

let nh4_zz_1p = block_symbol_of_block_zerozero_pentatomic_symbol Bzzps_t.Nh4_zz_1p;;

(** {6 Upgrading from Block_zeroone to Block.} *)

let block_symbol_of_block_zeroone_symbol smb_bzo =
  Bls_t.Block_zeroone_symbol smb_bzo
;;

(** {9 Upgrading from Block_zeroonesingle through Block_zeroone to Block.} *)

let block_symbol_of_block_zeroonesingle_symbol smb_bzs =
  let smb_bzo = Bzos_v.block_zeroone_symbol_of_block_zeroonesingle_symbol smb_bzs in
  block_symbol_of_block_zeroone_symbol smb_bzo
;;

(** {12 Upgrading from Ch2_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

let ch2_zs = block_symbol_of_block_zeroonesingle_symbol Bzss_t.Ch2_zs;;

(** {12 Upgrading from Ch3_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

let ch3_zs = block_symbol_of_block_zeroonesingle_symbol Bzss_t.Ch3_zs;;

(** {12 Upgrading from Coc2_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

let coc2_zs = block_symbol_of_block_zeroonesingle_symbol Bzss_t.Coc2_zs;;

(** {12 Upgrading from Coh_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

let coh_zs = block_symbol_of_block_zeroonesingle_symbol Bzss_t.Coh_zs;;

(** {12 Upgrading from Nh2_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

let nh2_zs = block_symbol_of_block_zeroonesingle_symbol Bzss_t.Nh2_zs;;

(** {12 Upgrading from Nh3_zs_1p through Block_zeroonesingle through Block_zeroone to Block.} *)

let nh3_zs_1p = block_symbol_of_block_zeroonesingle_symbol Bzss_t.Nh3_zs_1p;;

(** {12 Upgrading from No2_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

let no2_zs = block_symbol_of_block_zeroonesingle_symbol Bzss_t.No2_zs;;

(** {12 Upgrading from No_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

let no_zs = block_symbol_of_block_zeroonesingle_symbol Bzss_t.No_zs;;

(** {12 Upgrading from Oh_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

let oh_zs = block_symbol_of_block_zeroonesingle_symbol Bzss_t.Oh_zs;;

(** {12 Upgrading from Sh_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

let sh_zs = block_symbol_of_block_zeroonesingle_symbol Bzss_t.Sh_zs;;

(** {9 Upgrading from Block_zeroonedouble through Block_zeroone to Block.} *)

let block_symbol_of_block_zeroonedouble_symbol smb_bzd =
  let smb_bzo = Bzos_v.block_zeroone_symbol_of_block_zeroonedouble_symbol smb_bzd in
  block_symbol_of_block_zeroone_symbol smb_bzo
;;

(** {12 Upgrading from Ch2_d through Block_zeroonedouble through Block_zeroone to Block.} *)

let ch2_d = block_symbol_of_block_zeroonedouble_symbol Bzds_t.Ch2_d;;

(** {12 Upgrading from Co_d through Block_zeroonedouble through Block_zeroone to Block.} *)

let co_d = block_symbol_of_block_zeroonedouble_symbol Bzds_t.Co_d;;

(** {12 Upgrading from Nh_d through Block_zeroonedouble through Block_zeroone to Block.} *)

let nh_d = block_symbol_of_block_zeroonedouble_symbol Bzds_t.Nh_d;;

(** {12 Upgrading from Nh2_d_1p through Block_zeroonedouble through Block_zeroone to Block.} *)

let nh2_d_1p = block_symbol_of_block_zeroonedouble_symbol Bzds_t.Nh2_d_1p;;

(** {9 Upgrading from Block_zeroonetriple through Block_zeroone to Block.} *)

let block_symbol_of_block_zeroonetriple_symbol smb_bzt =
  let smb_bzo = Bzos_v.block_zeroone_symbol_of_block_zeroonetriple_symbol smb_bzt in
  block_symbol_of_block_zeroone_symbol smb_bzo
;;

(** {12 Upgrading from Ch_t through Block_zeroonetriple through Block_zeroone to Block.} *)

let ch_t = block_symbol_of_block_zeroonetriple_symbol Bzts_t.Ch_t;;

(** {9 Upgrading from Block_zeroonehalfbridge through Block_zeroone to Block.} *)

let block_zeroonehalfbridge = block_symbol_of_block_zeroone_symbol Bzos_t.Block_zeroonehalfbridge;;

(** {6 Upgrading from Block_zerofork to Block.} *)

let block_symbol_of_block_zerofork_symbol smb_bzf =
  Bls_t.Block_zerofork_symbol smb_bzf
;;

(** {9 Upgrading from Block_zerobifork through Block_zerofork to Block.} *)

let block_symbol_of_block_zerobifork_symbol smb_bzb =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zerobifork_symbol smb_bzb in
  block_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {12 Upgrading from Ch_zsc through Block_zerobifork through Block_zerofork to Block.} *)

let ch_zsc = block_symbol_of_block_zerobifork_symbol Bzbfs_t.Ch_zsc;;

(** {12 Upgrading from Ch_zsd through Block_zerobifork through Block_zerofork to Block.} *)

let ch_zsd = block_symbol_of_block_zerobifork_symbol Bzbfs_t.Ch_zsd;;

(** {12 Upgrading from Nh_zs2 through Block_zerobifork through Block_zerofork to Block.} *)

let nh_zs2 = block_symbol_of_block_zerobifork_symbol Bzbfs_t.Nh_zs2;;

(** {9 Upgrading from Block_zerotrifork through Block_zerofork to Block.} *)

let block_symbol_of_block_zerotrifork_symbol smb_bzt =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zerotrifork_symbol smb_bzt in
  block_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {12 Upgrading from Ch_s3 through Block_zerotrifork through Block_zerofork to Block.} *)

let ch_s3 = block_symbol_of_block_zerotrifork_symbol Bztfs_t.Ch_s3;;

(** {12 Upgrading from N_s3 through Block_zerotrifork through Block_zerofork to Block.} *)

let n_s3 = block_symbol_of_block_zerotrifork_symbol Bztfs_t.N_s3;;

(** {9 Upgrading from Block_zeroquadrifork through Block_zerofork to Block.} *)

let block_symbol_of_block_zeroquadrifork_symbol smb_bzq =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zeroquadrifork_symbol smb_bzq in
  block_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {12 Upgrading from C_q through Block_zeroquadrifork through Block_zerofork to Block.} *)

let c_q = block_symbol_of_block_zeroquadrifork_symbol Bzqfs_t.C_q;;

(** {12 Upgrading from N_q_1p through Block_zeroquadrifork through Block_zerofork to Block.} *)

let n_q_1p = block_symbol_of_block_zeroquadrifork_symbol Bzqfs_t.N_q_1p;;

(** {6 Upgrading from Block_oneone to Block.} *)

let block_symbol_of_block_oneone_symbol smb_boo =
  Bls_t.Block_oneone_symbol smb_boo
;;

(** {9 Upgrading from Block_onesingleonesingle through Block_oneone to Block.} *)

let block_symbol_of_block_onesingleonesingle_symbol smb_bss =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onesingleonesingle_symbol smb_bss in
  block_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Ch2_ss through Block_onesingleonesingle through Block_oneone to Block.} *)

let ch2_ss = block_symbol_of_block_onesingleonesingle_symbol Bsss_t.Ch2_ss;;

(** {12 Upgrading from Co_ss through Block_onesingleonesingle through Block_oneone to Block.} *)

let co_ss = block_symbol_of_block_onesingleonesingle_symbol Bsss_t.Co_ss;;

(** {12 Upgrading from Nh2_ss_1p through Block_onesingleonesingle through Block_oneone to Block.} *)

let nh2_ss_1p = block_symbol_of_block_onesingleonesingle_symbol Bsss_t.Nh2_ss_1p;;

(** {12 Upgrading from Nh_ss through Block_onesingleonesingle through Block_oneone to Block.} *)

let nh_ss = block_symbol_of_block_onesingleonesingle_symbol Bsss_t.Nh_ss;;

(** {12 Upgrading from O_ss through Block_onesingleonesingle through Block_oneone to Block.} *)

let o_ss = block_symbol_of_block_onesingleonesingle_symbol Bsss_t.O_ss;;

(** {12 Upgrading from S_ss through Block_onesingleonesingle through Block_oneone to Block.} *)

let s_ss = block_symbol_of_block_onesingleonesingle_symbol Bsss_t.S_ss;;

(** {9 Upgrading from Block_onesingleonedouble through Block_oneone to Block.} *)

let block_symbol_of_block_onesingleonedouble_symbol smb_bsd =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onesingleonedouble_symbol smb_bsd in
  block_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Ch_sd through Block_onesingleonedouble through Block_oneone to Block.} *)

let ch_sd = block_symbol_of_block_onesingleonedouble_symbol Bsds_t.Ch_sd;;

(** {12 Upgrading from N_sd through Block_onesingleonedouble through Block_oneone to Block.} *)

let n_sd = block_symbol_of_block_onesingleonedouble_symbol Bsds_t.N_sd;;

(** {12 Upgrading from N_sd_1p through Block_onesingleonedouble through Block_oneone to Block.} *)

let n_sd_1p = block_symbol_of_block_onesingleonedouble_symbol Bsds_t.N_sd_1p;;

(** {9 Upgrading from Block_onesingleonetriple through Block_oneone to Block.} *)

let block_symbol_of_block_onesingleonetriple_symbol smb_bst =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onesingleonetriple_symbol smb_bst in
  block_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from C_st through Block_onesingleonetriple through Block_oneone to Block.} *)

let c_st = block_symbol_of_block_onesingleonetriple_symbol Bsts_t.C_st;;

(** {12 Upgrading from N_st_1p through Block_onesingleonetriple through Block_oneone to Block.} *)

let n_st_1p = block_symbol_of_block_onesingleonetriple_symbol Bsts_t.N_st_1p;;

(** {9 Upgrading from Block_onedoubleonesingle through Block_oneone to Block.} *)

let block_symbol_of_block_onedoubleonesingle_symbol smb_bds =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onedoubleonesingle_symbol smb_bds in
  block_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Ch_ds through Block_onedoubleonesingle through Block_oneone to Block.} *)

let ch_ds = block_symbol_of_block_onedoubleonesingle_symbol Bdss_t.Ch_ds;;

(** {12 Upgrading from N_ds through Block_onedoubleonesingle through Block_oneone to Block.} *)

let n_ds = block_symbol_of_block_onedoubleonesingle_symbol Bdss_t.N_ds;;

(** {12 Upgrading from Nh_ds_1p through Block_onedoubleonesingle through Block_oneone to Block.} *)

let nh_ds_1p = block_symbol_of_block_onedoubleonesingle_symbol Bdss_t.Nh_ds_1p;;

(** {9 Upgrading from Block_onedoubleonedouble through Block_oneone to Block.} *)

let block_symbol_of_block_onedoubleonedouble_symbol smb_bdd =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onedoubleonedouble_symbol smb_bdd in
  block_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from C_dd through Block_onedoubleonedouble through Block_oneone to Block.} *)

let c_dd = block_symbol_of_block_onedoubleonedouble_symbol Bdds_t.C_dd;;

(** {12 Upgrading from N_dd_1p through Block_onedoubleonedouble through Block_oneone to Block.} *)

let n_dd_1p = block_symbol_of_block_onedoubleonedouble_symbol Bdds_t.N_dd_1p;;

(** {9 Upgrading from Block_onetripleonesingle through Block_oneone to Block.} *)

let block_symbol_of_block_onetripleonesingle_symbol smb_bts =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onetripleonesingle_symbol smb_bts in
  block_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from C_ts through Block_onetripleonesingle through Block_oneone to Block.} *)

let c_ts = block_symbol_of_block_onetripleonesingle_symbol Btss_t.C_ts;;

(** {12 Upgrading from N_ts_1p through Block_onetripleonesingle through Block_oneone to Block.} *)

let n_ts_1p = block_symbol_of_block_onetripleonesingle_symbol Btss_t.N_ts_1p;;

(** {6 Upgrading from Block_oneend to Block.} *)

let block_symbol_of_block_oneend_symbol smb_boe =
  Bls_t.Block_oneend_symbol smb_boe
;;

(** {9 Upgrading from Block_onefork through Block_oneend to Block.} *)

let block_symbol_of_block_onefork_symbol smb_bof =
  let smb_boe = Boes_v.block_oneend_symbol_of_block_onefork_symbol smb_bof in
  block_symbol_of_block_oneend_symbol smb_boe
;;

(** {12 Upgrading from Block_onebifork through Block_onefork through Block_oneend to Block.} *)

let block_symbol_of_block_onebifork_symbol smb_bob =
  let smb_bof = Bofs_v.block_onefork_symbol_of_block_onebifork_symbol smb_bob in
    block_symbol_of_block_onefork_symbol smb_bof
;;

(** {12 Upgrading from Block_onetrifork through Block_onefork through Block_oneend to Block.} *)

let block_symbol_of_block_onetrifork_symbol smb_bot =
  let smb_bof = Bofs_v.block_onefork_symbol_of_block_onetrifork_symbol smb_bot in
    block_symbol_of_block_onefork_symbol smb_bof
;;

(** {9 Upgrading from Block_onezero through Block_oneend to Block.} *)

let block_symbol_of_block_onezero_symbol smb_boz =
  let smb_boe = Boes_v.block_oneend_symbol_of_block_onezero_symbol smb_boz in
  block_symbol_of_block_oneend_symbol smb_boe
;;

(** {12 Upgrading from Onesinglezero through Block_onezero through Block_oneend to Block.} *)

let onesinglezero = block_symbol_of_block_onezero_symbol Bozs_t.Onesinglezero;;

(** {12 Upgrading from Oneconjugatedzero through Block_onezero through Block_oneend to Block.} *)

let oneconjugatedzero = block_symbol_of_block_onezero_symbol Bozs_t.Oneconjugatedzero;;

(** {12 Upgrading from Onedoublelezero through Block_onezero through Block_oneend to Block.} *)

let onedoublelezero = block_symbol_of_block_onezero_symbol Bozs_t.Onedoublelezero;;

(** {12 Upgrading from Onetriplezero through Block_onezero through Block_oneend to Block.} *)

let onetriplezero = block_symbol_of_block_onezero_symbol Bozs_t.Onetriplezero;;

(** created by ./do_entitysum_symbol_v_ml.sh block 12 January 2011. *)

