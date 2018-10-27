
open Make_test_v;;

testing "Constructor_node_basename_list_by_category_trail_provider_v with
   Constructor_node_basename_list_by_category_trail_provider_u_moleculeset_formula.ml";; 

(* toplevel 
   #use "Constructor_node_basename_list_by_category_trail_provider_u_moleculeset_formula.ml";; 

*)

let nam_dos = "moleculeset";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;
let tra_kin_typ = Trail_v.make "kind" "type" tra_cat;;
let tra_kin_con = Trail_v.make "kind" "content" tra_cat;;
let tra_kin_des = Trail_v.make "kind" "description" tra_cat;;

let nam_ent_l_typ = Constructor_node_basename_list_by_category_trail_provider_v.provide tra_kin_typ;;
let nam_ent_l_con = Constructor_node_basename_list_by_category_trail_provider_v.provide tra_kin_con;;
let nam_ent_l_des = Constructor_node_basename_list_by_category_trail_provider_v.provide tra_kin_des;;

test_number 1 (
nam_ent_l_typ
(* : string list *)
=
["moleculeset"; "grouping_fromid"; "molecule_forked_fromid";
 "molecule_linear_diatomic"; "molecule_linear_overdiatomic";
 "molecule_polymer_fromid"; "polypeptide_fromid"]
);;

test_number 2 (
nam_ent_l_con
(* : string list *)
  =
["d_c_d"; "d_c_ss"; "s_c_ds"; "s_c_sd"; "s_c_sss"; "z_c_ssss"; "s_c_t";
 "z_he_z"; "z_ne_z"; "z_fm1_z"; "z_hm1_z"; "z_clm1_z"; "z_brm1_z"; "z_im1_z";
 "s_be_s"; "s_bf_s"; "d_nh_z"; "z_coh_s"; "s_ch2_s"; "s_ch_d"; "s_ch_ss";
 "s_nh2_z"; "s_nhp1_c"; "c_hba_z"; "c_hbb_z"; "s_hba_z"; "s_hbb_z";
 "z_ch3_s"; "z_nh3p1_s"; "c_benzene_c"; "n_nh2_s_c_sd"; "s_nh2_z"; "d_nh_z";
 "s_ch2r3_s_chx_s"; "s_ch2r3_s_nhp1_c_c_ss"; "z_oh_s_c_cc"; "c_chr5_c_hba_z";
 "f_c_hba"; "f_c_hbb"; "c_pyrrole_cc"; "g_c_hba"; "g_c_hbb"; "benzole_trp";
 "g_guanidine"; "indole_trp"; "sidegroup_arginine"; "sidegroup_valine";
 "sidegroup_threonine"; "sidegroup_threonine_r"; "sidegroup_tryptophan";
 "benzene"; "phenol"; "guanidine"; "f_glycine"; "glycine"; "f_glycine_cis";
 "f_glycine_trans"; "glycine_cis"; "glycine_trans"]
);;

test_number 3 (
nam_ent_l_des
(* : string list *)
  =
  ["protein"; "benzole_trp"; "benzene"; "s_ch2r3_s_chx_s"]
);;
