(** {3 A Symbol for a Block.} *)

(** {6 Displaying.} *)

val name :
  Block_symbol_t.block_symbol ->
    string
;;

val print : Format.formatter ->
  Block_symbol_t.block_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Block_zerozero from Block.} *)

val block_zerozero_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {9 Extracting Atom_zerotied from Block_zerozero from Block.} *)

val atom_zerotied_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {12 Extracting Atom_zerotied_raregas from Atom_zerotied from Block_zerozero from Block.} *)

val atom_zerotied_raregas_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol
;;

(** {12 Extracting Atom_zerotied_anion from Atom_zerotied from Block_zerozero from Block.} *)

val atom_zerotied_anion_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol
;;

(** {12 Extracting Atom_zerotied_cation from Atom_zerotied from Block_zerozero from Block.} *)

val atom_zerotied_cation_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol
;;

(** {12 Extracting Halfbridge from Atom_zerotied from Block_zerozero from Block.} *)

val halfbridge_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Halfbridge_symbol_t.halfbridge_symbol
;;

(** {9 Extracting Block_zerozero_diatomic from Block_zerozero from Block.} *)

val block_zerozero_diatomic_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_zerozero_diatomic_symbol_t.block_zerozero_diatomic_symbol
;;

(** {12 Extracting Co_zz from Block_zerozero_diatomic from Block_zerozero from Block.} *)

(* No Extraction from co_zz 0. *)

(** {9 Extracting Block_zerozero_triatomic from Block_zerozero from Block.} *)

val block_zerozero_triatomic_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_zerozero_triatomic_symbol_t.block_zerozero_triatomic_symbol
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

val block_zerozero_tetratomic_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol
;;

(** {12 Extracting Cho2_1m from Block_zerozero_tetratomic from Block_zerozero from Block.} *)

(* No Extraction from cho2_1m 0. *)

(** {12 Extracting Nh2 from Block_zerozero_tetratomic from Block_zerozero from Block.} *)

(* No Extraction from nh2 0. *)

(** {9 Extracting Block_zerozero_pentatomic from Block_zerozero from Block.} *)

val block_zerozero_pentatomic_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol
;;

(** {12 Extracting Ch4_zz from Block_zerozero_pentatomic from Block_zerozero from Block.} *)

(* No Extraction from ch4_zz 0. *)

(** {12 Extracting Nh4_zz_1p from Block_zerozero_pentatomic from Block_zerozero from Block.} *)

(* No Extraction from nh4_zz_1p 0. *)

(** {6 Extracting Block_zeroone from Block.} *)

val block_zeroone_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_zeroone_symbol_t.block_zeroone_symbol
;;

(** {9 Extracting Block_zeroonesingle from Block_zeroone from Block.} *)

val block_zeroonesingle_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_zeroonesingle_symbol_t.block_zeroonesingle_symbol
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

val block_zeroonedouble_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol
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

val block_zeroonetriple_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol
;;

(** {12 Extracting Ch_t from Block_zeroonetriple from Block_zeroone from Block.} *)

(* No Extraction from ch_t 0. *)

(** {9 Extracting Block_zeroonehalfbridge from Block_zeroone from Block.} *)

(* No Extraction from doublet block_zeroonehalfbridge. *)

(** {6 Extracting Block_zerofork from Block.} *)

val block_zerofork_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_zerofork_symbol_t.block_zerofork_symbol
;;

(** {9 Extracting Block_zerobifork from Block_zerofork from Block.} *)

val block_zerobifork_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_zerobifork_symbol_t.block_zerobifork_symbol
;;

(** {12 Extracting Ch_zsc from Block_zerobifork from Block_zerofork from Block.} *)

(* No Extraction from ch_zsc 0. *)

(** {12 Extracting Ch_zsd from Block_zerobifork from Block_zerofork from Block.} *)

(* No Extraction from ch_zsd 0. *)

(** {12 Extracting Nh_zs2 from Block_zerobifork from Block_zerofork from Block.} *)

