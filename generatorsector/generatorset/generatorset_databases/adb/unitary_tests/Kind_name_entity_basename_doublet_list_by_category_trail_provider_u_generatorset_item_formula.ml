open Make_test_v;;

testing "Kind_name_entity_basename_doublet_list_by_category_trail_provider_v with
   Kind_name_entity_basename_doublet_list_by_category_trail_provider_u_generatorset_item_formula.ml";; 

(* toplevel 
   #use "Kind_name_entity_basename_doublet_list_by_category_trail_provider_u_generatorset_item_formula.ml";; 

*)

let nam_dos = "generatorset_item";;
let nam_cat = "formula";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_kin_nam_ent_dol = Kind_name_entity_basename_doublet_list_by_category_trail_provider_v.provide tra_cat;;

let select_left nam dep1 dep2 wol =
  let dep = List.length (String_v.split_of_character_of_string '_'  wol) in
  String.length wol >= (String.length nam) 
    && (String.sub wol 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_kind_off_singlet nam dep1 dep2 rcd =
  let dep = List.length (String_v.split_of_character_of_string '_' rcd) in
  String.length rcd >= (String.length nam) 
    && (String.sub rcd 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_kind_off_doublet ent dep1 dep2 dou =
  let (e, s) = dou in
  let dep = List.length (String_v.split_of_character_of_string '_' e) in
  String.length e >= (String.length ent) 
    && (String.sub e 0 (String.length ent) = ent)
    && dep >= dep1 
    && dep <= dep2 
;;

test_number 1 (
 nam_kin_nam_ent_dol
(* : (string, string) Doublet_list_t.doublet_list *)
=
[("type", "generatorset_item");
 ("type", "grouping_fromid");
 ("type", "molecule_forked_fromid");
 ("type", "molecule_linear_diatomic");
 ("type", "molecule_linear_overdiatomic");
 ("type", "molecule_polymer_fromid");
 ("type", "polypeptide_fromid");
 ("description", "protein");
 ("content", "d_c_d");
 ("content", "d_c_ss");
 ("content", "s_c_ds");
 ("content", "s_c_sd");
 ("content", "s_c_sss");
 ("content", "z_c_ssss");
 ("content", "s_c_t");
 ("content", "z_he_z");
 ("content", "z_ne_z");
 ("content", "z_fm1_z");
 ("content", "z_hm1_z");
 ("content", "z_clm1_z");
 ("content", "z_brm1_z");
 ("content", "z_im1_z");
 ("content", "s_be_s");
 ("content", "s_bf_s");
 ("content", "d_nh_z");
 ("content", "z_coh_s");
 ("content", "s_ch2_s");
 ("content", "s_ch_d");
 ("content", "s_ch_ss");
 ("content", "s_nh2_z");
 ("content", "s_nhp1_c");
 ("content", "c_hba_z");
 ("content", "c_hbb_z");
 ("content", "s_hba_z");
 ("content", "s_hbb_z");
 ("content", "z_ch3_s");
 ("content", "z_nh3p1_s");
 ("content", "c_benzene_c");
 ("content", "n_nh2_s_c_sd");
 ("content", "s_nh2_z");
 ("content", "d_nh_z");
 ("content", "s_ch2r3_s_chx_s");
 ("content", "s_ch2r3_s_nhp1_c_c_ss");
 ("content", "z_oh_s_c_cc");
 ("content", "c_chr5_c_hba_z");
 ("content", "f_c_hba");
 ("content", "f_c_hbb");
 ("content", "c_pyrrole_cc");
 ("content", "g_c_hba");
 ("content", "g_c_hbb");
 ("content", "benzole_trp");
 ("content", "g_guanidine");
 ("content", "indole_trp");
 ("content", "sidegroup_arginine");
 ("content", "sidegroup_valine");
 ("content", "sidegroup_threonine");
 ("content", "sidegroup_threonine_r");
 ("content", "sidegroup_tryptophan");
 ("content", "benzene");
 ("content", "phenol");
 ("content", "guanidine");
 ("content", "f_glycine");
 ("content", "glycine");
 ("content", "f_glycine_cis");
 ("content", "f_glycine_trans");
 ("content", "glycine_cis");
 ("content", "glycine_trans");
 ("description", "benzole_trp");
 ("description", "benzene");
 ("description", "s_ch2r3_s_chx_s")]
);;

test_number 2 (
Doublet_list_v.filter_if_left (fun s -> s = "type") nam_kin_nam_ent_dol
(* : (string, string) Doublet_list_t.doublet_list *)
=
[("type", "generatorset_item");
 ("type", "grouping_fromid");
 ("type", "molecule_forked_fromid");
 ("type", "molecule_linear_diatomic");
 ("type", "molecule_linear_overdiatomic");
 ("type", "molecule_polymer_fromid");
 ("type", "polypeptide_fromid");]
);;

test_number 3 (
Doublet_list_v.filter_if_left (fun s -> s = "content") nam_kin_nam_ent_dol
(* : (string, string) Doublet_list_t.doublet_list *)
=
[ ("content", "d_c_d");
 ("content", "d_c_ss");
 ("content", "s_c_ds");
 ("content", "s_c_sd");
 ("content", "s_c_sss");
 ("content", "z_c_ssss");
 ("content", "s_c_t");
 ("content", "z_he_z");
 ("content", "z_ne_z");
 ("content", "z_fm1_z");
 ("content", "z_hm1_z");
 ("content", "z_clm1_z");
 ("content", "z_brm1_z");
 ("content", "z_im1_z");
 ("content", "s_be_s");
 ("content", "s_bf_s");
 ("content", "d_nh_z");
 ("content", "z_coh_s");
 ("content", "s_ch2_s");
 ("content", "s_ch_d");
 ("content", "s_ch_ss");
 ("content", "s_nh2_z");
 ("content", "s_nhp1_c");
 ("content", "c_hba_z");
 ("content", "c_hbb_z");
 ("content", "s_hba_z");
 ("content", "s_hbb_z");
 ("content", "z_ch3_s");
 ("content", "z_nh3p1_s");
 ("content", "c_benzene_c");
 ("content", "n_nh2_s_c_sd");
 ("content", "s_nh2_z");
 ("content", "d_nh_z");
 ("content", "s_ch2r3_s_chx_s");
 ("content", "s_ch2r3_s_nhp1_c_c_ss");
 ("content", "z_oh_s_c_cc");
 ("content", "c_chr5_c_hba_z");
 ("content", "f_c_hba");
 ("content", "f_c_hbb");
 ("content", "c_pyrrole_cc");
 ("content", "g_c_hba");
 ("content", "g_c_hbb");
 ("content", "benzole_trp");
 ("content", "g_guanidine");
 ("content", "indole_trp");
 ("content", "sidegroup_arginine");
 ("content", "sidegroup_valine");
 ("content", "sidegroup_threonine");
 ("content", "sidegroup_threonine_r");
 ("content", "sidegroup_tryptophan");
 ("content", "benzene");
 ("content", "phenol");
 ("content", "guanidine");
 ("content", "f_glycine");
 ("content", "glycine");
 ("content", "f_glycine_cis");
 ("content", "f_glycine_trans");
 ("content", "glycine_cis");
 ("content", "glycine_trans");
]
);;
