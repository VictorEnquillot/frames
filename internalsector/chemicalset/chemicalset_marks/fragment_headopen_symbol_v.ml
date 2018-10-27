(** {3 The functionalities for a Symbol for a Fragment_headopen.} *)

let nam_cod = "fragment_headopen_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Fragment_headopen_symbol_t.Fragment_buried_symbol sym_frb ->
      Fragment_buried_symbol_v.name sym_frb
  | Fragment_headopen_symbol_t.Fragment_leaf_symbol sym_frl ->
      Fragment_leaf_symbol_v.name sym_frl
;;


(** {6 Upgrading} *)


let fragment_headopen_symbol_of_fragment_buried_symbol sym_frb = 
  Fragment_headopen_symbol_t.Fragment_buried_symbol sym_frb
;;

let fragment_headopen_symbol_of_block_onetied_forktied_symbol sym_b1f = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_onetied_forktied_symbol sym_b1f in
    fragment_headopen_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_headopen_symbol_of_block_onetied_biforktied_symbol sym_b1b = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_onetied_biforktied_symbol sym_b1b in
    fragment_headopen_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_headopen_symbol_of_block_single_singlesingle_symbol sym_bss = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesingle_symbol sym_bss in
    fragment_headopen_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_headopen_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa in
    fragment_headopen_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_headopen_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat in
    fragment_headopen_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_headopen_symbol_of_block_single_singledouble_symbol sym_bss = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singledouble_symbol sym_bss in
    fragment_headopen_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_headopen_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat in
    fragment_headopen_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_headopen_symbol_of_block_onetied_triforktied_symbol sym_b1t = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_onetied_triforktied_symbol sym_b1t in
    fragment_headopen_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_headopen_symbol_of_block_single_singlesinglesingle_symbol sym_bss = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesinglesingle_symbol sym_bss in
    fragment_headopen_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_headopen_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa in
    fragment_headopen_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_headopen_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_frb = Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat in
    fragment_headopen_symbol_of_fragment_buried_symbol sym_frb
;;

let fragment_headopen_symbol_of_fragment_leaf_symbol sym_frl = 
  Fragment_headopen_symbol_t.Fragment_leaf_symbol sym_frl
;;

let fragment_headopen_symbol_of_fragment_onetied_zerotied_symbol sym_f10 = 
  let sym_frl = Fragment_leaf_symbol_v.fragment_leaf_symbol_of_fragment_onetied_zerotied_symbol sym_f10 in
    fragment_headopen_symbol_of_fragment_leaf_symbol sym_frl
;;

let fragment_headopen_symbol_of_fragment_leaf_halfbridgetailed_symbol sym_flh = 
  let sym_frl = Fragment_leaf_symbol_v.fragment_leaf_symbol_of_fragment_leaf_halfbridgetailed_symbol sym_flh in
    fragment_headopen_symbol_of_fragment_leaf_symbol sym_frl
;;


(** {6 Abbreviating} *)


let s_n_ss = fragment_headopen_symbol_of_fragment_buried_symbol Fragment_buried_symbol_v.s_n_ss;;

let s_c_sd = fragment_headopen_symbol_of_fragment_buried_symbol Fragment_buried_symbol_v.s_c_sd;;

let s_c_sss = fragment_headopen_symbol_of_fragment_buried_symbol Fragment_buried_symbol_v.s_c_sss;;

let s_nhp1_sss = fragment_headopen_symbol_of_fragment_buried_symbol Fragment_buried_symbol_v.s_nhp1_sss;;

let fragment_buried_biforked = fragment_headopen_symbol_of_fragment_buried_symbol Fragment_buried_symbol_v.fragment_buried_biforked;;

let fragment_buried_triforked = fragment_headopen_symbol_of_fragment_buried_symbol Fragment_buried_symbol_v.fragment_buried_triforked;;

let fragment_buried_fromid = fragment_headopen_symbol_of_fragment_buried_symbol Fragment_buried_symbol_v.fragment_buried_fromid;;

let fragment_buried_leftextended_fromid s = fragment_headopen_symbol_of_fragment_buried_symbol (Fragment_buried_symbol_v.fragment_buried_leftextended_fromid s);;

let block_onetied_zerotied = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.block_onetied_zerotied;;

let s_ch_d_cd_ch2_z = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch_d_cd_ch2_z;;

let s_ch_s_ch3_ch_s_ch3_z = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch_s_ch3_ch_s_ch3_z;;

let s_ch_d_nh_z = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch_d_nh_z;;

let s_ch_d_nh_cco_s_ch3_z = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch_d_nh_cco_s_ch3_z;;