(* No Extraction from nh_zs2 0. *)

(** {9 Extracting Block_zerotrifork from Block_zerofork from Block.} *)

val block_zerotrifork_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_zerotrifork_symbol_t.block_zerotrifork_symbol
;;

(** {12 Extracting Ch_s3 from Block_zerotrifork from Block_zerofork from Block.} *)

(* No Extraction from ch_s3 0. *)

(** {12 Extracting N_s3 from Block_zerotrifork from Block_zerofork from Block.} *)

(* No Extraction from n_s3 0. *)

(** {9 Extracting Block_zeroquadrifork from Block_zerofork from Block.} *)

val block_zeroquadrifork_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol
;;

(** {12 Extracting C_q from Block_zeroquadrifork from Block_zerofork from Block.} *)

(* No Extraction from c_q 0. *)

(** {12 Extracting N_q_1p from Block_zeroquadrifork from Block_zerofork from Block.} *)

(* No Extraction from n_q_1p 0. *)

(** {6 Extracting Block_oneone from Block.} *)

val block_oneone_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_oneone_symbol_t.block_oneone_symbol
;;

(** {9 Extracting Block_onesingleonesingle from Block_oneone from Block.} *)

val block_onesingleonesingle_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_onesingleonesingle_symbol_t.block_onesingleonesingle_symbol
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

val block_onesingleonedouble_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol
;;

(** {12 Extracting Ch_sd from Block_onesingleonedouble from Block_oneone from Block.} *)

(* No Extraction from ch_sd 0. *)

(** {12 Extracting N_sd from Block_onesingleonedouble from Block_oneone from Block.} *)

(* No Extraction from n_sd 0. *)

(** {12 Extracting N_sd_1p from Block_onesingleonedouble from Block_oneone from Block.} *)

(* No Extraction from n_sd_1p 0. *)

(** {9 Extracting Block_onesingleonetriple from Block_oneone from Block.} *)

val block_onesingleonetriple_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol
;;

(** {12 Extracting C_st from Block_onesingleonetriple from Block_oneone from Block.} *)

(* No Extraction from c_st 0. *)

(** {12 Extracting N_st_1p from Block_onesingleonetriple from Block_oneone from Block.} *)

(* No Extraction from n_st_1p 0. *)

(** {9 Extracting Block_onedoubleonesingle from Block_oneone from Block.} *)

val block_onedoubleonesingle_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol
;;

(** {12 Extracting Ch_ds from Block_onedoubleonesingle from Block_oneone from Block.} *)

(* No Extraction from ch_ds 0. *)

(** {12 Extracting N_ds from Block_onedoubleonesingle from Block_oneone from Block.} *)

(* No Extraction from n_ds 0. *)

(** {12 Extracting Nh_ds_1p from Block_onedoubleonesingle from Block_oneone from Block.} *)

(* No Extraction from nh_ds_1p 0. *)

(** {9 Extracting Block_onedoubleonedouble from Block_oneone from Block.} *)

val block_onedoubleonedouble_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol
;;

(** {12 Extracting C_dd from Block_onedoubleonedouble from Block_oneone from Block.} *)

(* No Extraction from c_dd 0. *)

(** {12 Extracting N_dd_1p from Block_onedoubleonedouble from Block_oneone from Block.} *)

(* No Extraction from n_dd_1p 0. *)

(** {9 Extracting Block_onetripleonesingle from Block_oneone from Block.} *)

val block_onetripleonesingle_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol
;;

(** {12 Extracting C_ts from Block_onetripleonesingle from Block_oneone from Block.} *)

(* No Extraction from c_ts 0. *)

(** {12 Extracting N_ts_1p from Block_onetripleonesingle from Block_oneone from Block.} *)

(* No Extraction from n_ts_1p 0. *)

(** {6 Extracting Block_oneend from Block.} *)

val block_oneend_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_oneend_symbol_t.block_oneend_symbol
;;

