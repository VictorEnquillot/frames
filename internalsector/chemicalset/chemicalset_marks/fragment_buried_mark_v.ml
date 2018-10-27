(** {3 The functionalities for a Mark for a Fragment_buried.} *)

let nam_cod = "fragment_buried_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_frb =
  Mark_v.name Fragment_buried_symbol_v.name mark_frb
;;


(** {6 Upgrading} *)


let fragment_buried_mark_of_block_onetied_forktied_mark mark_b1f = 
  Mark_v.map_left Fragment_buried_symbol_v.fragment_buried_symbol_of_block_onetied_forktied_symbol mark_b1f
;;

let fragment_buried_mark_of_block_onetied_biforktied_mark mark_b1b = 
  Mark_v.map_left Fragment_buried_symbol_v.fragment_buried_symbol_of_block_onetied_biforktied_symbol mark_b1b
;;

let fragment_buried_mark_of_block_single_singlesingle_mark mark_bss = 
  Mark_v.map_left Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesingle_symbol mark_bss
;;

let fragment_buried_mark_of_block_single_singlesingle_ax3_mark mark_ssa = 
  Mark_v.map_left Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesingle_ax3_symbol mark_ssa
;;

let fragment_buried_mark_of_block_single_singlesingle_ax3e1_trigonalpyramidal_mark mark_sat = 
  Mark_v.map_left Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol mark_sat
;;

let fragment_buried_mark_of_block_single_singledouble_mark mark_bss = 
  Mark_v.map_left Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singledouble_symbol mark_bss
;;

let fragment_buried_mark_of_block_single_singledouble_ax3e0_trigonalplanar_mark mark_sat = 
  Mark_v.map_left Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol mark_sat
;;

let fragment_buried_mark_of_block_onetied_triforktied_mark mark_b1t = 
  Mark_v.map_left Fragment_buried_symbol_v.fragment_buried_symbol_of_block_onetied_triforktied_symbol mark_b1t
;;

let fragment_buried_mark_of_block_single_singlesinglesingle_mark mark_bss = 
  Mark_v.map_left Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesinglesingle_symbol mark_bss
;;

let fragment_buried_mark_of_block_single_singlesinglesingle_ax4_mark mark_ssa = 
  Mark_v.map_left Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesinglesingle_ax4_symbol mark_ssa
;;

let fragment_buried_mark_of_block_single_singlesinglesingle_ax4e1_tetrahedral_mark mark_sat = 
  Mark_v.map_left Fragment_buried_symbol_v.fragment_buried_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol mark_sat
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_frb soi_frb =
  Mark_v.make sym_frb soi_frb
;;


(** {6 Extracting} *)


let block_onetied_forktied_mark_off_fragment_buried_mark mark_frb = 
  Mark_v.map_left Fragment_buried_symbol_v.block_onetied_forktied_symbol_off_fragment_buried_symbol mark_frb
;;

let block_onetied_biforktied_mark_off_fragment_buried_mark mark_frb = 
  Mark_v.map_left Fragment_buried_symbol_v.block_onetied_biforktied_symbol_off_fragment_buried_symbol mark_frb
;;

let block_single_singlesingle_mark_off_fragment_buried_mark mark_frb = 
  Mark_v.map_left Fragment_buried_symbol_v.block_single_singlesingle_symbol_off_fragment_buried_symbol mark_frb
;;

let block_single_singlesingle_ax3_mark_off_fragment_buried_mark mark_frb = 
  Mark_v.map_left Fragment_buried_symbol_v.block_single_singlesingle_ax3_symbol_off_fragment_buried_symbol mark_frb
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_mark_off_fragment_buried_mark mark_frb = 
  Mark_v.map_left Fragment_buried_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_buried_symbol mark_frb
;;

let block_single_singledouble_mark_off_fragment_buried_mark mark_frb = 
  Mark_v.map_left Fragment_buried_symbol_v.block_single_singledouble_symbol_off_fragment_buried_symbol mark_frb
;;

let block_single_singledouble_ax3e0_trigonalplanar_mark_off_fragment_buried_mark mark_frb = 
  Mark_v.map_left Fragment_buried_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_buried_symbol mark_frb
;;

let block_onetied_triforktied_mark_off_fragment_buried_mark mark_frb = 
  Mark_v.map_left Fragment_buried_symbol_v.block_onetied_triforktied_symbol_off_fragment_buried_symbol mark_frb
;;

let block_single_singlesinglesingle_mark_off_fragment_buried_mark mark_frb = 
  Mark_v.map_left Fragment_buried_symbol_v.block_single_singlesinglesingle_symbol_off_fragment_buried_symbol mark_frb
;;

let block_single_singlesinglesingle_ax4_mark_off_fragment_buried_mark mark_frb = 
  Mark_v.map_left Fragment_buried_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_fragment_buried_symbol mark_frb
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_mark_off_fragment_buried_mark mark_frb = 
  Mark_v.map_left Fragment_buried_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_buried_symbol mark_frb
;;


(** {6 Querying} *)


let is_block_onetied_forktied_mark_off_fragment_buried_mark mark_frb =
  Mark_v.map_left Fragment_buried_symbol_v.is_block_onetied_forktied_symbol_off_fragment_buried_symbol mark_frb
;;

let is_block_onetied_biforktied_mark_off_fragment_buried_mark mark_frb =
  Mark_v.map_left Fragment_buried_symbol_v.is_block_onetied_biforktied_symbol_off_fragment_buried_symbol mark_frb
;;

let is_block_single_singlesingle_mark_off_fragment_buried_mark mark_frb =
  Mark_v.map_left Fragment_buried_symbol_v.is_block_single_singlesingle_symbol_off_fragment_buried_symbol mark_frb
;;

let is_block_single_singlesingle_ax3_mark_off_fragment_buried_mark mark_frb =
  Mark_v.map_left Fragment_buried_symbol_v.is_block_single_singlesingle_ax3_symbol_off_fragment_buried_symbol mark_frb
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_mark_off_fragment_buried_mark mark_frb =
  Mark_v.map_left Fragment_buried_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_buried_symbol mark_frb
;;

let is_block_single_singledouble_mark_off_fragment_buried_mark mark_frb =
  Mark_v.map_left Fragment_buried_symbol_v.is_block_single_singledouble_symbol_off_fragment_buried_symbol mark_frb
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_mark_off_fragment_buried_mark mark_frb =
  Mark_v.map_left Fragment_buried_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_buried_symbol mark_frb
;;

let is_block_onetied_triforktied_mark_off_fragment_buried_mark mark_frb =
  Mark_v.map_left Fragment_buried_symbol_v.is_block_onetied_triforktied_symbol_off_fragment_buried_symbol mark_frb
;;

let is_block_single_singlesinglesingle_mark_off_fragment_buried_mark mark_frb =
  Mark_v.map_left Fragment_buried_symbol_v.is_block_single_singlesinglesingle_symbol_off_fragment_buried_symbol mark_frb
;;

let is_block_single_singlesinglesingle_ax4_mark_off_fragment_buried_mark mark_frb =
  Mark_v.map_left Fragment_buried_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_fragment_buried_symbol mark_frb
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_mark_off_fragment_buried_mark mark_frb =
  Mark_v.map_left Fragment_buried_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_buried_symbol mark_frb
;;


(** created by ./generator fragment_buried implementation mark at 15:12 13 Mar 2012. *)