let s_ch2_s_ch2_s_s_s_ch3_z = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_s_ch2_s_s_s_ch3_z;;

let s_ch2_s_ch3_z = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_s_ch3_z;;

let s_ch2r2_s_ch3_z = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2r2_s_ch3_z;;

let s_ch2r3_s_ch3_z = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2r3_s_ch3_z;;

let s_ch2r4_s_ch3_z = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2r4_s_ch3_z;;

let s_ch2r5_s_ch3_z = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2r5_s_ch3_z;;

let s_ch2_s_oh_z = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_s_oh_z;;

let s_ch2_cco_cnh2_z = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_cco_cnh2_z;;

let s_ch2_d_co_s_oh_z = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_d_co_s_oh_z;;

let s_ch2_s_coo_z = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.s_ch2_s_coo_z;;

let fragment_leaf_fromid s = fragment_headopen_symbol_of_fragment_leaf_symbol (Fragment_leaf_symbol_v.fragment_leaf_fromid s);;

let fragment_leaf_leftextended_fromid s = fragment_headopen_symbol_of_fragment_leaf_symbol (Fragment_leaf_symbol_v.fragment_leaf_leftextended_fromid s);;

let c_ch_cr5_hb_c = fragment_headopen_symbol_of_fragment_leaf_symbol Fragment_leaf_symbol_v.c_ch_cr5_hb_c;;


(** {6 Making} *)


let make s = function
  | "s_n_ss" -> s_n_ss
  | "s_c_sd" -> s_c_sd
  | "s_c_sss" -> s_c_sss
  | "s_nhp1_sss" -> s_nhp1_sss
  | "fragment_buried_biforked" -> fragment_buried_biforked
  | "fragment_buried_triforked" -> fragment_buried_triforked
  | "fragment_buried_fromid" -> fragment_buried_fromid
  | "fragment_buried_leftextended_fromid" -> fragment_buried_leftextended_fromid s
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
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let fragment_buried_symbol_off_fragment_headopen_symbol = function
  | Fragment_headopen_symbol_t.Fragment_buried_symbol sym_frb -> sym_frb
  | sym_frh -> Error_messages_v.print_fatal_error
      nam_cod "fragment_buried_symbol_off_fragment_headopen_symbol"
      "Fragment_buried_symbol"
      (name sym_frh) "check"
;;

let block_onetied_forktied_symbol_off_fragment_headopen_symbol sym_frh = 
  let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
    Fragment_buried_symbol_v.block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb
;;

let block_onetied_biforktied_symbol_off_fragment_headopen_symbol sym_frh = 
  let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
    Fragment_buried_symbol_v.block_onetied_biforktied_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singlesingle_symbol_off_fragment_headopen_symbol sym_frh = 
  let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
    Fragment_buried_symbol_v.block_single_singlesingle_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singlesingle_ax3_symbol_off_fragment_headopen_symbol sym_frh = 
  let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
    Fragment_buried_symbol_v.block_single_singlesingle_ax3_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_headopen_symbol sym_frh = 
  let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
    Fragment_buried_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singledouble_symbol_off_fragment_headopen_symbol sym_frh = 
  let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
    Fragment_buried_symbol_v.block_single_singledouble_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_headopen_symbol sym_frh = 
  let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
    Fragment_buried_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_buried_symbol sym_frb
;;

let block_onetied_triforktied_symbol_off_fragment_headopen_symbol sym_frh = 
  let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
    Fragment_buried_symbol_v.block_onetied_triforktied_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singlesinglesingle_symbol_off_fragment_headopen_symbol sym_frh = 
  let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
    Fragment_buried_symbol_v.block_single_singlesinglesingle_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singlesinglesingle_ax4_symbol_off_fragment_headopen_symbol sym_frh = 
  let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
    Fragment_buried_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_fragment_buried_symbol sym_frb
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_headopen_symbol sym_frh = 
  let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
    Fragment_buried_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_buried_symbol sym_frb
;;

let fragment_leaf_symbol_off_fragment_headopen_symbol = function
  | Fragment_headopen_symbol_t.Fragment_leaf_symbol sym_frl -> sym_frl
  | sym_frh -> Error_messages_v.print_fatal_error
      nam_cod "fragment_leaf_symbol_off_fragment_headopen_symbol"
      "Fragment_leaf_symbol"
      (name sym_frh) "check"
;;

let fragment_onetied_zerotied_symbol_off_fragment_headopen_symbol sym_frh = 
  let sym_frl = fragment_leaf_symbol_off_fragment_headopen_symbol sym_frh in 
    Fragment_leaf_symbol_v.fragment_onetied_zerotied_symbol_off_fragment_leaf_symbol sym_frl