(** {9 Extracting Block_onefork from Block_oneend from Block.} *)

val block_onefork_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_onefork_symbol_t.block_onefork_symbol
;;

(** {12 Extracting Block_onebifork from Block_onefork from Block_oneend from Block.} *)

val block_onebifork_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_onebifork_symbol_t.block_onebifork_symbol
;;

(** {12 Extracting Block_onetrifork from Block_onefork from Block_oneend from Block.} *)

val block_onetrifork_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_onetrifork_symbol_t.block_onetrifork_symbol
;;

(** {9 Extracting Block_onezero from Block_oneend from Block.} *)

val block_onezero_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
    Block_onezero_symbol_t.block_onezero_symbol
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

val is_block_zerozero_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {9 Querying Atom_zerotied in Block_zerozero in Block.} *)

val is_atom_zerotied_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_raregas in Atom_zerotied in Block_zerozero in Block.} *)

val is_atom_zerotied_raregas_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_anion in Atom_zerotied in Block_zerozero in Block.} *)

val is_atom_zerotied_anion_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_cation in Atom_zerotied in Block_zerozero in Block.} *)

val is_atom_zerotied_cation_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying Halfbridge in Atom_zerotied in Block_zerozero in Block.} *)

val is_halfbridge_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {9 Querying Block_zerozero_diatomic in Block_zerozero in Block.} *)

val is_block_zerozero_diatomic_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying Co_zz in Block_zerozero_diatomic in Block_zerozero in Block.} *)

(* No Query from co_zz 0. *)

(** {9 Querying Block_zerozero_triatomic in Block_zerozero in Block.} *)

val is_block_zerozero_triatomic_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
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

val is_block_zerozero_tetratomic_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying Cho2_1m in Block_zerozero_tetratomic in Block_zerozero in Block.} *)

(* No Query from cho2_1m 0. *)

(** {12 Querying Nh2 in Block_zerozero_tetratomic in Block_zerozero in Block.} *)

(* No Query from nh2 0. *)

(** {9 Querying Block_zerozero_pentatomic in Block_zerozero in Block.} *)

val is_block_zerozero_pentatomic_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying Ch4_zz in Block_zerozero_pentatomic in Block_zerozero in Block.} *)

(* No Query from ch4_zz 0. *)

(** {12 Querying Nh4_zz_1p in Block_zerozero_pentatomic in Block_zerozero in Block.} *)

(* No Query from nh4_zz_1p 0. *)

(** {6 Querying Block_zeroone in Block.} *)

val is_block_zeroone_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {9 Querying Block_zeroonesingle in Block_zeroone in Block.} *)

val is_block_zeroonesingle_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
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

val is_block_zeroonedouble_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
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

val is_block_zeroonetriple_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying Ch_t in Block_zeroonetriple in Block_zeroone in Block.} *)

(* No Query from ch_t 0. *)

(** {9 Querying Block_zeroonehalfbridge in Block_zeroone in Block.} *)

(* No Query from block_zeroonehalfbridge 0. *)

(** {6 Querying Block_zerofork in Block.} *)

val is_block_zerofork_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {9 Querying Block_zerobifork in Block_zerofork in Block.} *)

val is_block_zerobifork_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying Ch_zsc in Block_zerobifork in Block_zerofork in Block.} *)

(* No Query from ch_zsc 0. *)

(** {12 Querying Ch_zsd in Block_zerobifork in Block_zerofork in Block.} *)

(* No Query from ch_zsd 0. *)

(** {12 Querying Nh_zs2 in Block_zerobifork in Block_zerofork in Block.} *)

(* No Query from nh_zs2 0. *)

(** {9 Querying Block_zerotrifork in Block_zerofork in Block.} *)

val is_block_zerotrifork_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying Ch_s3 in Block_zerotrifork in Block_zerofork in Block.} *)

(* No Query from ch_s3 0. *)

(** {12 Querying N_s3 in Block_zerotrifork in Block_zerofork in Block.} *)

