open Make_test_v;;

testing "Word_list_by_entity_name_n_name_provider_v with
   tword_list_by_entity_name_n_name_provider_v.ml";; 

(* toplevel 
   #use "tword_list_by_entity_name_n_name_provider_v.ml";; 
*)

let reg = Word_list_by_entity_name_n_name_provider_v.word_list_by_entity_name_n_name_register;;

let select_record typ str key_n_val =
  let key = Doublet_v.left_off_doublet key_n_val in
  let k_l = Doublet_v.left_off_doublet key in
  let k_r = Doublet_v.right_off_doublet key in
  let k_r_len = String.length k_r in
  let str_len = String.length str in
  (k_l = typ)
    && 
  ((str_len <= k_r_len) && (String.sub k_r 0 str_len = str))
;;

let initialize = Word_list_by_entity_name_n_name_provider_v.provide ("block", "s_nh2_z")

let key_n_val_l = Register_v.entry_list reg;;

test_number 1 (
List.filter (select_record "block"  "s_") key_n_val_l
(* : ((string * string) * string list) list *)
  =
[(("block", "s_c_sd"), ["c_dss:tpl_c"]);
 (("block", "s_ch_d"), ["c_dss:tpl_c"; "h_s:tpl_l"]);
 (("block", "s_c_sss"), ["c_ssss:tet_c"]);
 (("block", "s_nhp1_c"), ["n_ssc:tpl_c"; "h_s:tpl_o"]);
 (("block", "s_be_s"), ["be_ss:lin_c"]);
 (("block", "s_hba_z"), ["hba_s:mon_c"]);
 (("block", "s_c_ds"), ["c_dss:tpl_c"]);
 (("block", "s_c_t"), ["c_ts:lin_c"]);
 (("block", "s_bf_s"), ["b_sss:tpl_c"; "s_f_s:tpl_l"]);
 (("block", "s_ch2_s"), ["c_ssss:tet_c"; "h_s:tet_l"; "h_s:tet_r"]);
 (("block", "s_nh2_z"), ["n_sss:tpl_c"; "h_s:tpl_l"; "h_s:tpl_r"]);
 (("block", "s_ch_ss"), ["c_ssss:tet_c"; "h_s:tet_o"]);
 (("block", "s_hbb_z"), ["hbb_s:mon_c"])]
);;

test_number 2 (
Word_list_by_entity_name_n_name_provider_v.provide ("block", "s_nh2_z")
(* : string list *)
= 
["n_sss:tpl_c"; "h_s:tpl_l"; "h_s:tpl_r"]
);;

test_number 3 (
List.filter (select_record "fragment"  "s_") key_n_val_l
(* : ((string * string) * string list) list *)
  =
[(("fragment", "s_ch2r3_s_nhp1_c_c_ss"),
  ["s_ch2_s"; "s_ch2_s"; "s_ch2_s"; "s_nph1_c"; "c_c_ss"]);
 (("fragment", "s_nh2_z"), ["s_nh2_z"]);
 (("fragment", "s_ch2r3_s_chx_s"),
  ["s_ch2_s"; "s_ch2_s"; "s_ch2_s"; "s_chx_s"])]
);;

test_number 4 (
Word_list_by_entity_name_n_name_provider_v.provide ("fragment", "s_ch2r3_s_chx_s")
(* : string list *)
= 
["s_ch2_s"; "s_ch2_s"; "s_ch2_s"; "s_chx_s"]
);;

test_number 5 (
List.filter (select_record "molecule"  "p") key_n_val_l
(* : ((string * string) * string list) list *)
  =
[(("molecule", "phenol"), ["z_oh_s_c_cc"; "c_chr5_c_hba_z"; "c_hba_z"])]
);;

test_number 6 (
Word_list_by_entity_name_n_name_provider_v.provide ("molecule", "phenol")
(* : string list *)
= 
["z_oh_s_c_cc"; "c_chr5_c_hba_z"; "c_hba_z"]
);;
