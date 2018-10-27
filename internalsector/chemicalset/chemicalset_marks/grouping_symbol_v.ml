(** {3 The functionalities for a Symbol for a Grouping.} *)

let nam_cod = "grouping_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Grouping_symbol_t.Empty -> "empty"
  | Grouping_symbol_t.Fragment_leaf_symbol sym_frl ->
      Fragment_leaf_symbol_v.name sym_frl
  | Grouping_symbol_t.Fragment_tree -> "fragment_tree"
  | Grouping_symbol_t.Polypeptide_sidegroup_symbol sym_pos ->
      Polypeptide_sidegroup_symbol_v.name sym_pos
  | Grouping_symbol_t.Grouping_fromid _ -> "grouping_fromid"
;;


(** {6 Upgrading} *)


let grouping_symbol_of_fragment_leaf_symbol sym_frl = 
  Grouping_symbol_t.Fragment_leaf_symbol sym_frl
;;

let grouping_symbol_of_fragment_onetied_zerotied_symbol sym_f10 = 
  let sym_frl = Fragment_leaf_symbol_v.fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol sym_f10 in
    grouping_symbol_of_fragment_leaf_symbol sym_frl
;;

let grouping_symbol_of_fragment_leaf_halfbridgetailed_symbol sym_flh = 
  let sym_frl = Fragment_leaf_symbol_v.fragment_leaf_symbol_of_fragment_leaf_halfbridgetailed_symbol sym_flh in
    grouping_symbol_of_fragment_leaf_symbol sym_frl
;;

let grouping_symbol_of_polypeptide_sidegroup_symbol sym_pos = 
  Grouping_symbol_t.Polypeptide_sidegroup_symbol sym_pos
;;


(** {6 Abbreviating} *)


let empty = Grouping_symbol_t.Empty;;

let block_onetied_zerotied = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.block_onetied_zerotied;;

let s_ch_d_cd_ch2_z = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch_d_cd_ch2_z;;

let s_ch_s_ch3_ch_s_ch3_z = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch_s_ch3_ch_s_ch3_z;;

let s_ch_d_nh_z = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch_d_nh_z;;

let s_ch_d_nh_cco_s_ch3_z = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch_d_nh_cco_s_ch3_z;;

let s_ch2_s_ch2_s_s_s_ch3_z = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_s_ch2_s_s_s_ch3_z;;

let s_ch2_s_ch3_z = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_s_ch3_z;;

let s_ch2r2_s_ch3_z = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2r2_s_ch3_z;;

let s_ch2r3_s_ch3_z = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2r3_s_ch3_z;;

let s_ch2r4_s_ch3_z = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2r4_s_ch3_z;;

let s_ch2r5_s_ch3_z = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2r5_s_ch3_z;;

let s_ch2_s_oh_z = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_s_oh_z;;

let s_ch2_cco_cnh2_z = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_cco_cnh2_z;;

let s_ch2_d_co_s_oh_z = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_d_co_s_oh_z;;

let s_ch2_s_coo_z = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_s_coo_z;;

let fragment_leaf_fromid s = grouping_symbol_of_fragment_leaf_symbol (Fragment_leaf_symbol_v.fragment_leaf_fromid s);;

let fragment_leaf_leftextended_fromid s = grouping_symbol_of_fragment_leaf_symbol (Fragment_leaf_symbol_v.fragment_leaf_leftextended_fromid s);;

let c_ch_cr5_hb_c = grouping_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.c_ch_cr5_hb_c;;

let fragment_tree = Grouping_symbol_t.Fragment_tree;;

let sidegroup_alanine = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_alanine;;

let sidegroup_arginine = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_arginine;;

let sidegroup_asparagine = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_asparagine;;

let sidegroup_aspartic = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_aspartic;;

let sidegroup_cysteine = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_cysteine;;

let sidegroup_glutamine = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_glutamine;;

let sidegroup_glutamic = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_glutamic;;

let sidegroup_histidine = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_histidine;;

let sidegroup_isoleucine = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_isoleucine;;

let sidegroup_leucine = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_leucine;;

let sidegroup_lysine = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_lysine;;

let sidegroup_methionine = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_methionine;;

let sidegroup_phenylalanine = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_phenylalanine;;

let sidegroup_serine = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_serine;;

let sidegroup_threonine = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_threonine;;

let sidegroup_tryptophan = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_tryptophan;;

let sidegroup_tyrosine = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_tyrosine;;

let sidegroup_valine = grouping_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.sidegroup_valine;;

let grouping_fromid s = Grouping_symbol_t.Grouping_fromid s;;


(** {6 Making} *)