(* No Query from n_s3 0. *)

(** {9 Querying Block_zeroquadrifork in Block_zerofork in Block.} *)

val is_block_zeroquadrifork_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying C_q in Block_zeroquadrifork in Block_zerofork in Block.} *)

(* No Query from c_q 0. *)

(** {12 Querying N_q_1p in Block_zeroquadrifork in Block_zerofork in Block.} *)

(* No Query from n_q_1p 0. *)

(** {6 Querying Block_oneone in Block.} *)

val is_block_oneone_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {9 Querying Block_onesingleonesingle in Block_oneone in Block.} *)

val is_block_onesingleonesingle_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
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

val is_block_onesingleonedouble_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying Ch_sd in Block_onesingleonedouble in Block_oneone in Block.} *)

(* No Query from ch_sd 0. *)

(** {12 Querying N_sd in Block_onesingleonedouble in Block_oneone in Block.} *)

(* No Query from n_sd 0. *)

(** {12 Querying N_sd_1p in Block_onesingleonedouble in Block_oneone in Block.} *)

(* No Query from n_sd_1p 0. *)

(** {9 Querying Block_onesingleonetriple in Block_oneone in Block.} *)

val is_block_onesingleonetriple_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying C_st in Block_onesingleonetriple in Block_oneone in Block.} *)

(* No Query from c_st 0. *)

(** {12 Querying N_st_1p in Block_onesingleonetriple in Block_oneone in Block.} *)

(* No Query from n_st_1p 0. *)

(** {9 Querying Block_onedoubleonesingle in Block_oneone in Block.} *)

val is_block_onedoubleonesingle_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying Ch_ds in Block_onedoubleonesingle in Block_oneone in Block.} *)

(* No Query from ch_ds 0. *)

(** {12 Querying N_ds in Block_onedoubleonesingle in Block_oneone in Block.} *)

(* No Query from n_ds 0. *)

(** {12 Querying Nh_ds_1p in Block_onedoubleonesingle in Block_oneone in Block.} *)

(* No Query from nh_ds_1p 0. *)

(** {9 Querying Block_onedoubleonedouble in Block_oneone in Block.} *)

val is_block_onedoubleonedouble_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying C_dd in Block_onedoubleonedouble in Block_oneone in Block.} *)

(* No Query from c_dd 0. *)

(** {12 Querying N_dd_1p in Block_onedoubleonedouble in Block_oneone in Block.} *)

(* No Query from n_dd_1p 0. *)

(** {9 Querying Block_onetripleonesingle in Block_oneone in Block.} *)

val is_block_onetripleonesingle_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying C_ts in Block_onetripleonesingle in Block_oneone in Block.} *)

(* No Query from c_ts 0. *)

(** {12 Querying N_ts_1p in Block_onetripleonesingle in Block_oneone in Block.} *)

(* No Query from n_ts_1p 0. *)

(** {6 Querying Block_oneend in Block.} *)

val is_block_oneend_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {9 Querying Block_onefork in Block_oneend in Block.} *)

val is_block_onefork_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying Block_onebifork in Block_onefork in Block_oneend in Block.} *)

val is_block_onebifork_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {12 Querying Block_onetrifork in Block_onefork in Block_oneend in Block.} *)

val is_block_onetrifork_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
;;

(** {9 Querying Block_onezero in Block_oneend in Block.} *)

val is_block_onezero_symbol_off_block_symbol :
  Block_symbol_t.block_symbol ->
  bool
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

val block_symbol_of_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Block_symbol_t.block_symbol
;;

(** {9 Upgrading from Atom_zerotied through Block_zerozero to Block.} *)

val block_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Atom_zerotied_raregas through Atom_zerotied through Block_zerozero to Block.} *)

val block_symbol_of_atom_zerotied_raregas_symbol :
  Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Atom_zerotied_anion through Atom_zerotied through Block_zerozero to Block.} *)

