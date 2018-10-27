open Make_test_v;;

testing "Word_word_string_triplet_list_by_category_trail_provider_v with
   Word_word_string_triplet_list_by_category_trail_provider_u_moleculeset_formula.ml";; 

(* toplevel 
   #use "Word_word_string_triplet_list_by_category_trail_provider_u_moleculeset_formula.ml";; 

*)

let tra_cat = [("category", "formula"); ("domain", "moleculeset")];;
let wws_trl = Word_word_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

let select_left nam dep1 dep2 wol =
  let dep = List.length (String_v.split_of_character_of_string '_'  wol) in
  String.length wol >= (String.length nam) 
    && (String.sub wol 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_singlet nam dep1 dep2 rcd =
  let dep = List.length (String_v.split_of_character_of_string '_' rcd) in
  String.length rcd >= (String.length nam) 
    && (String.sub rcd 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_doublet ent dep1 dep2 dou =
  let (e, s) = dou in
  let dep = List.length (String_v.split_of_character_of_string '_' e) in
  String.length e >= (String.length ent) 
    && (String.sub e 0 (String.length ent) = ent)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_triplet ent dep1 dep2 tri =
  let (k, e, s) = tri in
  (k = "type")
    && (select_entity_off_doublet ent dep1 dep2 (e, s))
;;

let select_kind_off_triplet kin tri =
  Triplet_list_v.filter_if_left (fun k ->k=kin) tri 
;;

test_number 1 (
 select_kind_off_triplet "type" wws_trl
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
[("type", "moleculeset", "grouping molecule");
 ("type", "grouping_fromid", "capped_list fragment:tag grouping:tag");
 ("type", "molecule_forked_fromid",
  "capped_list fragment_head:tag grouping:tag");
 ("type", "molecule_linear_diatomic",
  "capped_list fragment_head:tag grouping:tag");
 ("type", "molecule_linear_overdiatomic",
  "capped_list fragment_head:tag grouping:tag");
 ("type", "molecule_polymer_fromid", "list polymer_subunit:tag");
 ("type", "polypeptide_fromid", "list polypeptide_subunit:tag")]
);;

test_number 2 (
 select_kind_off_triplet "content" wws_trl
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
[("content", "d_c_d", "c_dd"); ("content", "d_c_ss", "c_dss");
 ("content", "s_c_ds", "c_dss"); ("content", "s_c_sd", "c_dss");
 ("content", "s_c_sss", "c_ssss"); ("content", "z_c_ssss", "c_ssss");
 ("content", "s_c_t", "c_ts"); ("content", "z_he_z", "he");
 ("content", "z_ne_z", "ne"); ("content", "z_fm1_z", "fm1");
 ("content", "z_hm1_z", "hm1"); ("content", "z_clm1_z", "clm1");
 ("content", "z_brm1_z", "brm1"); ("content", "z_im1_z", "im1");
 ("content", "s_be_s", "be_ss"); ("content", "s_bf_s", "b_sss  s_f_s");
 ("content", "d_nh_z", "n_sd   h_s");
 ("content", "z_coh_s", "c_ssd  o_d h_s");
 ("content", "s_ch2_s", "c_ssss h_s h_s");
 ("content", "s_ch_d", "c_dss  h_s"); ("content", "s_ch_ss", "c_ssss h_s");
 ("content", "s_nh2_z", "n_sss h_s h_s");
 ("content", "s_nhp1_c", "n_ssc h_s"); ("content", "c_hba_z", "hba_c");
 ("content", "c_hbb_z", "hbb_c"); ("content", "s_hba_z", "hba_s");
 ("content", "s_hbb_z", "hbb_s");
 ("content", "z_ch3_s", "c_ssss h_s h_s h_s");
 ("content", "z_nh3p1_s", "n_ssss h_s h_s h_s");
 ("content", "c_benzene_c", "c_ch_c c_ch_c c_ch_c c_ch_c c_ch_c");
 ("content", "n_nh2_s_c_sd", "n_nh2_s s_c_sd");
 ("content", "s_nh2_z", "s_nh2_z"); ("content", "d_nh_z", "d_nh_z");
 ("content", "s_ch2r3_s_chx_s", "s_ch2_s s_ch2_s s_ch2_s s_chx_s");
 ("content", "s_ch2r3_s_nhp1_c_c_ss",
  "s_ch2_s s_ch2_s s_ch2_s s_nph1_c c_c_ss");
 ("content", "z_oh_s_c_cc", "z_oh_s s_c_cc");
 ("content", "c_chr5_c_hba_z", "c_ch_c c_ch_c c_ch_c c_ch_c c_ch_c c_hba_z");
 ("content", "f_c_hba", "c_hba_z"); ("content", "f_c_hbb", "c_hbb_z");
 ("content", "c_pyrrole_cc", "c_ch_c c_nh_c c_c_cc");
 ("content", "g_c_hba", "f_c_hba"); ("content", "g_c_hbb", "f_c_hbb");
 ("content", "benzole_trp", "c_benzole_trp_cc      g_c_hba        g_c_hbb");
 ("content", "g_guanidine", "s_nh_d_c_ss           s_nh2_z        s_nh2_z");
 ("content", "indole_trp",
  "c_pyrrole_cc          g_c_hbb        g_benzole_trp");
 ("content", "sidegroup_arginine",
  "s_ch2r3_s_nhp1_c_c_ss s_nh2_z        s_nh2_z");
 ("content", "sidegroup_valine", "s_ch_ss:tet_o         s_ch3_z  s_ch3_z");
 ("content", "sidegroup_threonine", "s_ch_ss:tet_o         s_oh_z   s_ch3_z");
 ("content", "sidegroup_threonine_r", "s_ch_ss:tet_o         s_ch3_z  oh_z");
 ("content", "sidegroup_tryptophan",
  "s_ch2_s_ch_cc         f_pyrrole_trp  f_c_hba");
 ("content", "benzene", "c_ch_cc               c_hba_z    c_chr5_c_hba_z");
 ("content", "phenol", "z_oh_s_c_cc           c_hba_z    c_chr5_c_hba_z");
 ("content", "guanidine", "z_nh2_s_c_sd          s_nh2_z    d_nh_z");
 ("content", "f_glycine", "z_oh_s s_co_c c_nh_s s_ch2_z");
 ("content", "glycine", "z_oh_s_co_c_nh_s_ch2_z");
 ("content", "f_glycine_cis", "z_oh_s s_co_v v_nh_s s_ch2_z");
 ("content", "f_glycine_trans", "z_oh_s s_co_u u_nh_s s_ch2_z");
 ("content", "glycine_cis", "z_oh_s_co_v_nh_s_ch2_z");
 ("content", "glycine_trans", "z_oh_s_co_u_nh_s_ch2_z")]
);;

test_number 3 (
List.filter (select_entity_off_triplet "molecule" 0 7) wws_trl
(* : (string, string, string) Triplet_t.triplet list *)
=
[("type", "moleculeset", "grouping molecule");
 ("type", "molecule_forked_fromid",
  "capped_list fragment_head:tag grouping:tag");
 ("type", "molecule_linear_diatomic",
  "capped_list fragment_head:tag grouping:tag");
 ("type", "molecule_linear_overdiatomic",
  "capped_list fragment_head:tag grouping:tag");
 ("type", "molecule_polymer_fromid", "list polymer_subunit:tag")]
);;

test_number 4 (
List.filter (select_entity_off_triplet "grouping" 0 7) wws_trl
(* : (string, string list) Doublet_list_t.doublet_list *)
=
[("type", "grouping_fromid", "capped_list fragment:tag grouping:tag")]
);;

test_number 5 (
List.filter (select_entity_off_triplet "molecule_linear_diatomic" 0 7) wws_trl
(* : (string, string, string) Triplet_t.triplet list *)
  =
[("type", "molecule_linear_diatomic",
  "capped_list fragment_head:tag grouping:tag")]
);;
