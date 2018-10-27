(** {3 Molecule_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Molecule_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Molecule_symbol_t.Zerotied_atom_symbol sym_zat ->
    Zerotied_atom_symbol_v.name sym_zat
  | Molecule_symbol_t.Zerotied_block_symbol sym_zbl ->
    Zerotied_block_symbol_v.name sym_zbl
  | Molecule_symbol_t.Zerotied_fragment_symbol sym_zfr ->
    Zerotied_fragment_symbol_v.name sym_zfr
  | Molecule_symbol_t.Zerotied_forked_symbol sym_zfo ->
    Zerotied_forked_symbol_v.name sym_zfo
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Molecule_symbol_t.Zerotied_atom_symbol sym_zat ->
  Zerotied_atom_symbol_v.string_off sym_zat
  | Molecule_symbol_t.Zerotied_block_symbol sym_zbl ->
  Zerotied_block_symbol_v.string_off sym_zbl
  | Molecule_symbol_t.Zerotied_fragment_symbol sym_zfr ->
  Zerotied_fragment_symbol_v.string_off sym_zfr
  | Molecule_symbol_t.Zerotied_forked_symbol sym_zfo ->
  Zerotied_forked_symbol_v.string_off sym_zfo
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_mol =
  Format.sprintf "Molecule_symbol_t.%s" (String.capitalize (name sym_mol))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_mol =
  Format.sprintf "%s \"%s\"" (longname sym_mol) (string_off sym_mol)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let zerotied_atom_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Zerotied_atom_symbol sym_zat -> sym_zat
  | sym_mol -> Error_messages_v.print_fatal_error
      nam_cod "zerotied_atom_symbol_off_molecule_symbol"
      "Zerotied_atom_symbol"
      (name sym_mol) "check"
;;

let zerotied_block_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Zerotied_block_symbol sym_zbl -> sym_zbl
  | sym_mol -> Error_messages_v.print_fatal_error
      nam_cod "zerotied_block_symbol_off_molecule_symbol"
      "Zerotied_block_symbol"
      (name sym_mol) "check"
;;

let zerotied_fragment_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Zerotied_fragment_symbol sym_zfr -> sym_zfr
  | sym_mol -> Error_messages_v.print_fatal_error
      nam_cod "zerotied_fragment_symbol_off_molecule_symbol"
      "Zerotied_fragment_symbol"
      (name sym_mol) "check"
;;

let zerotied_forked_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Zerotied_forked_symbol sym_zfo -> sym_zfo
  | sym_mol -> Error_messages_v.print_fatal_error
      nam_cod "zerotied_forked_symbol_off_molecule_symbol"
      "Zerotied_forked_symbol"
      (name sym_mol) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let zerotied_block_none_none_ax1_symbol_off_molecule_symbol sym_mol = 
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax1_symbol_off_zerotied_block_symbol sym_zbl
;;

let zerotied_block_none_none_ax2_symbol_off_molecule_symbol sym_mol = 
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax2_symbol_off_zerotied_block_symbol sym_zbl
;;

let zerotied_block_none_none_ax2e0_linear_symbol_off_molecule_symbol sym_mol = 
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax2e0_linear_symbol_off_zerotied_block_symbol sym_zbl
;;

let zerotied_block_none_none_ax2e1_bent_symbol_off_molecule_symbol sym_mol = 
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax2e1_bent_symbol_off_zerotied_block_symbol sym_zbl
;;

let zerotied_block_none_none_ax2e2_bent_symbol_off_molecule_symbol sym_mol = 
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax2e2_bent_symbol_off_zerotied_block_symbol sym_zbl
;;

let zerotied_block_none_none_ax2e3_linear_symbol_off_molecule_symbol sym_mol = 
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax2e3_linear_symbol_off_zerotied_block_symbol sym_zbl
;;

let zerotied_block_none_none_ax3_symbol_off_molecule_symbol sym_mol = 
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax3_symbol_off_zerotied_block_symbol sym_zbl
;;

let zerotied_block_none_none_ax3e0_trigonalplanar_symbol_off_molecule_symbol sym_mol = 
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax3e0_trigonalplanar_symbol_off_zerotied_block_symbol sym_zbl
;;

let zerotied_block_none_none_ax3e1_trigonalpyramidal_symbol_off_molecule_symbol sym_mol = 
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax3e1_trigonalpyramidal_symbol_off_zerotied_block_symbol sym_zbl
;;

let zerotied_block_none_none_ax4_symbol_off_molecule_symbol sym_mol = 
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax4_symbol_off_zerotied_block_symbol sym_zbl
;;

let zerotied_block_none_none_ax4e1_tetrahedral_symbol_off_molecule_symbol sym_mol = 
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax4e1_tetrahedral_symbol_off_zerotied_block_symbol sym_zbl
;;

let zerotied_fragment_twoblocks_symbol_off_molecule_symbol sym_mol = 
  let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
    Zerotied_fragment_symbol_v.zerotied_fragment_twoblocks_symbol_off_zerotied_fragment_symbol sym_zfr
;;

let zerotied_fragment_threeblocks_symbol_off_molecule_symbol sym_mol = 
  let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
    Zerotied_fragment_symbol_v.zerotied_fragment_threeblocks_symbol_off_zerotied_fragment_symbol sym_zfr
;;

let zerotied_fragment_fourblocks_symbol_off_molecule_symbol sym_mol = 
  let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
    Zerotied_fragment_symbol_v.zerotied_fragment_fourblocks_symbol_off_zerotied_fragment_symbol sym_zfr
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_zerotied_atom_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Zerotied_atom_symbol _ -> true
  | _ -> false
;;

let is_zerotied_block_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Zerotied_block_symbol _ -> true
  | _ -> false
;;

let is_zerotied_fragment_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Zerotied_fragment_symbol _ -> true
  | _ -> false
;;

let is_zerotied_forked_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Zerotied_forked_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_ar sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_ar sym_zat
    end
;;

let is_brm1 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_brm1 sym_zat
    end
;;

let is_cap2 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_cap2 sym_zat
    end
;;

let is_clm1 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_clm1 sym_zat
    end
;;

let is_cup1 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_cup1 sym_zat
    end
;;

let is_cup2 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_cup2 sym_zat
    end
;;

let is_fep2 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_fep2 sym_zat
    end
;;

let is_fep3 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_fep3 sym_zat
    end
;;

let is_fm1 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_fm1 sym_zat
    end
;;

let is_he sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_he sym_zat
    end
;;

let is_hm1 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_hm1 sym_zat
    end
;;

let is_hp1 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_hp1 sym_zat
    end
;;

let is_im1 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_im1 sym_zat
    end
;;

let is_kp1 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_kp1 sym_zat
    end
;;

let is_kr sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_kr sym_zat
    end
;;

let is_lip1 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_lip1 sym_zat
    end
;;

let is_mgp2 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_mgp2 sym_zat
    end
;;

let is_nap1 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_nap1 sym_zat
    end
;;

let is_ne sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_ne sym_zat
    end
;;

let is_nip1 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_nip1 sym_zat
    end
;;

let is_nip3 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_nip3 sym_zat
    end
;;

let is_om2 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_om2 sym_zat
    end
;;

let is_sm2 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_sm2 sym_zat
    end
;;

let is_xe sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_xe sym_zat
    end
;;

let is_znp2 sym_mol =
  if not (is_zerotied_atom_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zat = zerotied_atom_symbol_off_molecule_symbol sym_mol in
      Zerotied_atom_symbol_v.is_znp2 sym_zat
    end
;;

let is_z_cnm1_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_cnm1_z sym_zbl
    end
;;

let is_z_co_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_co_z sym_zbl
    end
;;

let is_z_cs_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_cs_z sym_zbl
    end
;;

let is_z_fh_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_fh_z sym_zbl
    end
;;

let is_z_no_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_no_z sym_zbl
    end
;;

let is_z_nop1_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_nop1_z sym_zbl
    end
;;

let is_z_ohm1_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_ohm1_z sym_zbl
    end
;;

let is_z_becl2_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_becl2_z sym_zbl
    end
;;

let is_z_co2_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_co2_z sym_zbl
    end
;;

let is_z_hgcl2_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_hgcl2_z sym_zbl
    end
;;

let is_z_so2_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_so2_z sym_zbl
    end
;;

let is_z_o3_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_o3_z sym_zbl
    end
;;

let is_z_ccl2_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_ccl2_z sym_zbl
    end
;;

let is_z_no2m1_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_no2m1_z sym_zbl
    end
;;

let is_z_of2_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_of2_z sym_zbl
    end
;;

let is_z_oh2_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_oh2_z sym_zbl
    end
;;

let is_z_sh2_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_sh2_z sym_zbl
    end
;;

let is_z_i3m1_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_i3m1_z sym_zbl
    end
;;

let is_z_krf2_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_krf2_z sym_zbl
    end
;;

let is_z_xef2_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_xef2_z sym_zbl
    end
;;

let is_z_xecl2_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_xecl2_z sym_zbl
    end
;;

let is_z_coh2_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_coh2_z sym_zbl
    end
;;

let is_z_cho2m1_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_cho2m1_z sym_zbl
    end
;;

let is_z_nh3_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_nh3_z sym_zbl
    end
;;

let is_z_ch4_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_ch4_z sym_zbl
    end
;;

let is_z_nh4p1_z sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
      Zerotied_block_symbol_v.is_z_nh4p1_z sym_zbl
    end
;;

let is_z_ch2_d_ch2_z sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
      Zerotied_fragment_symbol_v.is_z_ch2_d_ch2_z sym_zfr
    end
;;

let is_z_ch2_s_ch2_z sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
      Zerotied_fragment_symbol_v.is_z_ch2_s_ch2_z sym_zfr
    end
;;

let is_z_ch3_s_ch3_z sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
      Zerotied_fragment_symbol_v.is_z_ch3_s_ch3_z sym_zfr
    end
;;

let is_z_ch3_s_co2m1_z sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
      Zerotied_fragment_symbol_v.is_z_ch3_s_co2m1_z sym_zfr
    end
;;

let is_z_ch3_s_oh_z sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
      Zerotied_fragment_symbol_v.is_z_ch3_s_oh_z sym_zfr
    end
;;

let is_z_ch_t_ch_z sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
      Zerotied_fragment_symbol_v.is_z_ch_t_ch_z sym_zfr
    end
;;

let is_z_coh_s_oh_z sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
      Zerotied_fragment_symbol_v.is_z_coh_s_oh_z sym_zfr
    end
;;

let is_z_zo2_s_zo_z sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
      Zerotied_fragment_symbol_v.is_z_zo2_s_zo_z sym_zfr
    end
;;

let is_z_ch3_s_ch2_s_ch3_z sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
      Zerotied_fragment_symbol_v.is_z_ch3_s_ch2_s_ch3_z sym_zfr
    end
;;

let is_z_ch3_s_co_s_oh_z sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
      Zerotied_fragment_symbol_v.is_z_ch3_s_co_s_oh_z sym_zfr
    end
;;

let is_z_co2m1_s_ch2_s_nh3p1_z sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
      Zerotied_fragment_symbol_v.is_z_co2m1_s_ch2_s_nh3p1_z sym_zfr
    end
;;

let is_z_ch3_s_r2_ch2_s_2r_s_ch3_z sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
      Zerotied_fragment_symbol_v.is_z_ch3_s_r2_ch2_s_2r_s_ch3_z sym_zfr
    end
;;

let is_z_oh_s_co_s_ch2_s_nh2_z sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
      Zerotied_fragment_symbol_v.is_z_oh_s_co_s_ch2_s_nh2_z sym_zfr
    end
;;

let is_z_ch3_s_ch_le_s_ch3_z_ri_s_nh2_z sym_mol =
  if not (is_zerotied_forked_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zfo = zerotied_forked_symbol_off_molecule_symbol sym_mol in
      Zerotied_forked_symbol_v.is_z_ch3_s_ch_le_s_ch3_z_ri_s_nh2_z sym_zfo
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_zerotied_forked_constructor sym_mol =
  if not (is_zerotied_forked_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
      let sym_zfo = zerotied_forked_symbol_off_molecule_symbol sym_mol in
      Zerotied_forked_symbol_v.is_zerotied_forked_constructor sym_zfo
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_zerotied_block_none_none_ax1_symbol_off_molecule_symbol sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax1_symbol_off_zerotied_block_symbol sym_zbl
    end
;;

let is_zerotied_block_none_none_ax2_symbol_off_molecule_symbol sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax2_symbol_off_zerotied_block_symbol sym_zbl
    end
;;

let is_zerotied_block_none_none_ax2e0_linear_symbol_off_molecule_symbol sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax2e0_linear_symbol_off_zerotied_block_symbol sym_zbl
    end
;;

let is_zerotied_block_none_none_ax2e1_bent_symbol_off_molecule_symbol sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax2e1_bent_symbol_off_zerotied_block_symbol sym_zbl
    end
;;

let is_zerotied_block_none_none_ax2e2_bent_symbol_off_molecule_symbol sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax2e2_bent_symbol_off_zerotied_block_symbol sym_zbl
    end
;;

let is_zerotied_block_none_none_ax2e3_linear_symbol_off_molecule_symbol sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax2e3_linear_symbol_off_zerotied_block_symbol sym_zbl
    end
;;

let is_zerotied_block_none_none_ax3_symbol_off_molecule_symbol sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax3_symbol_off_zerotied_block_symbol sym_zbl
    end
;;

let is_zerotied_block_none_none_ax3e0_trigonalplanar_symbol_off_molecule_symbol sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax3e0_trigonalplanar_symbol_off_zerotied_block_symbol sym_zbl
    end
;;

let is_zerotied_block_none_none_ax3e1_trigonalpyramidal_symbol_off_molecule_symbol sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax3e1_trigonalpyramidal_symbol_off_zerotied_block_symbol sym_zbl
    end
;;

let is_zerotied_block_none_none_ax4_symbol_off_molecule_symbol sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax4_symbol_off_zerotied_block_symbol sym_zbl
    end
;;

let is_zerotied_block_none_none_ax4e1_tetrahedral_symbol_off_molecule_symbol sym_mol =
  if not (is_zerotied_block_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_molecule_symbol sym_mol in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax4e1_tetrahedral_symbol_off_zerotied_block_symbol sym_zbl
    end
;;

let is_zerotied_fragment_twoblocks_symbol_off_molecule_symbol sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
  let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
  Zerotied_fragment_symbol_v.is_zerotied_fragment_twoblocks_symbol_off_zerotied_fragment_symbol sym_zfr
    end
;;

let is_zerotied_fragment_threeblocks_symbol_off_molecule_symbol sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
  let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
  Zerotied_fragment_symbol_v.is_zerotied_fragment_threeblocks_symbol_off_zerotied_fragment_symbol sym_zfr
    end
;;

let is_zerotied_fragment_fourblocks_symbol_off_molecule_symbol sym_mol =
  if not (is_zerotied_fragment_symbol_off_molecule_symbol sym_mol)
  then false
  else
    begin
  let sym_zfr = zerotied_fragment_symbol_off_molecule_symbol sym_mol in
  Zerotied_fragment_symbol_v.is_zerotied_fragment_fourblocks_symbol_off_zerotied_fragment_symbol sym_zfr
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let molecule_symbol_of_zerotied_atom_symbol sym_zat = 
  Molecule_symbol_t.Zerotied_atom_symbol sym_zat
;;

let molecule_symbol_of_zerotied_block_symbol sym_zbl = 
  Molecule_symbol_t.Zerotied_block_symbol sym_zbl
;;

let molecule_symbol_of_zerotied_fragment_symbol sym_zfr = 
  Molecule_symbol_t.Zerotied_fragment_symbol sym_zfr
;;

let molecule_symbol_of_zerotied_forked_symbol sym_zfo = 
  Molecule_symbol_t.Zerotied_forked_symbol sym_zfo
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let molecule_symbol_of_zerotied_block_none_none_ax1_symbol sym_0na = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax1_symbol sym_0na in
    molecule_symbol_of_zerotied_block_symbol sym_zbl
;;

let molecule_symbol_of_zerotied_block_none_none_ax2_symbol sym_0na = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax2_symbol sym_0na in
    molecule_symbol_of_zerotied_block_symbol sym_zbl
;;

let molecule_symbol_of_zerotied_block_none_none_ax2e0_linear_symbol sym_0al = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax2e0_linear_symbol sym_0al in
    molecule_symbol_of_zerotied_block_symbol sym_zbl
;;

let molecule_symbol_of_zerotied_block_none_none_ax2e1_bent_symbol sym_0ab = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax2e1_bent_symbol sym_0ab in
    molecule_symbol_of_zerotied_block_symbol sym_zbl
;;

let molecule_symbol_of_zerotied_block_none_none_ax2e2_bent_symbol sym_0ab = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax2e2_bent_symbol sym_0ab in
    molecule_symbol_of_zerotied_block_symbol sym_zbl
;;

let molecule_symbol_of_zerotied_block_none_none_ax2e3_linear_symbol sym_0al = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax2e3_linear_symbol sym_0al in
    molecule_symbol_of_zerotied_block_symbol sym_zbl
;;

let molecule_symbol_of_zerotied_block_none_none_ax3_symbol sym_0na = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax3_symbol sym_0na in
    molecule_symbol_of_zerotied_block_symbol sym_zbl
;;

let molecule_symbol_of_zerotied_block_none_none_ax3e0_trigonalplanar_symbol sym_0at = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax3e0_trigonalplanar_symbol sym_0at in
    molecule_symbol_of_zerotied_block_symbol sym_zbl
;;

let molecule_symbol_of_zerotied_block_none_none_ax3e1_trigonalpyramidal_symbol sym_0at = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax3e1_trigonalpyramidal_symbol sym_0at in
    molecule_symbol_of_zerotied_block_symbol sym_zbl
;;

let molecule_symbol_of_zerotied_block_none_none_ax4_symbol sym_0na = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax4_symbol sym_0na in
    molecule_symbol_of_zerotied_block_symbol sym_zbl
;;

let molecule_symbol_of_zerotied_block_none_none_ax4e1_tetrahedral_symbol sym_0at = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax4e1_tetrahedral_symbol sym_0at in
    molecule_symbol_of_zerotied_block_symbol sym_zbl
;;

let molecule_symbol_of_zerotied_fragment_twoblocks_symbol sym_0f2 = 
  let sym_zfr = Zerotied_fragment_symbol_v.zerotied_fragment_symbol_of_zerotied_fragment_twoblocks_symbol sym_0f2 in
    molecule_symbol_of_zerotied_fragment_symbol sym_zfr
;;

let molecule_symbol_of_zerotied_fragment_threeblocks_symbol sym_0f3 = 
  let sym_zfr = Zerotied_fragment_symbol_v.zerotied_fragment_symbol_of_zerotied_fragment_threeblocks_symbol sym_0f3 in
    molecule_symbol_of_zerotied_fragment_symbol sym_zfr
;;

let molecule_symbol_of_zerotied_fragment_fourblocks_symbol sym_0f4 = 
  let sym_zfr = Zerotied_fragment_symbol_v.zerotied_fragment_symbol_of_zerotied_fragment_fourblocks_symbol sym_0f4 in
    molecule_symbol_of_zerotied_fragment_symbol sym_zfr
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let ar = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.ar;;

let brm1 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.brm1;;

let cap2 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.cap2;;

let clm1 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.clm1;;

let cup1 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.cup1;;

let cup2 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.cup2;;

let fep2 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.fep2;;

let fep3 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.fep3;;

let fm1 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.fm1;;

let he = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.he;;

let hm1 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.hm1;;

let hp1 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.hp1;;

let im1 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.im1;;

let kp1 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.kp1;;

let kr = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.kr;;

let lip1 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.lip1;;

let mgp2 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.mgp2;;

let nap1 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.nap1;;

let ne = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.ne;;

let nip1 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.nip1;;

let nip3 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.nip3;;

let om2 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.om2;;

let sm2 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.sm2;;

let xe = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.xe;;

let znp2 = molecule_symbol_of_zerotied_atom_symbol Zerotied_atom_symbol_v.znp2;;

let z_cnm1_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_cnm1_z;;

let z_co_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_co_z;;

let z_cs_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_cs_z;;

let z_fh_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_fh_z;;

let z_no_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_no_z;;

let z_nop1_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_nop1_z;;

let z_ohm1_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_ohm1_z;;

let z_becl2_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_becl2_z;;

let z_co2_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_co2_z;;

let z_hgcl2_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_hgcl2_z;;

let z_so2_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_so2_z;;

let z_o3_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_o3_z;;

let z_ccl2_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_ccl2_z;;

let z_no2m1_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_no2m1_z;;

let z_of2_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_of2_z;;

let z_oh2_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_oh2_z;;

let z_sh2_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_sh2_z;;

let z_i3m1_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_i3m1_z;;

let z_krf2_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_krf2_z;;

let z_xef2_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_xef2_z;;

let z_xecl2_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_xecl2_z;;

let z_coh2_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_coh2_z;;

let z_cho2m1_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_cho2m1_z;;

let z_nh3_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_nh3_z;;

let z_ch4_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_ch4_z;;

let z_nh4p1_z = molecule_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_nh4p1_z;;

let z_ch2_d_ch2_z = molecule_symbol_of_zerotied_fragment_symbol Zerotied_fragment_symbol_v.z_ch2_d_ch2_z;;

let z_ch2_s_ch2_z = molecule_symbol_of_zerotied_fragment_symbol Zerotied_fragment_symbol_v.z_ch2_s_ch2_z;;

let z_ch3_s_ch3_z = molecule_symbol_of_zerotied_fragment_symbol Zerotied_fragment_symbol_v.z_ch3_s_ch3_z;;

let z_ch3_s_co2m1_z = molecule_symbol_of_zerotied_fragment_symbol Zerotied_fragment_symbol_v.z_ch3_s_co2m1_z;;

let z_ch3_s_oh_z = molecule_symbol_of_zerotied_fragment_symbol Zerotied_fragment_symbol_v.z_ch3_s_oh_z;;

let z_ch_t_ch_z = molecule_symbol_of_zerotied_fragment_symbol Zerotied_fragment_symbol_v.z_ch_t_ch_z;;

let z_coh_s_oh_z = molecule_symbol_of_zerotied_fragment_symbol Zerotied_fragment_symbol_v.z_coh_s_oh_z;;

let z_zo2_s_zo_z = molecule_symbol_of_zerotied_fragment_symbol Zerotied_fragment_symbol_v.z_zo2_s_zo_z;;

let z_ch3_s_ch2_s_ch3_z = molecule_symbol_of_zerotied_fragment_symbol Zerotied_fragment_symbol_v.z_ch3_s_ch2_s_ch3_z;;

let z_ch3_s_co_s_oh_z = molecule_symbol_of_zerotied_fragment_symbol Zerotied_fragment_symbol_v.z_ch3_s_co_s_oh_z;;

let z_co2m1_s_ch2_s_nh3p1_z = molecule_symbol_of_zerotied_fragment_symbol Zerotied_fragment_symbol_v.z_co2m1_s_ch2_s_nh3p1_z;;

let z_ch3_s_r2_ch2_s_2r_s_ch3_z = molecule_symbol_of_zerotied_fragment_symbol Zerotied_fragment_symbol_v.z_ch3_s_r2_ch2_s_2r_s_ch3_z;;

let z_oh_s_co_s_ch2_s_nh2_z = molecule_symbol_of_zerotied_fragment_symbol Zerotied_fragment_symbol_v.z_oh_s_co_s_ch2_s_nh2_z;;

let z_ch3_s_ch_le_s_ch3_z_ri_s_nh2_z = molecule_symbol_of_zerotied_forked_symbol Zerotied_forked_symbol_v.z_ch3_s_ch_le_s_ch3_z_ri_s_nh2_z;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let zerotied_forked_constructor s = molecule_symbol_of_zerotied_forked_symbol (Zerotied_forked_symbol_v.zerotied_forked_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Molecule_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Molecule_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try molecule_symbol_of_zerotied_atom_symbol
      (Zerotied_atom_symbol_v.make nam s)
  with Failure "Not_a_zerotied_atom_symbol:Zerotied_atom_symbol_v.ml:make" ->
  try molecule_symbol_of_zerotied_block_symbol
      (Zerotied_block_symbol_v.make nam s)
  with Failure "Not_a_zerotied_block_symbol:Zerotied_block_symbol_v.ml:make" ->
  try molecule_symbol_of_zerotied_fragment_symbol
      (Zerotied_fragment_symbol_v.make nam s)
  with Failure "Not_a_zerotied_fragment_symbol:Zerotied_fragment_symbol_v.ml:make" ->
  try molecule_symbol_of_zerotied_forked_symbol
      (Zerotied_forked_symbol_v.make nam s)
  with Failure "Not_a_zerotied_forked_symbol:Zerotied_forked_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Molecule_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Molecule_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Molecule_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Molecule_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Molecule subtype" nam s)
      "it does not exists"
      "Check file Molecule_symbol_v.ml"
    in
    failwith "Not_a_molecule_symbol:Molecule_symbol_v.ml:make"
;;


(** Molecule_symbol_v at 12:3:17 on 19 Jun 2013. created by version v2.2 of generator *)