val block_symbol_of_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Atom_zerotied_cation through Atom_zerotied through Block_zerozero to Block.} *)

val block_symbol_of_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Halfbridge through Atom_zerotied through Block_zerozero to Block.} *)

val block_symbol_of_halfbridge_symbol :
  Halfbridge_symbol_t.halfbridge_symbol ->
    Block_symbol_t.block_symbol
;;

(** {9 Upgrading from Block_zerozero_diatomic through Block_zerozero to Block.} *)

val block_symbol_of_block_zerozero_diatomic_symbol :
  Block_zerozero_diatomic_symbol_t.block_zerozero_diatomic_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Co_zz through Block_zerozero_diatomic through Block_zerozero to Block.} *)

val co_zz : Block_symbol_t.block_symbol;;
(** {9 Upgrading from Block_zerozero_triatomic through Block_zerozero to Block.} *)

val block_symbol_of_block_zerozero_triatomic_symbol :
  Block_zerozero_triatomic_symbol_t.block_zerozero_triatomic_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Co2_zz through Block_zerozero_triatomic through Block_zerozero to Block.} *)

val co2_zz : Block_symbol_t.block_symbol;;
(** {12 Upgrading from No2_zz through Block_zerozero_triatomic through Block_zerozero to Block.} *)

val no2_zz : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Oh2_zz through Block_zerozero_triatomic through Block_zerozero to Block.} *)

val oh2_zz : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Sh2_zz through Block_zerozero_triatomic through Block_zerozero to Block.} *)

val sh2_zz : Block_symbol_t.block_symbol;;
(** {12 Upgrading from So2_zz through Block_zerozero_triatomic through Block_zerozero to Block.} *)

val so2_zz : Block_symbol_t.block_symbol;;
(** {9 Upgrading from Block_zerozero_tetratomic through Block_zerozero to Block.} *)

val block_symbol_of_block_zerozero_tetratomic_symbol :
  Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Cho2_1m through Block_zerozero_tetratomic through Block_zerozero to Block.} *)

val cho2_1m : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Nh2 through Block_zerozero_tetratomic through Block_zerozero to Block.} *)

val nh2 : Block_symbol_t.block_symbol;;
(** {9 Upgrading from Block_zerozero_pentatomic through Block_zerozero to Block.} *)

val block_symbol_of_block_zerozero_pentatomic_symbol :
  Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Ch4_zz through Block_zerozero_pentatomic through Block_zerozero to Block.} *)

val ch4_zz : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Nh4_zz_1p through Block_zerozero_pentatomic through Block_zerozero to Block.} *)

val nh4_zz_1p : Block_symbol_t.block_symbol;;
(** {6 Upgrading from Block_zeroone to Block.} *)

val block_symbol_of_block_zeroone_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    Block_symbol_t.block_symbol
;;

(** {9 Upgrading from Block_zeroonesingle through Block_zeroone to Block.} *)

val block_symbol_of_block_zeroonesingle_symbol :
  Block_zeroonesingle_symbol_t.block_zeroonesingle_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Ch2_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

val ch2_zs : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Ch3_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

val ch3_zs : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Coc2_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

val coc2_zs : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Coh_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

val coh_zs : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Nh2_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

val nh2_zs : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Nh3_zs_1p through Block_zeroonesingle through Block_zeroone to Block.} *)

val nh3_zs_1p : Block_symbol_t.block_symbol;;
(** {12 Upgrading from No2_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

val no2_zs : Block_symbol_t.block_symbol;;
(** {12 Upgrading from No_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

val no_zs : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Oh_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

val oh_zs : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Sh_zs through Block_zeroonesingle through Block_zeroone to Block.} *)

val sh_zs : Block_symbol_t.block_symbol;;
(** {9 Upgrading from Block_zeroonedouble through Block_zeroone to Block.} *)

val block_symbol_of_block_zeroonedouble_symbol :
  Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Ch2_d through Block_zeroonedouble through Block_zeroone to Block.} *)

