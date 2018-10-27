(** {3 Fake_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Fake_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Fake_symbol_t.Zerotied_symbol sym_zer ->
    Zerotied_symbol_v.name sym_zer
  | Fake_symbol_t.Onetied_single_symbol sym_osi ->
    Onetied_single_symbol_v.name sym_osi
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Fake_symbol_t.Zerotied_symbol sym_zer ->
  Zerotied_symbol_v.string_off sym_zer
  | Fake_symbol_t.Onetied_single_symbol sym_osi ->
  Onetied_single_symbol_v.string_off sym_osi
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fak =
  Format.sprintf "Fake_symbol_t.%s" (String.capitalize (name sym_fak))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fak =
  Format.sprintf "%s \"%s\"" (longname sym_fak) (string_off sym_fak)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let zerotied_symbol_off_fake_symbol = function
  | Fake_symbol_t.Zerotied_symbol sym_zer -> sym_zer
  | sym_fak -> Error_messages_v.print_fatal_error
      nam_cod "zerotied_symbol_off_fake_symbol"
      "Zerotied_symbol"
      (name sym_fak) "check"
;;

let onetied_single_symbol_off_fake_symbol = function
  | Fake_symbol_t.Onetied_single_symbol sym_osi -> sym_osi
  | sym_fak -> Error_messages_v.print_fatal_error
      nam_cod "onetied_single_symbol_off_fake_symbol"
      "Onetied_single_symbol"
      (name sym_fak) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let zerotied_block_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_symbol_off_zerotied_symbol sym_zer
;;

let zerotied_block_none_none_ax1_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_none_none_ax1_symbol_off_zerotied_symbol sym_zer
;;

let zerotied_block_none_none_ax1_single_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_none_none_ax1_single_symbol_off_zerotied_symbol sym_zer
;;

let zerotied_block_none_none_ax1_double_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_none_none_ax1_double_symbol_off_zerotied_symbol sym_zer
;;

let zerotied_block_none_none_ax1_biconjugated_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_none_none_ax1_biconjugated_symbol_off_zerotied_symbol sym_zer
;;

let zerotied_block_none_none_ax1_triple_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_none_none_ax1_triple_symbol_off_zerotied_symbol sym_zer
;;

let zerotied_block_none_none_ax2_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_none_none_ax2_symbol_off_zerotied_symbol sym_zer
;;

let zerotied_block_none_none_ax2e0_linear_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_none_none_ax2e0_linear_symbol_off_zerotied_symbol sym_zer
;;

let zerotied_block_none_none_ax2e1_bent_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_none_none_ax2e1_bent_symbol_off_zerotied_symbol sym_zer
;;

let zerotied_block_none_none_ax2e2_bent_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_none_none_ax2e2_bent_symbol_off_zerotied_symbol sym_zer
;;

let zerotied_block_none_none_ax2e3_linear_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_none_none_ax2e3_linear_symbol_off_zerotied_symbol sym_zer
;;

let zerotied_block_none_none_ax3_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_none_none_ax3_symbol_off_zerotied_symbol sym_zer
;;

let zerotied_block_none_none_ax3e0_trigonalplanar_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_none_none_ax3e0_trigonalplanar_symbol_off_zerotied_symbol sym_zer
;;

let zerotied_block_none_none_ax3e1_trigonalpyramidal_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_none_none_ax3e1_trigonalpyramidal_symbol_off_zerotied_symbol sym_zer
;;

let zerotied_block_none_none_ax4_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_none_none_ax4_symbol_off_zerotied_symbol sym_zer
;;

let zerotied_block_none_none_ax4e1_tetrahedral_symbol_off_fake_symbol sym_fak = 
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
    Zerotied_symbol_v.zerotied_block_none_none_ax4e1_tetrahedral_symbol_off_zerotied_symbol sym_zer
;;

let onetied_single_atom_symbol_off_fake_symbol sym_fak = 
  let sym_osi = onetied_single_symbol_off_fake_symbol sym_fak in
    Onetied_single_symbol_v.onetied_single_atom_symbol_off_onetied_single_symbol sym_osi
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_zerotied_symbol_off_fake_symbol = function
  | Fake_symbol_t.Zerotied_symbol _ -> true
  | _ -> false
;;

let is_onetied_single_symbol_off_fake_symbol = function
  | Fake_symbol_t.Onetied_single_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_z_fh_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_fh_z sym_zer
    end
;;

let is_z_h2_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_h2_z sym_zer
    end
;;

let is_z_sh_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_sh_z sym_zer
    end
;;

let is_z_o2_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_o2_z sym_zer
    end
;;

let is_z_no_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_no_z sym_zer
    end
;;

let is_z_co_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_co_z sym_zer
    end
;;

let is_z_n2_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_n2_z sym_zer
    end
;;

let is_z_becl2_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_becl2_z sym_zer
    end
;;

let is_z_co2_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_co2_z sym_zer
    end
;;

let is_z_hgcl2_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_hgcl2_z sym_zer
    end
;;

let is_z_so2_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_so2_z sym_zer
    end
;;

let is_z_o3_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_o3_z sym_zer
    end
;;

let is_z_ccl2_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_ccl2_z sym_zer
    end
;;

let is_z_no2m1_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_no2m1_z sym_zer
    end
;;

let is_z_of2_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_of2_z sym_zer
    end
;;

let is_z_oh2_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_oh2_z sym_zer
    end
;;

let is_z_sh2_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_sh2_z sym_zer
    end
;;

let is_z_i3m1_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_i3m1_z sym_zer
    end
;;

let is_z_krf2_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_krf2_z sym_zer
    end
;;

let is_z_xef2_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_xef2_z sym_zer
    end
;;

let is_z_xecl2_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_xecl2_z sym_zer
    end
;;

let is_z_coh2_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_coh2_z sym_zer
    end
;;

let is_z_cho2m1_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_cho2m1_z sym_zer
    end
;;

let is_z_nh3_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_nh3_z sym_zer
    end
;;

let is_z_ch4_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_ch4_z sym_zer
    end
;;

let is_z_nh4p1_z sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
      Zerotied_symbol_v.is_z_nh4p1_z sym_zer
    end
;;

let is_z_h_s sym_fak =
  if not (is_onetied_single_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_osi = onetied_single_symbol_off_fake_symbol sym_fak in
      Onetied_single_symbol_v.is_z_h_s sym_osi
    end
;;

let is_z_f_s sym_fak =
  if not (is_onetied_single_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_osi = onetied_single_symbol_off_fake_symbol sym_fak in
      Onetied_single_symbol_v.is_z_f_s sym_osi
    end
;;

let is_z_s_s sym_fak =
  if not (is_onetied_single_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
      let sym_osi = onetied_single_symbol_off_fake_symbol sym_fak in
      Onetied_single_symbol_v.is_z_s_s sym_osi
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_zerotied_block_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_zerotied_block_none_none_ax1_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_none_none_ax1_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_zerotied_block_none_none_ax1_single_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_none_none_ax1_single_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_zerotied_block_none_none_ax1_double_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_none_none_ax1_double_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_zerotied_block_none_none_ax1_biconjugated_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_none_none_ax1_biconjugated_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_zerotied_block_none_none_ax1_triple_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_none_none_ax1_triple_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_zerotied_block_none_none_ax2_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_none_none_ax2_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_zerotied_block_none_none_ax2e0_linear_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_none_none_ax2e0_linear_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_zerotied_block_none_none_ax2e1_bent_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_none_none_ax2e1_bent_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_zerotied_block_none_none_ax2e2_bent_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_none_none_ax2e2_bent_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_zerotied_block_none_none_ax2e3_linear_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_none_none_ax2e3_linear_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_zerotied_block_none_none_ax3_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_none_none_ax3_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_zerotied_block_none_none_ax3e0_trigonalplanar_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_none_none_ax3e0_trigonalplanar_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_zerotied_block_none_none_ax3e1_trigonalpyramidal_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_none_none_ax3e1_trigonalpyramidal_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_zerotied_block_none_none_ax4_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_none_none_ax4_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_zerotied_block_none_none_ax4e1_tetrahedral_symbol_off_fake_symbol sym_fak =
  if not (is_zerotied_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_zer = zerotied_symbol_off_fake_symbol sym_fak in
  Zerotied_symbol_v.is_zerotied_block_none_none_ax4e1_tetrahedral_symbol_off_zerotied_symbol sym_zer
    end
;;

let is_onetied_single_atom_symbol_off_fake_symbol sym_fak =
  if not (is_onetied_single_symbol_off_fake_symbol sym_fak)
  then false
  else
    begin
  let sym_osi = onetied_single_symbol_off_fake_symbol sym_fak in
  Onetied_single_symbol_v.is_onetied_single_atom_symbol_off_onetied_single_symbol sym_osi
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let fake_symbol_of_zerotied_symbol sym_zer = 
  Fake_symbol_t.Zerotied_symbol sym_zer
;;

let fake_symbol_of_onetied_single_symbol sym_osi = 
  Fake_symbol_t.Onetied_single_symbol sym_osi
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let fake_symbol_of_zerotied_block_symbol sym_zbl = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_symbol sym_zbl in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_zerotied_block_none_none_ax1_symbol sym_0na = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax1_symbol sym_0na in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_zerotied_block_none_none_ax1_single_symbol sym_0as = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax1_single_symbol sym_0as in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_zerotied_block_none_none_ax1_double_symbol sym_0ad = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax1_double_symbol sym_0ad in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_zerotied_block_none_none_ax1_biconjugated_symbol sym_0ab = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax1_biconjugated_symbol sym_0ab in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_zerotied_block_none_none_ax1_triple_symbol sym_0at = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax1_triple_symbol sym_0at in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_zerotied_block_none_none_ax2_symbol sym_0na = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax2_symbol sym_0na in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_zerotied_block_none_none_ax2e0_linear_symbol sym_0al = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax2e0_linear_symbol sym_0al in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_zerotied_block_none_none_ax2e1_bent_symbol sym_0ab = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax2e1_bent_symbol sym_0ab in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_zerotied_block_none_none_ax2e2_bent_symbol sym_0ab = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax2e2_bent_symbol sym_0ab in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_zerotied_block_none_none_ax2e3_linear_symbol sym_0al = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax2e3_linear_symbol sym_0al in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_zerotied_block_none_none_ax3_symbol sym_0na = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax3_symbol sym_0na in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_zerotied_block_none_none_ax3e0_trigonalplanar_symbol sym_0at = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax3e0_trigonalplanar_symbol sym_0at in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_zerotied_block_none_none_ax3e1_trigonalpyramidal_symbol sym_0at = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax3e1_trigonalpyramidal_symbol sym_0at in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_zerotied_block_none_none_ax4_symbol sym_0na = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax4_symbol sym_0na in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_zerotied_block_none_none_ax4e1_tetrahedral_symbol sym_0at = 
  let sym_zer = Zerotied_symbol_v.zerotied_symbol_of_zerotied_block_none_none_ax4e1_tetrahedral_symbol sym_0at in
    fake_symbol_of_zerotied_symbol sym_zer
;;

let fake_symbol_of_onetied_single_atom_symbol sym_1sa = 
  let sym_osi = Onetied_single_symbol_v.onetied_single_symbol_of_onetied_single_atom_symbol sym_1sa in
    fake_symbol_of_onetied_single_symbol sym_osi
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let z_fh_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_fh_z;;

let z_h2_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_h2_z;;

let z_sh_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_sh_z;;

let z_o2_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_o2_z;;

let z_no_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_no_z;;

let z_co_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_co_z;;

let z_n2_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_n2_z;;

let z_becl2_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_becl2_z;;

let z_co2_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_co2_z;;

let z_hgcl2_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_hgcl2_z;;

let z_so2_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_so2_z;;

let z_o3_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_o3_z;;

let z_ccl2_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_ccl2_z;;

let z_no2m1_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_no2m1_z;;

let z_of2_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_of2_z;;

let z_oh2_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_oh2_z;;

let z_sh2_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_sh2_z;;

let z_i3m1_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_i3m1_z;;

let z_krf2_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_krf2_z;;

let z_xef2_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_xef2_z;;

let z_xecl2_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_xecl2_z;;

let z_coh2_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_coh2_z;;

let z_cho2m1_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_cho2m1_z;;

let z_nh3_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_nh3_z;;

let z_ch4_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_ch4_z;;

let z_nh4p1_z = fake_symbol_of_zerotied_symbol Zerotied_symbol_v.z_nh4p1_z;;

let z_h_s = fake_symbol_of_onetied_single_symbol Onetied_single_symbol_v.z_h_s;;

let z_f_s = fake_symbol_of_onetied_single_symbol Onetied_single_symbol_v.z_f_s;;

let z_s_s = fake_symbol_of_onetied_single_symbol Onetied_single_symbol_v.z_s_s;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Fake_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Fake_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try fake_symbol_of_zerotied_symbol
      (Zerotied_symbol_v.make nam s)
  with Failure "Not_a_zerotied_symbol:Zerotied_symbol_v.ml:make" ->
  try fake_symbol_of_onetied_single_symbol
      (Onetied_single_symbol_v.make nam s)
  with Failure "Not_a_onetied_single_symbol:Onetied_single_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Fake_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Fake_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Fake_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Fake_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Fake subtype" nam s)
      "it does not exists"
      "Check file Fake_symbol_v.ml"
    in
    failwith "Not_a_fake_symbol:Fake_symbol_v.ml:make"
;;


(** Fake_symbol_v at 11:24:21 on 20 Jun 2013. created by version v2.2 of generator *)