let make s = function
  | "empty" -> empty
  | "block_onetied_zerotied" -> block_onetied_zerotied
  | "s_ch_d_cd_ch2_z" -> s_ch_d_cd_ch2_z
  | "s_ch_s_ch3_ch_s_ch3_z" -> s_ch_s_ch3_ch_s_ch3_z
  | "s_ch_d_nh_z" -> s_ch_d_nh_z
  | "s_ch_d_nh_cco_s_ch3_z" -> s_ch_d_nh_cco_s_ch3_z
  | "s_ch2_s_ch2_s_s_s_ch3_z" -> s_ch2_s_ch2_s_s_s_ch3_z
  | "s_ch2_s_ch3_z" -> s_ch2_s_ch3_z
  | "s_ch2r2_s_ch3_z" -> s_ch2r2_s_ch3_z
  | "s_ch2r3_s_ch3_z" -> s_ch2r3_s_ch3_z
  | "s_ch2r4_s_ch3_z" -> s_ch2r4_s_ch3_z
  | "s_ch2r5_s_ch3_z" -> s_ch2r5_s_ch3_z
  | "s_ch2_s_oh_z" -> s_ch2_s_oh_z
  | "s_ch2_cco_cnh2_z" -> s_ch2_cco_cnh2_z
  | "s_ch2_d_co_s_oh_z" -> s_ch2_d_co_s_oh_z
  | "s_ch2_s_coo_z" -> s_ch2_s_coo_z
  | "fragment_leaf_fromid" -> fragment_leaf_fromid s
  | "fragment_leaf_leftextended_fromid" -> fragment_leaf_leftextended_fromid s
  | "c_ch_cr5_hb_c" -> c_ch_cr5_hb_c
  | "fragment_tree" -> fragment_tree
  | "sidegroup_alanine" -> sidegroup_alanine
  | "sidegroup_arginine" -> sidegroup_arginine
  | "sidegroup_asparagine" -> sidegroup_asparagine
  | "sidegroup_aspartic" -> sidegroup_aspartic
  | "sidegroup_cysteine" -> sidegroup_cysteine
  | "sidegroup_glutamine" -> sidegroup_glutamine
  | "sidegroup_glutamic" -> sidegroup_glutamic
  | "sidegroup_histidine" -> sidegroup_histidine
  | "sidegroup_isoleucine" -> sidegroup_isoleucine
  | "sidegroup_leucine" -> sidegroup_leucine
  | "sidegroup_lysine" -> sidegroup_lysine
  | "sidegroup_methionine" -> sidegroup_methionine
  | "sidegroup_phenylalanine" -> sidegroup_phenylalanine
  | "sidegroup_serine" -> sidegroup_serine
  | "sidegroup_threonine" -> sidegroup_threonine
  | "sidegroup_tryptophan" -> sidegroup_tryptophan
  | "sidegroup_tyrosine" -> sidegroup_tyrosine
  | "sidegroup_valine" -> sidegroup_valine
  | "grouping_fromid" -> grouping_fromid s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let fragment_leaf_symbol_off_grouping_symbol = function
  | Grouping_symbol_t.Fragment_leaf_symbol sym_frl -> sym_frl
  | sym_grg -> Error_messages_v.print_fatal_error
      nam_cod "fragment_leaf_symbol_off_grouping_symbol"
      "Fragment_leaf_symbol"
      (name sym_grg) "check"
;;

let fragment_onetied_zerotied_symbol_off_grouping_symbol sym_grg = 
  let sym_frl = fragment_leaf_symbol_off_grouping_symbol sym_grg in 
    Fragment_leaf_symbol_v.fragment_onetied_zerotied_symbol_off_fragment_leaf_symbol sym_frl
;;

let fragment_leaf_halfbridgetailed_symbol_off_grouping_symbol sym_grg = 
  let sym_frl = fragment_leaf_symbol_off_grouping_symbol sym_grg in 
    Fragment_leaf_symbol_v.fragment_leaf_halfbridgetailed_symbol_off_fragment_leaf_symbol sym_frl
;;

let polypeptide_sidegroup_symbol_off_grouping_symbol = function
  | Grouping_symbol_t.Polypeptide_sidegroup_symbol sym_pos -> sym_pos
  | sym_grg -> Error_messages_v.print_fatal_error
      nam_cod "polypeptide_sidegroup_symbol_off_grouping_symbol"
      "Polypeptide_sidegroup_symbol"
      (name sym_grg) "check"
;;


(** {6 Querying} *)


let is_fragment_leaf_symbol_off_grouping_symbol = function
  | Grouping_symbol_t.Fragment_leaf_symbol _ -> true
  | _ -> false
;;

let is_fragment_onetied_zerotied_symbol_off_grouping_symbol sym_grg =
  if not (is_fragment_leaf_symbol_off_grouping_symbol sym_grg)
  then false
  else
    begin
     let sym_frl = fragment_leaf_symbol_off_grouping_symbol sym_grg in 
     Fragment_leaf_symbol_v.is_fragment_onetied_zerotied_symbol_off_fragment_leaf_symbol sym_frl
    end
;;

let is_fragment_leaf_halfbridgetailed_symbol_off_grouping_symbol sym_grg =
  if not (is_fragment_leaf_symbol_off_grouping_symbol sym_grg)
  then false
  else
    begin
     let sym_frl = fragment_leaf_symbol_off_grouping_symbol sym_grg in 
     Fragment_leaf_symbol_v.is_fragment_leaf_halfbridgetailed_symbol_off_fragment_leaf_symbol sym_frl
    end
;;

let is_polypeptide_sidegroup_symbol_off_grouping_symbol = function
  | Grouping_symbol_t.Polypeptide_sidegroup_symbol _ -> true
  | _ -> false
;;


(** created by ./generator grouping implementation symbol at 15:3 13 Mar 2012. *)