val ch2_d : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Co_d through Block_zeroonedouble through Block_zeroone to Block.} *)

val co_d : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Nh_d through Block_zeroonedouble through Block_zeroone to Block.} *)

val nh_d : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Nh2_d_1p through Block_zeroonedouble through Block_zeroone to Block.} *)

val nh2_d_1p : Block_symbol_t.block_symbol;;
(** {9 Upgrading from Block_zeroonetriple through Block_zeroone to Block.} *)

val block_symbol_of_block_zeroonetriple_symbol :
  Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Ch_t through Block_zeroonetriple through Block_zeroone to Block.} *)

val ch_t : Block_symbol_t.block_symbol;;
(** {9 Upgrading from Block_zeroonehalfbridge through Block_zeroone to Block.} *)

val block_zeroonehalfbridge : Block_symbol_t.block_symbol;;

(** {6 Upgrading from Block_zerofork to Block.} *)

val block_symbol_of_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    Block_symbol_t.block_symbol
;;

(** {9 Upgrading from Block_zerobifork through Block_zerofork to Block.} *)

val block_symbol_of_block_zerobifork_symbol :
  Block_zerobifork_symbol_t.block_zerobifork_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Ch_zsc through Block_zerobifork through Block_zerofork to Block.} *)

val ch_zsc : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Ch_zsd through Block_zerobifork through Block_zerofork to Block.} *)

val ch_zsd : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Nh_zs2 through Block_zerobifork through Block_zerofork to Block.} *)

val nh_zs2 : Block_symbol_t.block_symbol;;
(** {9 Upgrading from Block_zerotrifork through Block_zerofork to Block.} *)

val block_symbol_of_block_zerotrifork_symbol :
  Block_zerotrifork_symbol_t.block_zerotrifork_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Ch_s3 through Block_zerotrifork through Block_zerofork to Block.} *)

val ch_s3 : Block_symbol_t.block_symbol;;
(** {12 Upgrading from N_s3 through Block_zerotrifork through Block_zerofork to Block.} *)

val n_s3 : Block_symbol_t.block_symbol;;
(** {9 Upgrading from Block_zeroquadrifork through Block_zerofork to Block.} *)

val block_symbol_of_block_zeroquadrifork_symbol :
  Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from C_q through Block_zeroquadrifork through Block_zerofork to Block.} *)

val c_q : Block_symbol_t.block_symbol;;
(** {12 Upgrading from N_q_1p through Block_zeroquadrifork through Block_zerofork to Block.} *)

val n_q_1p : Block_symbol_t.block_symbol;;
(** {6 Upgrading from Block_oneone to Block.} *)

val block_symbol_of_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    Block_symbol_t.block_symbol
;;

(** {9 Upgrading from Block_onesingleonesingle through Block_oneone to Block.} *)

val block_symbol_of_block_onesingleonesingle_symbol :
  Block_onesingleonesingle_symbol_t.block_onesingleonesingle_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Ch2_ss through Block_onesingleonesingle through Block_oneone to Block.} *)

val ch2_ss : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Co_ss through Block_onesingleonesingle through Block_oneone to Block.} *)

val co_ss : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Nh2_ss_1p through Block_onesingleonesingle through Block_oneone to Block.} *)

val nh2_ss_1p : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Nh_ss through Block_onesingleonesingle through Block_oneone to Block.} *)

val nh_ss : Block_symbol_t.block_symbol;;
(** {12 Upgrading from O_ss through Block_onesingleonesingle through Block_oneone to Block.} *)

val o_ss : Block_symbol_t.block_symbol;;
(** {12 Upgrading from S_ss through Block_onesingleonesingle through Block_oneone to Block.} *)

val s_ss : Block_symbol_t.block_symbol;;
(** {9 Upgrading from Block_onesingleonedouble through Block_oneone to Block.} *)

val block_symbol_of_block_onesingleonedouble_symbol :
  Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Ch_sd through Block_onesingleonedouble through Block_oneone to Block.} *)

