(** {3 The functionalities for a Formula for a Molecule_forked.} *)

(** {6 Making} *)

let make tag_frh tag_gro_l =
  Capped_list_v.make tag_frh tag_gro_l 
;;

(** {6 Iterating.} *)

let iter for_mof = Capped_list_v.iter for_mof ;;
let iter2 for_mof_1 for_ite_2 = Capped_list_v.iter for_mof_1 for_mof_2;;

let map for_mof = Capped_list_v.map for_mof;;
let map2 for_mof_1 for_mof_2 = Capped_list_v.map2 for_mof_1 for_mof_2;;


(** {6 Retrieving} *)
    
(* Ex.:                                                                 *)
(*   builders guanidine = capped_list  z_nh2_s_c_sd   s_nh2_z    d_nh_z *)

let retrieve tag_mof =
  let mar_son_cal = 
    Son_mark_capped_list_by_molecule_forked_tag_provider_v.provide 
      tag_mof
  in 
  let sym_son_cal = 
    Capped_list_v.map 
      Mark_v.symbol_off_mark 
      Mark_v.symbol_off_mark 
      tag_mof 
  in 
  let gss_son_cal = 
    Capped_list_v.map 
      Generatorset_symbol_v.generatorset_symbol_of_fragment_head_symbol 
      Generatorset_symbol_v.generatorset_symbol_of_grouping_symbol 
      sym_son_cal 
  in 
  let vse_son_cal =
  in
  let soi_son_cal = 
    Capped_list_v.map 
    Vsepr_index_v.sole_index_of_vsepr_index 
    Vsepr_index_v.sole_index_of_vsepr_index 
    vsi_son_cal
  in

  iter2 
    Generatorset_symbol_by_sole_index_production_provider_v.store 
    sym_son_cal soi_son_cal;

  map2 Tag_v.make sym_son_cal soi_son_cal
;;
