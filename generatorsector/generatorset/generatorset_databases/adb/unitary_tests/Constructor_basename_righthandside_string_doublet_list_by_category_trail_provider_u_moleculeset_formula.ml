open Make_test_v;;

testing "Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v
   Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_u_moleculeset_formula.ml";; 

(* toplevel 
   #use "Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_u_moleculeset_formula.ml";;

*)

let nam_dos = "moleculeset";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;
let tra_kin_typ = Trail_v.make "kind" "type" tra_cat;;
let tra_kin_con = Trail_v.make "kind" "content" tra_cat;;
let tra_kin_des = Trail_v.make "kind" "description" tra_cat;;

let nam_ent_str_dol_typ = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_kin_typ;;
let nam_ent_str_dol_con = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_kin_con;;
let nam_ent_str_dol_des = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_kin_des;;

test_number 1 (
nam_ent_str_dol_typ
(* : (string, string) Doublet_t.doublet list *)
=
[("moleculeset", "grouping molecule");
 ("grouping_fromid", "capped_list fragment:tag grouping:tag");
 ("molecule_forked_fromid", "capped_list fragment_head:tag grouping:tag");
 ("molecule_linear_diatomic", "capped_list fragment_head:tag grouping:tag");
 ("molecule_linear_overdiatomic",
  "capped_list fragment_head:tag grouping:tag");
 ("molecule_polymer_fromid", "list polymer_subunit:tag");
 ("polypeptide_fromid", "list polypeptide_subunit:tag")]
);;

test_number 2 (
nam_ent_str_dol_con
(* : (string, string) Doublet_t.doublet list *)
=
[("d_c_d", "c_dd"); ("d_c_ss", "c_dss"); ("s_c_ds", "c_dss");
 ("s_c_sd", "c_dss"); ("s_c_sss", "c_ssss"); ("z_c_ssss", "c_ssss");
 ("s_c_t", "c_ts"); ("z_he_z", "he"); ("z_ne_z", "ne"); ("z_fm1_z", "fm1");
 ("z_hm1_z", "hm1"); ("z_clm1_z", "clm1"); ("z_brm1_z", "brm1");
 ("z_im1_z", "im1"); ("s_be_s", "be_ss"); ("s_bf_s", "b_sss  s_f_s");
 ("d_nh_z", "n_sd   h_s"); ("z_coh_s", "c_ssd  o_d h_s");
 ("s_ch2_s", "c_ssss h_s h_s"); ("s_ch_d", "c_dss  h_s");
 ("s_ch_ss", "c_ssss h_s"); ("s_nh2_z", "n_sss h_s h_s");
 ("s_nhp1_c", "n_ssc h_s"); ("c_hba_z", "hba_c"); ("c_hbb_z", "hbb_c");
 ("s_hba_z", "hba_s"); ("s_hbb_z", "hbb_s");
 ("z_ch3_s", "c_ssss h_s h_s h_s"); ("z_nh3p1_s", "n_ssss h_s h_s h_s");
 ("c_benzene_c", "c_ch_c c_ch_c c_ch_c c_ch_c c_ch_c");
 ("n_nh2_s_c_sd", "n_nh2_s s_c_sd"); ("s_nh2_z", "s_nh2_z");
 ("d_nh_z", "d_nh_z");
 ("s_ch2r3_s_chx_s", "s_ch2_s s_ch2_s s_ch2_s s_chx_s");
 ("s_ch2r3_s_nhp1_c_c_ss", "s_ch2_s s_ch2_s s_ch2_s s_nph1_c c_c_ss");
 ("z_oh_s_c_cc", "z_oh_s s_c_cc");
 ("c_chr5_c_hba_z", "c_ch_c c_ch_c c_ch_c c_ch_c c_ch_c c_hba_z");
 ("f_c_hba", "c_hba_z"); ("f_c_hbb", "c_hbb_z");
 ("c_pyrrole_cc", "c_ch_c c_nh_c c_c_cc"); ("g_c_hba", "f_c_hba");
 ("g_c_hbb", "f_c_hbb");
 ("benzole_trp", "c_benzole_trp_cc      g_c_hba        g_c_hbb");
 ("g_guanidine", "s_nh_d_c_ss           s_nh2_z        s_nh2_z");
 ("indole_trp", "c_pyrrole_cc          g_c_hbb        g_benzole_trp");
 ("sidegroup_arginine", "s_ch2r3_s_nhp1_c_c_ss s_nh2_z        s_nh2_z");
 ("sidegroup_valine", "s_ch_ss:tet_o         s_ch3_z  s_ch3_z");
 ("sidegroup_threonine", "s_ch_ss:tet_o         s_oh_z   s_ch3_z");
 ("sidegroup_threonine_r", "s_ch_ss:tet_o         s_ch3_z  oh_z");
 ("sidegroup_tryptophan", "s_ch2_s_ch_cc         f_pyrrole_trp  f_c_hba");
 ("benzene", "c_ch_cc               c_hba_z    c_chr5_c_hba_z");
 ("phenol", "z_oh_s_c_cc           c_hba_z    c_chr5_c_hba_z");
 ("guanidine", "z_nh2_s_c_sd          s_nh2_z    d_nh_z");
 ("f_glycine", "z_oh_s s_co_c c_nh_s s_ch2_z");
 ("glycine", "z_oh_s_co_c_nh_s_ch2_z");
 ("f_glycine_cis", "z_oh_s s_co_v v_nh_s s_ch2_z");
 ("f_glycine_trans", "z_oh_s s_co_u u_nh_s s_ch2_z");
 ("glycine_cis", "z_oh_s_co_v_nh_s_ch2_z");
 ("glycine_trans", "z_oh_s_co_u_nh_s_ch2_z")]
);;

test_number 3 (
nam_ent_str_dol_des
(* : (string, string) Doublet_t.doublet list *)
=
[("protein", "a pure example for a description");
 ("benzole_trp", "6C-ring in tryptophan");
 ("benzene", "hba chr6 hba  correct ? linear content molecule");
 ("s_ch2r3_s_chx_s", "TriMetheneMethine Proline sidegroup")]
);;