val ch_sd : Block_symbol_t.block_symbol;;
(** {12 Upgrading from N_sd through Block_onesingleonedouble through Block_oneone to Block.} *)

val n_sd : Block_symbol_t.block_symbol;;
(** {12 Upgrading from N_sd_1p through Block_onesingleonedouble through Block_oneone to Block.} *)

val n_sd_1p : Block_symbol_t.block_symbol;;
(** {9 Upgrading from Block_onesingleonetriple through Block_oneone to Block.} *)

val block_symbol_of_block_onesingleonetriple_symbol :
  Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from C_st through Block_onesingleonetriple through Block_oneone to Block.} *)

val c_st : Block_symbol_t.block_symbol;;
(** {12 Upgrading from N_st_1p through Block_onesingleonetriple through Block_oneone to Block.} *)

val n_st_1p : Block_symbol_t.block_symbol;;
(** {9 Upgrading from Block_onedoubleonesingle through Block_oneone to Block.} *)

val block_symbol_of_block_onedoubleonesingle_symbol :
  Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Ch_ds through Block_onedoubleonesingle through Block_oneone to Block.} *)

val ch_ds : Block_symbol_t.block_symbol;;
(** {12 Upgrading from N_ds through Block_onedoubleonesingle through Block_oneone to Block.} *)

val n_ds : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Nh_ds_1p through Block_onedoubleonesingle through Block_oneone to Block.} *)

val nh_ds_1p : Block_symbol_t.block_symbol;;
(** {9 Upgrading from Block_onedoubleonedouble through Block_oneone to Block.} *)

val block_symbol_of_block_onedoubleonedouble_symbol :
  Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from C_dd through Block_onedoubleonedouble through Block_oneone to Block.} *)

val c_dd : Block_symbol_t.block_symbol;;
(** {12 Upgrading from N_dd_1p through Block_onedoubleonedouble through Block_oneone to Block.} *)

val n_dd_1p : Block_symbol_t.block_symbol;;
(** {9 Upgrading from Block_onetripleonesingle through Block_oneone to Block.} *)

val block_symbol_of_block_onetripleonesingle_symbol :
  Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from C_ts through Block_onetripleonesingle through Block_oneone to Block.} *)

val c_ts : Block_symbol_t.block_symbol;;
(** {12 Upgrading from N_ts_1p through Block_onetripleonesingle through Block_oneone to Block.} *)

val n_ts_1p : Block_symbol_t.block_symbol;;
(** {6 Upgrading from Block_oneend to Block.} *)

val block_symbol_of_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
    Block_symbol_t.block_symbol
;;

(** {9 Upgrading from Block_onefork through Block_oneend to Block.} *)

val block_symbol_of_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Block_onebifork through Block_onefork through Block_oneend to Block.} *)

val block_symbol_of_block_onebifork_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Block_onetrifork through Block_onefork through Block_oneend to Block.} *)

val block_symbol_of_block_onetrifork_symbol :
  Block_onetrifork_symbol_t.block_onetrifork_symbol ->
    Block_symbol_t.block_symbol
;;

(** {9 Upgrading from Block_onezero through Block_oneend to Block.} *)

val block_symbol_of_block_onezero_symbol :
  Block_onezero_symbol_t.block_onezero_symbol ->
    Block_symbol_t.block_symbol
;;

(** {12 Upgrading from Onesinglezero through Block_onezero through Block_oneend to Block.} *)

val onesinglezero : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Oneconjugatedzero through Block_onezero through Block_oneend to Block.} *)

val oneconjugatedzero : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Onedoublelezero through Block_onezero through Block_oneend to Block.} *)

val onedoublelezero : Block_symbol_t.block_symbol;;
(** {12 Upgrading from Onetriplezero through Block_onezero through Block_oneend to Block.} *)

val onetriplezero : Block_symbol_t.block_symbol;;
(** created by ./do_entitysum_symbol_v_mli.sh block 12 January 2011. *)

