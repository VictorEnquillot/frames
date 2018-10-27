(** {3 Test for formula_database_record_list_provider_v} *)

open Make_test_v;;

testing "Formula_database_record_list_provider_v with
   tformula_database_record_list_provider_v.ml";; 

(* toplevel 
   #use "tformula_database_record_list_provider_v.ml";; 
*)

test_number 1 (
Formula_database_record_list_provider_v.provide ()
(* : Formula_database_record_list_provider_v.Record_list_p.record_list *)
=
["block d_c_d = c_dd:lin_c"; "block d_c_ss = c_dss:tpl_c";
 "block s_c_ds = c_dss:tpl_c "; "block s_c_sd  = c_dss:tpl_c";
 "block s_c_sss = c_ssss:tet_c"; "block z_c_ssss = c_ssss:tet_c ";
 "block s_c_t = c_ts:lin_c "; "block s_be_s  = be_ss:lin_c";
 "block s_bf_s  = b_sss:tpl_c  s_f_s:tpl_l";
 "block d_nh_z  = n_sd:tpl_c   h_s:tpl_l";
 "block z_coh_s = c_ssd:tpl_c  o_d:tpl_i h_s:tpl_l ";
 "block s_ch2_s = c_ssss:tet_c h_s:tet_l h_s:tet_r";
 "block s_ch_d  = c_dss:tpl_c  h_s:tpl_l";
 "block s_ch_ss = c_ssss:tet_c h_s:tet_o ";
 "block s_nh2_z = n_sss:tpl_c h_s:tpl_l h_s:tpl_r";
 "block s_nhp1_c                 = n_ssc:tpl_c h_s:tpl_o";
 "block c_hba_z                  = hba_c:mon_c ";
 "block c_hbb_z                  = hbb_c:mon_c ";
 "block s_hba_z                  = hba_s:mon_c ";
 "block s_hbb_z                  = hbb_s:mon_c ";
 "segment c_benzene_c            = c_ch_c c_ch_c c_ch_c c_ch_c c_ch_c ";
 "fragment n_nh2_s_c_sd          = n_nh2_s s_c_sd";
 "fragment s_nh2_z               = s_nh2_z";
 "fragment d_nh_z                = d_nh_z";
 "fragment s_ch2r3_s_chx_s       = s_ch2_s s_ch2_s s_ch2_s s_chx_s ";
 "fragment s_ch2r3_s_nhp1_c_c_ss = s_ch2_s s_ch2_s s_ch2_s s_nph1_c c_c_ss";
 "fragment z_oh_s_c_cc           = z_oh_s s_c_cc";
 "fragment c_chr5_c_hba_z        = c_ch_c c_ch_c c_ch_c c_ch_c c_ch_c c_hba_z";
 "fragment f_c_hba               = c_hba_z";
 "fragment f_c_hbb               = c_hbb_z";
 "fragment c_benzole_trp_cc      = c_ch_c c_ch_c c_ch_c c_ch_c c_ch_c c_c_cc";
 "fragment c_pyrrole_trp_cc      = c_ch_c c_nh_c c_c_cc";
 "fragment z_benzene_z           = z_hba_c c_ch_c c_ch_c c_ch_c c_ch_c c_ch_c c_ch_c _c_hba_z";
 "grouping g_benzole_trp         = f_benzole_trp f_c_hba f_c_hbb";
 "grouping g_guanidine           = s_nh_d_c_ss s_nh2_z s_nh2_z ";
 "grouping g_arginine            = s_ch2r3_s_nhp1_c_c_ss s_nh2_z s_nh2_z ";
 "grouping g_indole_trp          = f_pyrrole_trp f_c_hbb f_benzole_trp";
 "grouping sg_tryptophan         = s_ch2_s_ch_cc f_pyrrole_trp f_c_hba";
 "molecule guanidine             = z_nh2_s_c_sd s_nh2_z d_nh_z";
 "molecule benzene               = z_benzene_z";
 "molecule phenol                = z_oh_s_c_cc c_chr5_c_hba_z c_hba_z";
 "description benzole_trp        = 6C-ring in tryptophan";
 "description benzene            = hba chr6 hba  correct ? linear molecule";
 "description s_ch2r3_s_chx_s    = TriMetheneMethine Proline sidegroup"]
);;