;;

let fragment_leaf_halfbridgetailed_symbol_off_fragment_headopen_symbol sym_frh = 
  let sym_frl = fragment_leaf_symbol_off_fragment_headopen_symbol sym_frh in 
    Fragment_leaf_symbol_v.fragment_leaf_halfbridgetailed_symbol_off_fragment_leaf_symbol sym_frl
;;


(** {6 Querying} *)


let is_fragment_buried_symbol_off_fragment_headopen_symbol = function
  | Fragment_headopen_symbol_t.Fragment_buried_symbol _ -> true
  | _ -> false
;;

let is_block_onetied_forktied_symbol_off_fragment_headopen_symbol sym_frh =
  if not (is_fragment_buried_symbol_off_fragment_headopen_symbol sym_frh)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
     Fragment_buried_symbol_v.is_block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_onetied_biforktied_symbol_off_fragment_headopen_symbol sym_frh =
  if not (is_fragment_buried_symbol_off_fragment_headopen_symbol sym_frh)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
     Fragment_buried_symbol_v.is_block_onetied_biforktied_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singlesingle_symbol_off_fragment_headopen_symbol sym_frh =
  if not (is_fragment_buried_symbol_off_fragment_headopen_symbol sym_frh)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
     Fragment_buried_symbol_v.is_block_single_singlesingle_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singlesingle_ax3_symbol_off_fragment_headopen_symbol sym_frh =
  if not (is_fragment_buried_symbol_off_fragment_headopen_symbol sym_frh)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
     Fragment_buried_symbol_v.is_block_single_singlesingle_ax3_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_headopen_symbol sym_frh =
  if not (is_fragment_buried_symbol_off_fragment_headopen_symbol sym_frh)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
     Fragment_buried_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singledouble_symbol_off_fragment_headopen_symbol sym_frh =
  if not (is_fragment_buried_symbol_off_fragment_headopen_symbol sym_frh)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
     Fragment_buried_symbol_v.is_block_single_singledouble_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_headopen_symbol sym_frh =
  if not (is_fragment_buried_symbol_off_fragment_headopen_symbol sym_frh)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
     Fragment_buried_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_onetied_triforktied_symbol_off_fragment_headopen_symbol sym_frh =
  if not (is_fragment_buried_symbol_off_fragment_headopen_symbol sym_frh)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
     Fragment_buried_symbol_v.is_block_onetied_triforktied_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singlesinglesingle_symbol_off_fragment_headopen_symbol sym_frh =
  if not (is_fragment_buried_symbol_off_fragment_headopen_symbol sym_frh)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
     Fragment_buried_symbol_v.is_block_single_singlesinglesingle_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singlesinglesingle_ax4_symbol_off_fragment_headopen_symbol sym_frh =
  if not (is_fragment_buried_symbol_off_fragment_headopen_symbol sym_frh)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
     Fragment_buried_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_headopen_symbol sym_frh =
  if not (is_fragment_buried_symbol_off_fragment_headopen_symbol sym_frh)
  then false
  else
    begin
     let sym_frb = fragment_buried_symbol_off_fragment_headopen_symbol sym_frh in 
     Fragment_buried_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_buried_symbol sym_frb
    end
;;

let is_fragment_leaf_symbol_off_fragment_headopen_symbol = function
  | Fragment_headopen_symbol_t.Fragment_leaf_symbol _ -> true
  | _ -> false
;;

let is_fragment_onetied_zerotied_symbol_off_fragment_headopen_symbol sym_frh =
  if not (is_fragment_leaf_symbol_off_fragment_headopen_symbol sym_frh)
  then false
  else
    begin
     let sym_frl = fragment_leaf_symbol_off_fragment_headopen_symbol sym_frh in 
     Fragment_leaf_symbol_v.is_fragment_onetied_zerotied_symbol_off_fragment_leaf_symbol sym_frl
    end
;;

let is_fragment_leaf_halfbridgetailed_symbol_off_fragment_headopen_symbol sym_frh =
  if not (is_fragment_leaf_symbol_off_fragment_headopen_symbol sym_frh)
  then false
  else
    begin
     let sym_frl = fragment_leaf_symbol_off_fragment_headopen_symbol sym_frh in 
     Fragment_leaf_symbol_v.is_fragment_leaf_halfbridgetailed_symbol_off_fragment_leaf_symbol sym_frl
    end
;;


(** created by ./generator fragment_headopen implementation symbol at 15:47 8 Mar 2012. *)



