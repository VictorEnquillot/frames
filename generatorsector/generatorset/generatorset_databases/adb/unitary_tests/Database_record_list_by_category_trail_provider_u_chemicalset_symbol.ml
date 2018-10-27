open Make_test_v;;

testing "Database_record_list_by_category_trail_provider_v with
   Database_record_list_by_category_trail_provider_u_chemicalset_symbol.ml";; 

(* toplevel 
   #use "Database_record_list_by_category_trail_provider_u_chemicalset_symbol.ml";; 

*)

let tra_cat = [("category", "symbol"); ("domain", "chemicalset")];;

let fin = Database_filename_by_category_trail_provider_v.provide tra_cat;;
let str_l = File_v.read_string_list_of_filename fin;;
let r_l = Database_record_list_by_category_trail_provider_v.read_non_empty_record_list_of_filename fin;;
let rcd_l = Database_record_list_by_category_trail_provider_v.provide tra_cat;;

let select nam dep1 dep2 rcd =
  let w1 = List.hd (String_v.split_of_character_of_string '=' rcd) in
  let str = List.nth (String_v.split_of_character_of_string ' ' w1) 1  in
  let dep = List.length (String_v.split_of_character_of_string '_' str) in
  String.length str >= (String.length nam) 
    && (String.sub str 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_by_left_word rcd_l wor =
  List.filter (fun s -> String.sub s 0 (String.length wor) = wor) rcd_l
;;

test_number 1 (
List.filter (select "chemicalset" 0 4) rcd_l
=
["type chemicalset = atom block bond bridge chain cluster coffer fragment grouping mendeleev molecule polypeptide_subunit segment"]
);;

test_number 2 (
List.filter (select "atom" 0 7) rcd_l
(* : string list *)
=["type atom = atom_zerotied atom_onetied atom_core ";
 "type atom_zerotied = atom_zerotied_anion atom_zerotied_cation atom_zerotied_raregas atom_zerotied_halfbridge";
 "type atom_zerotied_anion = atom_zerotied_anion_minusone atom_zerotied_anion_minustwo";
 "type atom_zerotied_anion_minusone = fm1 hm1 clm1 brm1 im1";
 "type atom_zerotied_anion_minustwo = om2 sm2";
 "type atom_zerotied_cation = atom_zerotied_cation_plusone atom_zerotied_cation_plustwo atom_zerotied_cation_plusthree";
 "type atom_zerotied_cation_plusone = hp1 kp1 lip1 nap1 nip1 cup1";
 "type atom_zerotied_cation_plustwo = mgp2 cap2 fep2 znp2 cup2";
 "type atom_zerotied_cation_plusthree = fep3 nip3";
 "type atom_zerotied_raregas = ar he kr ne xe";
 "type atom_zerotied_halfbridge = hb_s hb_c hb_d hb_t";
 "type atom_onetied = atom_onetied_single atom_onetied_conjugated atom_onetied_double atom_onetied_triple";
 "type atom_onetied_single = z_h_s z_f_s z_s_s";
 "type atom_onetied_conjugated_ax1en_diatomic = z_o_c";
 "type atom_onetied_double = z_o_d";
 "type atom_onetied_triple = z_c_t z_n_t z_o_t z_s_t";
 "type atom_core = atom_core_twotied atom_core_threetied atom_core_fourtied atom_core_fivetied atom_core_sixtied";
 "type atom_core_twotied = atom_core_singlesingle atom_core_singleconjugated atom_core_singledouble atom_core_singletriple atom_core_conjugatedconjugated atom_core_conjugateddouble atom_core_doubledouble";
 "type atom_core_singlesingle = atom_core_singlesingle_ax1 atom_core_singlesingle_ax2 ";
 "type atom_core_singlesingle_ax1 = atom_core_singlesingle_ax1en_diatomic ";
 "type atom_core_singlesingle_ax1en_diatomic = atom_core_singlesingle_ax1en_diatomic_fromid";
 "type atom_core_singlesingle_ax1en_diatomic_fromid = string";
 "type atom_core_singlesingle_ax2 = atom_core_singlesingle_ax2e0_linear atom_core_singlesingle_ax2e0_bent atom_core_singlesingle_ax2e3_linear ";
 "type atom_core_singlesingle_ax2e0_linear = s_be_s s_hg_s ";
 "type atom_core_singlesingle_ax2e0_bent = s_o_s s_s_s ";
 "type atom_core_singlesingle_ax2e3_linear = s_im1_s s_xe_s";
 "type atom_core_singleconjugated = s_n_c s_o_c";
 "type atom_core_singledouble = s_n_d";
 "type atom_core_singletriple_ax2 = atom_core_singletriple_ax2e0_linear";
 "type atom_core_singletriple_ax2e0_linear = s_c_t s_np1_t";
 "type atom_core_conjugatedconjugated = atom_core_conjugatedconjugated_ax2";
 "type atom_core_conjugatedconjugated_ax2 = atom_core_conjugatedconjugated_ax2e0_linear";
 "type atom_core_conjugatedconjugated_ax2e0_linear = c_n_c c_o_c";
 "type atom_core_conjugateddouble = atom_core_conjugateddouble_ax2";
 "type atom_core_conjugateddouble_ax2 = atom_core_conjugateddouble_ax2e0_linear";
 "type atom_core_conjugateddouble_ax2e0_linear = c_c_d";
 "type atom_core_doubledouble = atom_core_doubledouble_ax2";
 "type atom_core_doubledouble_ax2 = atom_core_doubledouble_ax2_linear";
 "type atom_core_doubledouble_ax2_linear = d_c_d d_np1_d d_s_d";
 "type atom_core_threetied = atom_core_threetied_singlesinglesingle atom_core_threetied_singlesingledouble atom_core_threetied_singleconjugatedconjugated atom_core_threetied_conjugatedconjugatedconjugated atom_core_threetied_doubledoubledouble";
 "type atom_core_threetied_singlesinglesingle = s_n_ss s_cl_ss";
 "type atom_core_threetied_singlesingledouble = s_c_sd s_n_sd s_s_sd";
 "type atom_core_threetied_singleconjugatedconjugated = s_c_cc s_n_cc";
 "type atom_core_threetied_conjugatedconjugatedconjugated = c_c_cc c_n_cc";
 "type atom_core_threetied_doubledoubledouble = d_s_dd";
 "type atom_core_singledoublesingle = atom_core_singledoublesingle_ax3";
 "type atom_core_singledoublesingle_ax3 = atom_core_singledoublesingle_ax3e0_trigonalplanar";
 "type atom_core_singledoublesingle_ax3e0_trigonalplanar = s_c_ds";
 "type atom_core_doublesinglesingle_ax3e0_trigonalplanar = d_c_ss d_np1_ss";
 "type atom_core_fourtied = s_c_sss s_n_sss s_s_sss s_xe_sss";
 "type atom_core_singlesinglesinglesingle_ax4e1_tetrahedral = s_c_sss s_np1_sss ";
 "type atom_core_fivetied = s_cl_ssss"; "type atom_core_sixtied = s_s_sssss"]
);;

test_number 3 (
select_by_left_word rcd_l "description"
(* : string list *)
=
["description s_s     = in shm1 (HS- anion hydrogen sulfide)";
 "description np1_sss = -N< Nh3 molecule Trigonal_pyramidal";
 "description cl_sss = ClF3 molecule Tshaped";
 "description z_nh2_c = [H2N-C<NH2 NH2]+ in Guanidinium Conjugation for the 3 N-C";
 "description s_nh_c  = Nh in peptide group";
 "description z_ch4_z   = methane";
 "description z_coh2_z  = methanal or formaldehyde";
 "description z_cho2m_z = formate_anion (Cdss 0_d Om1_s H_s)";
 "description z_co_z    = carbon_monoxide ";
 "description z_cs_z    = carbon_monosulfide ";
 "description z_nh3_z   = ammonia"; "description z_nh4p1_z = ammonium";
 "description z_no2m1_z = nitrite anion";
 "description z_no_z    = nitric_acid"; "description z_oh2_z   = water";
 "description z_ohm1_z  = hydroxide_anion OH-";
 "description z_ch3_s   = methyl";
 "description z_co2m1_s = carboxylate anion planar";
 "description z_co_s    = CO- in Co2";
 "description z_coh_s   = ??? in formic acid";
 "description z_nh2_s   = primary_amine pyramidal H2N-";
 "description z_nh3p1_s = ammonium NH3+";
 "description z_no2_s   = in nitromethane no2Ch3";
 "description z_oh_s    = hydroxyl "; "description z_nh_d    = ???_amine";
 "description z_nh2p1_d = ???"; "description s_nh2_z   = amine at leaf";
 "description s_co_s    = carbonyl ";
 "description z_ch3_s_c_h_         = Ch3Ch< Ethyl head     ";
 "description z_C_h_3C_h_2C_h_     = Ch3Ch2Ch< Propyl head     ";
 "description z_C_h_3C_h_2r2C_h_   = Ch3Ch2Ch2Ch< Propyl head     ";
 "description z_C_h_3CcocNch_C_h_  = Ch3CoNhCh<     ";
 "description z_Ccoc2C_h_          = CooCh_< acid C terminal for molecules AcidMethine ";
 "description z_n_h_2Cd            = Nh2-Cd< Guanidine largest weight on top ";
 "description z_Ndh_Cd             = Nh==C< Guanidine (other version) ";
 "description z_Noh_2Cd            = Nh2==C< cation ";
 "description z_O_h_Cc             = OhCc< Phenol ";
 "description z_O_h_CdodC_h_       = OhCoCh< Carboxylmethine Head of Aminoacids ";
 "description s_ch2_s_nh_c_co_s     = capeptide CaNhCo";
 "description s_co_c_nh_s_ch2_s     = peptideca CoNhCa";
 "description z_nh2_s_ch_ss         = peptideca nterminal neutral ";
 "description z_nh3p1_s_ch_ss       = peptideca nterminal cation ";
 "description z_ch3_s_co2m1_z       = acetate_anion Ch3Co2-    ";
 "description z_ch3_s_co_s_oh_z     = acetic_acid Ch3CoOh     ";
 "description z_ch3_s_oh_z          = methanol         ";
 "description z_ch3_s_ch2_s_ch3_z   = propane          ";
 "description z_ch3_s_ch2_sr2_ch3_z = butane           ";
 "description z_ch3_sr2_z           = ethane           ";
 "description z_ch2_s_ch2_z         = ethene_triplet H2C.-.CH2  ??? ";
 "description z_ch2_d_ch2_z         = ethene_singlet H2C=CH2   ";
 "description z_coh_s_oh_z          = formic_acid      ";
 "description z_ch_t_ch_z           = acetylene      HC#CH     ";
 "description z_no2_s_no_z          = nitrogen_trioxide N2O3 O=N-N<O2 Planar Cs (Smiles : [O-][N+](=O)N=O)";
 "description z_oh_s_co_s_ch2_s_nh2_z = glycine molecule";
 "description z_co2m1_s_ch2_s_nh3p1_z = glycine zwiterion";
 "description z_nh2_s_c_sd            = head of guanidine";
 "description c_ch_cr5_bc             = benzene_c5_ring";
 "description hb_s_nh_s_ch2_sr3_s_ch_s = proline nterminal";
 "description z_oh_s_co_s_ch_s_ch2_sr3_nh_s_bh = proline molecule"]
);;

