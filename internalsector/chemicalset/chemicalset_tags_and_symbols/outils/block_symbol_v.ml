(** {3 A Symbol for a Block.} *)

let nam_cod = "block_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module B00s_v = Block_zerozero_symbol_v
module B01s_v = Block_zeroone_symbol_v
module B0s_v = Block_zerofork_symbol_v
module B11s_v = Block_oneone_symbol_v
module B1es_v = Block_oneend_symbol_v


let name = function
  | Bls_v smb_bzz ->
      B00s_v.name smb_bzz
  | Bls_v smb_bzo ->
      B01s_v.name smb_bzo
  | Bls_v smb_bl0 ->
      B0s_v.name smb_bl0
  | Bls_v smb_boo ->
      B11s_v.name smb_boo
  | Bls_v smb_boe ->
      B1es_v.name smb_boe
;;


let print ppf = function
  | Bls_v smb_bzz ->
      B00s_v.print ppf smb_bzz
  | Bls_v smb_bzo ->
      B01s_v.print ppf smb_bzo
  | Bls_v smb_bl0 ->
      B0s_v.print ppf smb_bl0
  | Bls_v smb_boo ->
      B11s_v.print ppf smb_boo
  | Bls_v smb_boe ->
      B1es_v.print ppf smb_boe
;;


(** {6 Extracting.} *)

let block_zerozero_symbol_off_block_symbol = function
  | Bls_v smb_bzz -> smb_bzz
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zerozero_symbol_off_block_symbol"
     "Block_zerozero_symbol"
     (name s)
    "check"
;;

let atom_zerotied_symbol_off_block_symbol smb_blk =
  let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
    B00s_v_off_block_zerozero_symbol smb_bzz
;;

let atom_zerotied_raregas_symbol_off_block_symbol smb_blk =
  let smb_at0 = atom_zerotied_symbol_off_block_symbol smb_blk in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_off_block_symbol smb_blk =
  let smb_at0 = atom_zerotied_symbol_off_block_symbol smb_blk in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_minus_one_symbol_off_block_symbol smb_blk =
  let smb_a0a = atom_zerotied_anion_symbol_off_block_symbol smb_blk in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_off_block_symbol smb_blk =
  let smb_a0a = atom_zerotied_anion_symbol_off_block_symbol smb_blk in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_cation_symbol_off_block_symbol smb_blk =
  let smb_at0 = atom_zerotied_symbol_off_block_symbol smb_blk in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_one_symbol_off_block_symbol smb_blk =
  let smb_a0c = atom_zerotied_cation_symbol_off_block_symbol smb_blk in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_off_block_symbol smb_blk =
  let smb_a0c = atom_zerotied_cation_symbol_off_block_symbol smb_blk in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_off_block_symbol smb_blk =
  let smb_a0c = atom_zerotied_cation_symbol_off_block_symbol smb_blk in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let halfbridge_symbol_off_block_symbol smb_blk =
  let smb_at0 = atom_zerotied_symbol_off_block_symbol smb_blk in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let block_zerozero_diatomic_symbol_off_block_symbol smb_blk =
  let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
    B00s_v_off_block_zerozero_symbol smb_bzz
;;

let block_zerozero_triatomic_symbol_off_block_symbol smb_blk =
  let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
    B00s_v_off_block_zerozero_symbol smb_bzz
;;

let block_zerozero_tetratomic_symbol_off_block_symbol smb_blk =
  let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
    B00s_v_off_block_zerozero_symbol smb_bzz
;;

let block_zerozero_pentatomic_symbol_off_block_symbol smb_blk =
  let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
    B00s_v_off_block_zerozero_symbol smb_bzz
;;

let block_zeroone_symbol_off_block_symbol = function
  | Bls_v smb_bzo -> smb_bzo
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zeroone_symbol_off_block_symbol"
     "Block_zeroone_symbol"
     (name s)
    "check"
;;

let block_zeroonesingle_symbol_off_block_symbol smb_blk =
  let smb_bzo = block_zeroone_symbol_off_block_symbol smb_blk in
    B01s_v_off_block_zeroone_symbol smb_bzo
;;

let block_zeroonedouble_symbol_off_block_symbol smb_blk =
  let smb_bzo = block_zeroone_symbol_off_block_symbol smb_blk in
    B01s_v_off_block_zeroone_symbol smb_bzo
;;

let block_zeroonetriple_symbol_off_block_symbol smb_blk =
  let smb_bzo = block_zeroone_symbol_off_block_symbol smb_blk in
    B01s_v_off_block_zeroone_symbol smb_bzo
;;

let block_zerofork_symbol_off_block_symbol = function
  | Bls_v smb_bl0 -> smb_bl0
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zerofork_symbol_off_block_symbol"
     "Block_zerofork_symbol"
     (name s)
    "check"
;;

let block_zerobifork_symbol_off_block_symbol smb_blk =
  let smb_bl0 = block_zerofork_symbol_off_block_symbol smb_blk in
    B0s_v_off_block_zerofork_symbol smb_bl0
;;

let block_zerotrifork_symbol_off_block_symbol smb_blk =
  let smb_bl0 = block_zerofork_symbol_off_block_symbol smb_blk in
    B0s_v_off_block_zerofork_symbol smb_bl0
;;

let block_zeroquadrifork_symbol_off_block_symbol smb_blk =
  let smb_bl0 = block_zerofork_symbol_off_block_symbol smb_blk in
    B0s_v_off_block_zerofork_symbol smb_bl0
;;

let block_oneone_symbol_off_block_symbol = function
  | Bls_v smb_boo -> smb_boo
  | s -> Erm_v.print_fatal_error nam_cod
     "block_oneone_symbol_off_block_symbol"
     "Block_oneone_symbol"
     (name s)
    "check"
;;

let block_onesingleonesingle_symbol_off_block_symbol smb_blk =
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onesingleonedouble_symbol_off_block_symbol smb_blk =
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onesingleonetriple_symbol_off_block_symbol smb_blk =
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onedoubleonesingle_symbol_off_block_symbol smb_blk =
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onedoubleonedouble_symbol_off_block_symbol smb_blk =
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onetripleonesingle_symbol_off_block_symbol smb_blk =
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_oneend_symbol_off_block_symbol = function
  | Bls_v smb_boe -> smb_boe
  | s -> Erm_v.print_fatal_error nam_cod
     "block_oneend_symbol_off_block_symbol"
     "Block_oneend_symbol"
     (name s)
    "check"
;;

let block_onefork_symbol_off_block_symbol smb_blk =
  let smb_boe = block_oneend_symbol_off_block_symbol smb_blk in
    B1es_v_off_block_oneend_symbol smb_boe
;;

let block_onebifork_symbol_off_block_symbol smb_blk =
  let smb_bof = block_onefork_symbol_off_block_symbol smb_blk in
    B1s_v_off_block_onefork_symbol smb_bof
;;

let block_onesinglebifork_symbol_off_block_symbol smb_blk =
  let smb_bob = block_onebifork_symbol_off_block_symbol smb_blk in
    B1bs_v_off_block_onebifork_symbol smb_bob
;;

let block_onesinglebiforksinglesingle_symbol_off_block_symbol smb_blk =
  let smb_osb = block_onesinglebifork_symbol_off_block_symbol smb_blk in
    B1sbs_v_off_block_onesinglebifork_symbol smb_osb
;;

let block_onedoublebifork_symbol_off_block_symbol smb_blk =
  let smb_bob = block_onebifork_symbol_off_block_symbol smb_blk in
    B1bs_v_off_block_onebifork_symbol smb_bob
;;

let block_onetrifork_symbol_off_block_symbol smb_blk =
  let smb_bof = block_onefork_symbol_off_block_symbol smb_blk in
    B1s_v_off_block_onefork_symbol smb_bof
;;

let block_onesingletriforksinglesinglesingle_symbol_off_block_symbol smb_blk =
  let smb_bot = block_onetrifork_symbol_off_block_symbol smb_blk in
    B1ts_v_off_block_onetrifork_symbol smb_bot
;;

let block_onezero_symbol_off_block_symbol smb_blk =
  let smb_boe = block_oneend_symbol_off_block_symbol smb_blk in
    B1es_v_off_block_oneend_symbol smb_boe
;;


(** {6 Querying.} *)

let is_block_zerozero_symbol_off_block_symbol = function
  | Block_symbol_t.Block_zerozero_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_symbol_off_block_symbol smb_blk =
  if not (is_block_zerozero_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
      B00s_v.is_atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

let is_atom_zerotied_raregas_symbol_off_block_symbol smb_blk =
  if not (is_atom_zerotied_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_block_symbol smb_blk in
      A0s_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_anion_symbol_off_block_symbol smb_blk =
  if not (is_atom_zerotied_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_block_symbol smb_blk in
      A0s_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_anion_minus_one_symbol_off_block_symbol smb_blk =
  if not (is_atom_zerotied_anion_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_block_symbol smb_blk in
      A0as_v.is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_anion_minus_two_symbol_off_block_symbol smb_blk =
  if not (is_atom_zerotied_anion_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_block_symbol smb_blk in
      A0as_v.is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_cation_symbol_off_block_symbol smb_blk =
  if not (is_atom_zerotied_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_block_symbol smb_blk in
      A0s_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_cation_plus_one_symbol_off_block_symbol smb_blk =
  if not (is_atom_zerotied_cation_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_block_symbol smb_blk in
      A0cs_v.is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_two_symbol_off_block_symbol smb_blk =
  if not (is_atom_zerotied_cation_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_block_symbol smb_blk in
      A0cs_v.is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_three_symbol_off_block_symbol smb_blk =
  if not (is_atom_zerotied_cation_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_block_symbol smb_blk in
      A0cs_v.is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_halfbridge_symbol_off_block_symbol smb_blk =
  if not (is_atom_zerotied_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_block_symbol smb_blk in
      A0s_v.is_halfbridge_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_block_zerozero_diatomic_symbol_off_block_symbol smb_blk =
  if not (is_block_zerozero_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
      B00s_v.is_block_zerozero_diatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

let is_block_zerozero_triatomic_symbol_off_block_symbol smb_blk =
  if not (is_block_zerozero_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
      B00s_v.is_block_zerozero_triatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

let is_block_zerozero_tetratomic_symbol_off_block_symbol smb_blk =
  if not (is_block_zerozero_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
      B00s_v.is_block_zerozero_tetratomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

let is_block_zerozero_pentatomic_symbol_off_block_symbol smb_blk =
  if not (is_block_zerozero_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bzz = block_zerozero_symbol_off_block_symbol smb_blk in
      B00s_v.is_block_zerozero_pentatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

let is_block_zeroone_symbol_off_block_symbol = function
  | Block_symbol_t.Block_zeroone_symbol _ -> true
  | _ -> false
;;

let is_block_zeroonesingle_symbol_off_block_symbol smb_blk =
  if not (is_block_zeroone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bzo = block_zeroone_symbol_off_block_symbol smb_blk in
      B01s_v.is_block_zeroonesingle_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

let is_block_zeroonedouble_symbol_off_block_symbol smb_blk =
  if not (is_block_zeroone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bzo = block_zeroone_symbol_off_block_symbol smb_blk in
      B01s_v.is_block_zeroonedouble_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

let is_block_zeroonetriple_symbol_off_block_symbol smb_blk =
  if not (is_block_zeroone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bzo = block_zeroone_symbol_off_block_symbol smb_blk in
      B01s_v.is_block_zeroonetriple_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

let is_block_zerofork_symbol_off_block_symbol = function
  | Block_symbol_t.Block_zerofork_symbol _ -> true
  | _ -> false
;;

let is_block_zerobifork_symbol_off_block_symbol smb_blk =
  if not (is_block_zerofork_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bl0 = block_zerofork_symbol_off_block_symbol smb_blk in
      B0s_v.is_block_zerobifork_symbol_off_block_zerofork_symbol smb_bl0
    end
;;

let is_block_zerotrifork_symbol_off_block_symbol smb_blk =
  if not (is_block_zerofork_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bl0 = block_zerofork_symbol_off_block_symbol smb_blk in
      B0s_v.is_block_zerotrifork_symbol_off_block_zerofork_symbol smb_bl0
    end
;;

let is_block_zeroquadrifork_symbol_off_block_symbol smb_blk =
  if not (is_block_zerofork_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bl0 = block_zerofork_symbol_off_block_symbol smb_blk in
      B0s_v.is_block_zeroquadrifork_symbol_off_block_zerofork_symbol smb_bl0
    end
;;

let is_block_oneone_symbol_off_block_symbol = function
  | Block_symbol_t.Block_oneone_symbol _ -> true
  | _ -> false
;;

let is_block_onesingleonesingle_symbol_off_block_symbol smb_blk =
  if not (is_block_oneone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
      B11s_v.is_block_onesingleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onesingleonedouble_symbol_off_block_symbol smb_blk =
  if not (is_block_oneone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
      B11s_v.is_block_onesingleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onesingleonetriple_symbol_off_block_symbol smb_blk =
  if not (is_block_oneone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
      B11s_v.is_block_onesingleonetriple_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onedoubleonesingle_symbol_off_block_symbol smb_blk =
  if not (is_block_oneone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
      B11s_v.is_block_onedoubleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onedoubleonedouble_symbol_off_block_symbol smb_blk =
  if not (is_block_oneone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
      B11s_v.is_block_onedoubleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onetripleonesingle_symbol_off_block_symbol smb_blk =
  if not (is_block_oneone_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_block_symbol smb_blk in
      B11s_v.is_block_onetripleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_oneend_symbol_off_block_symbol = function
  | Block_symbol_t.Block_oneend_symbol _ -> true
  | _ -> false
;;

let is_block_onefork_symbol_off_block_symbol smb_blk =
  if not (is_block_oneend_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_boe = block_oneend_symbol_off_block_symbol smb_blk in
      B1es_v.is_block_onefork_symbol_off_block_oneend_symbol smb_boe
    end
;;

let is_block_onebifork_symbol_off_block_symbol smb_blk =
  if not (is_block_onefork_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bof = block_onefork_symbol_off_block_symbol smb_blk in
      B1s_v.is_block_onebifork_symbol_off_block_onefork_symbol smb_bof
    end
;;

let is_block_onesinglebifork_symbol_off_block_symbol smb_blk =
  if not (is_block_onebifork_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bob = block_onebifork_symbol_off_block_symbol smb_blk in
      B1bs_v.is_block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob
    end
;;

let is_block_onesinglebiforksinglesingle_symbol_off_block_symbol smb_blk =
  if not (is_block_onesinglebifork_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_osb = block_onesinglebifork_symbol_off_block_symbol smb_blk in
      B1sbs_v.is_block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol smb_osb
    end
;;

let is_block_onedoublebifork_symbol_off_block_symbol smb_blk =
  if not (is_block_onebifork_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bob = block_onebifork_symbol_off_block_symbol smb_blk in
      B1bs_v.is_block_onedoublebifork_symbol_off_block_onebifork_symbol smb_bob
    end
;;

let is_block_onetrifork_symbol_off_block_symbol smb_blk =
  if not (is_block_onefork_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bof = block_onefork_symbol_off_block_symbol smb_blk in
      B1s_v.is_block_onetrifork_symbol_off_block_onefork_symbol smb_bof
    end
;;

let is_block_onesingletriforksinglesinglesingle_symbol_off_block_symbol smb_blk =
  if not (is_block_onetrifork_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_bot = block_onetrifork_symbol_off_block_symbol smb_blk in
      B1ts_v.is_block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol smb_bot
    end
;;

let is_block_onezero_symbol_off_block_symbol smb_blk =
  if not (is_block_oneend_symbol_off_block_symbol smb_blk)
  then false
  else
    begin
  let smb_boe = block_oneend_symbol_off_block_symbol smb_blk in
      B1es_v.is_block_onezero_symbol_off_block_oneend_symbol smb_boe
    end
;;


(** {6 Upgrading.} *)

let block_symbol_of_block_zerozero_symbol smb_bzz =
Bls_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_symbol_of_atom_zerotied_symbol smb_at0 =
  let smb_bzz = B00s_v.block_zerozero_symbol_of_atom_zerotied_symbol smb_at0 in
block_symbol_of_block_zerozero_symbol smb_bzz
;;

let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r in
block_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_raregas_symbol_of_block_zerozero_symbol smb_bzz =
A0rs_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_raregas_symbol_of_block_zerozero_symbol smb_bzz =
A0rs_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_raregas_symbol_of_block_zerozero_symbol smb_bzz =
A0rs_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_raregas_symbol_of_block_zerozero_symbol smb_bzz =
A0rs_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_raregas_symbol_of_block_zerozero_symbol smb_bzz =
A0rs_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a in
block_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 in
block_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0am1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_anion_minus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0am1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_anion_minus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0am1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_anion_minus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0am1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_anion_minus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0am1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 in
block_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_of_block_zerozero_symbol smb_bzz =
A0am2s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_anion_minus_two_symbol_of_block_zerozero_symbol smb_bzz =
A0am2s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c in
block_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 in
block_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0cp1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0cp1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0cp1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0cp1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0cp1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0cp1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 in
block_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_of_block_zerozero_symbol smb_bzz =
A0cp2s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_two_symbol_of_block_zerozero_symbol smb_bzz =
A0cp2s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_two_symbol_of_block_zerozero_symbol smb_bzz =
A0cp2s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_two_symbol_of_block_zerozero_symbol smb_bzz =
A0cp2s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_two_symbol_of_block_zerozero_symbol smb_bzz =
A0cp2s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 in
block_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_of_block_zerozero_symbol smb_bzz =
A0cp3s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_three_symbol_of_block_zerozero_symbol smb_bzz =
A0cp3s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_symbol_of_halfbridge_symbol smb_hae =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_halfbridge_symbol smb_hae in
block_symbol_of_atom_zerotied_symbol smb_at0
;;

let halfbridge_symbol_of_block_zerozero_symbol smb_bzz =
Has_v.block_zerozero_symbol smb_bzz
;;

let halfbridge_symbol_of_block_zerozero_symbol smb_bzz =
Has_v.block_zerozero_symbol smb_bzz
;;

let halfbridge_symbol_of_block_zerozero_symbol smb_bzz =
Has_v.block_zerozero_symbol smb_bzz
;;

let halfbridge_symbol_of_block_zerozero_symbol smb_bzz =
Has_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_symbol_of_block_zerozero_diatomic_symbol smb_zzd =
  let smb_bzz = B00s_v.block_zerozero_symbol_of_block_zerozero_diatomic_symbol smb_zzd in
block_symbol_of_block_zerozero_symbol smb_bzz
;;

let block_zerozero_diatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00ds_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_symbol_of_block_zerozero_triatomic_symbol smb_zzt =
  let smb_bzz = B00s_v.block_zerozero_symbol_of_block_zerozero_triatomic_symbol smb_zzt in
block_symbol_of_block_zerozero_symbol smb_bzz
;;

let block_zerozero_triatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00ts_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_triatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00ts_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_triatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00ts_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_triatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00ts_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_triatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00ts_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_symbol_of_block_zerozero_tetratomic_symbol smb_zzq =
  let smb_bzz = B00s_v.block_zerozero_symbol_of_block_zerozero_tetratomic_symbol smb_zzq in
block_symbol_of_block_zerozero_symbol smb_bzz
;;

let block_zerozero_tetratomic_symbol_of_block_zerozero_symbol smb_bzz =
B00qs_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_tetratomic_symbol_of_block_zerozero_symbol smb_bzz =
B00qs_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_symbol_of_block_zerozero_pentatomic_symbol smb_zzc =
  let smb_bzz = B00s_v.block_zerozero_symbol_of_block_zerozero_pentatomic_symbol smb_zzc in
block_symbol_of_block_zerozero_symbol smb_bzz
;;

let block_zerozero_pentatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00cs_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_pentatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00cs_v.block_zerozero_symbol smb_bzz
;;

let block_symbol_of_block_zeroone_symbol smb_bzo =
Bls_v.block_zeroone_symbol smb_bzo
;;

let block_zeroone_symbol_of_block_zeroonesingle_symbol smb_zos =
  let smb_bzo = B01s_v.block_zeroone_symbol_of_block_zeroonesingle_symbol smb_zos in
block_symbol_of_block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroone_symbol_of_block_zeroonedouble_symbol smb_zod =
  let smb_bzo = B01s_v.block_zeroone_symbol_of_block_zeroonedouble_symbol smb_zod in
block_symbol_of_block_zeroone_symbol smb_bzo
;;

let block_zeroonedouble_symbol_of_block_zeroone_symbol smb_bzo =
B01ds_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonedouble_symbol_of_block_zeroone_symbol smb_bzo =
B01ds_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonedouble_symbol_of_block_zeroone_symbol smb_bzo =
B01ds_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonedouble_symbol_of_block_zeroone_symbol smb_bzo =
B01ds_v.block_zeroone_symbol smb_bzo
;;

let block_zeroone_symbol_of_block_zeroonetriple_symbol smb_zot =
  let smb_bzo = B01s_v.block_zeroone_symbol_of_block_zeroonetriple_symbol smb_zot in
block_symbol_of_block_zeroone_symbol smb_bzo
;;

let block_zeroonetriple_symbol_of_block_zeroone_symbol smb_bzo =
B01ts_v.block_zeroone_symbol smb_bzo
;;

let block_zeroone_symbol_of_block_zeroone_symbol smb_bzo =
B01s_v.block_zeroone_symbol smb_bzo
;;

let block_symbol_of_block_zerofork_symbol smb_bl0 =
Bls_v.block_zerofork_symbol smb_bl0
;;

let block_zerofork_symbol_of_block_zerobifork_symbol smb_bzb =
  let smb_bl0 = B0s_v.block_zerofork_symbol_of_block_zerobifork_symbol smb_bzb in
block_symbol_of_block_zerofork_symbol smb_bl0
;;

let block_zerobifork_symbol_of_block_zerofork_symbol smb_bl0 =
B0bs_v.block_zerofork_symbol smb_bl0
;;

let block_zerobifork_symbol_of_block_zerofork_symbol smb_bl0 =
B0bs_v.block_zerofork_symbol smb_bl0
;;

let block_zerobifork_symbol_of_block_zerofork_symbol smb_bl0 =
B0bs_v.block_zerofork_symbol smb_bl0
;;

let block_zerofork_symbol_of_block_zerotrifork_symbol smb_bzt =
  let smb_bl0 = B0s_v.block_zerofork_symbol_of_block_zerotrifork_symbol smb_bzt in
block_symbol_of_block_zerofork_symbol smb_bl0
;;

let block_zerotrifork_symbol_of_block_zerofork_symbol smb_bl0 =
B0ts_v.block_zerofork_symbol smb_bl0
;;

let block_zerotrifork_symbol_of_block_zerofork_symbol smb_bl0 =
B0ts_v.block_zerofork_symbol smb_bl0
;;

let block_zerofork_symbol_of_block_zeroquadrifork_symbol smb_bzq =
  let smb_bl0 = B0s_v.block_zerofork_symbol_of_block_zeroquadrifork_symbol smb_bzq in
block_symbol_of_block_zerofork_symbol smb_bl0
;;

let block_zeroquadrifork_symbol_of_block_zerofork_symbol smb_bl0 =
B0qs_v.block_zerofork_symbol smb_bl0
;;

let block_zeroquadrifork_symbol_of_block_zerofork_symbol smb_bl0 =
B0qs_v.block_zerofork_symbol smb_bl0
;;

let block_symbol_of_block_oneone_symbol smb_boo =
Bls_v.block_oneone_symbol smb_boo
;;

let block_oneone_symbol_of_block_onesingleonesingle_symbol smb_sos =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onesingleonesingle_symbol smb_sos in
block_symbol_of_block_oneone_symbol smb_boo
;;

let block_onesingleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1s1ss_v.block_oneone_symbol smb_boo
;;

let block_onesingleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1s1ss_v.block_oneone_symbol smb_boo
;;

let block_onesingleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1s1ss_v.block_oneone_symbol smb_boo
;;

let block_onesingleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1s1ss_v.block_oneone_symbol smb_boo
;;

let block_onesingleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1s1ss_v.block_oneone_symbol smb_boo
;;

let block_onesingleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1s1ss_v.block_oneone_symbol smb_boo
;;

let block_oneone_symbol_of_block_onesingleonedouble_symbol smb_sod =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onesingleonedouble_symbol smb_sod in
block_symbol_of_block_oneone_symbol smb_boo
;;

let block_onesingleonedouble_symbol_of_block_oneone_symbol smb_boo =
B1s1ds_v.block_oneone_symbol smb_boo
;;

let block_onesingleonedouble_symbol_of_block_oneone_symbol smb_boo =
B1s1ds_v.block_oneone_symbol smb_boo
;;

let block_onesingleonedouble_symbol_of_block_oneone_symbol smb_boo =
B1s1ds_v.block_oneone_symbol smb_boo
;;

let block_oneone_symbol_of_block_onesingleonetriple_symbol smb_sot =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onesingleonetriple_symbol smb_sot in
block_symbol_of_block_oneone_symbol smb_boo
;;

let block_onesingleonetriple_symbol_of_block_oneone_symbol smb_boo =
B1s1ts_v.block_oneone_symbol smb_boo
;;

let block_onesingleonetriple_symbol_of_block_oneone_symbol smb_boo =
B1s1ts_v.block_oneone_symbol smb_boo
;;

let block_oneone_symbol_of_block_onedoubleonesingle_symbol smb_ods =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onedoubleonesingle_symbol smb_ods in
block_symbol_of_block_oneone_symbol smb_boo
;;

let block_onedoubleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1d1ss_v.block_oneone_symbol smb_boo
;;

let block_onedoubleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1d1ss_v.block_oneone_symbol smb_boo
;;

let block_onedoubleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1d1ss_v.block_oneone_symbol smb_boo
;;

let block_oneone_symbol_of_block_onedoubleonedouble_symbol smb_odd =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onedoubleonedouble_symbol smb_odd in
block_symbol_of_block_oneone_symbol smb_boo
;;

let block_onedoubleonedouble_symbol_of_block_oneone_symbol smb_boo =
B1d1ds_v.block_oneone_symbol smb_boo
;;

let block_onedoubleonedouble_symbol_of_block_oneone_symbol smb_boo =
B1d1ds_v.block_oneone_symbol smb_boo
;;

let block_oneone_symbol_of_block_onetripleonesingle_symbol smb_ots =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onetripleonesingle_symbol smb_ots in
block_symbol_of_block_oneone_symbol smb_boo
;;

let block_onetripleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1t1ss_v.block_oneone_symbol smb_boo
;;

let block_onetripleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1t1ss_v.block_oneone_symbol smb_boo
;;

let block_symbol_of_block_oneend_symbol smb_boe =
Bls_v.block_oneend_symbol smb_boe
;;

let block_oneend_symbol_of_block_onefork_symbol smb_bof =
  let smb_boe = B1es_v.block_oneend_symbol_of_block_onefork_symbol smb_bof in
block_symbol_of_block_oneend_symbol smb_boe
;;

let block_onefork_symbol_of_block_onebifork_symbol smb_bob =
  let smb_bof = B1s_v.block_onefork_symbol_of_block_onebifork_symbol smb_bob in
block_symbol_of_block_onefork_symbol smb_bof
;;

let block_onebifork_symbol_of_block_onesinglebifork_symbol smb_osb =
  let smb_bob = B1bs_v.block_onebifork_symbol_of_block_onesinglebifork_symbol smb_osb in
block_symbol_of_block_onebifork_symbol smb_bob
;;

let block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_oss =
  let smb_osb = B1sbs_v.block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_oss in
block_symbol_of_block_onesinglebifork_symbol smb_osb
;;

let block_onesinglebiforksinglesingle_symbol_of_block_oneend_symbol smb_boe =
B1sbsss_v.block_oneend_symbol smb_boe
;;

let block_onesinglebiforksinglesingle_symbol_of_block_oneend_symbol smb_boe =
B1sbsss_v.block_oneend_symbol smb_boe
;;

let block_onesinglebifork_symbol_of_block_oneend_symbol smb_boe =
B1sbs_v.block_oneend_symbol smb_boe
;;

let block_onebifork_symbol_of_block_onedoublebifork_symbol smb_odb =
  let smb_bob = B1bs_v.block_onebifork_symbol_of_block_onedoublebifork_symbol smb_odb in
block_symbol_of_block_onebifork_symbol smb_bob
;;

let block_onedoublebifork_symbol_of_block_oneend_symbol smb_boe =
B1dbs_v.block_oneend_symbol smb_boe
;;

let block_onedoublebifork_symbol_of_block_oneend_symbol smb_boe =
B1dbs_v.block_oneend_symbol smb_boe
;;

let block_onefork_symbol_of_block_onetrifork_symbol smb_bot =
  let smb_bof = B1s_v.block_onefork_symbol_of_block_onetrifork_symbol smb_bot in
block_symbol_of_block_onefork_symbol smb_bof
;;

let block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_sss =
  let smb_bot = B1ts_v.block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_sss in
block_symbol_of_block_onetrifork_symbol smb_bot
;;

let block_onesingletriforksinglesinglesingle_symbol_of_block_oneend_symbol smb_boe =
B1stssss_v.block_oneend_symbol smb_boe
;;

let block_onesingletriforksinglesinglesingle_symbol_of_block_oneend_symbol smb_boe =
B1stssss_v.block_oneend_symbol smb_boe
;;

let block_oneend_symbol_of_block_onezero_symbol smb_boz =
  let smb_boe = B1es_v.block_oneend_symbol_of_block_onezero_symbol smb_boz in
block_symbol_of_block_oneend_symbol smb_boe
;;

let block_onezero_symbol_of_block_oneend_symbol smb_boe =
B10s_v.block_oneend_symbol smb_boe
;;

let block_onezero_symbol_of_block_oneend_symbol smb_boe =
B10s_v.block_oneend_symbol smb_boe
;;

let block_onezero_symbol_of_block_oneend_symbol smb_boe =
B10s_v.block_oneend_symbol smb_boe
;;

let block_onezero_symbol_of_block_oneend_symbol smb_boe =
B10s_v.block_oneend_symbol smb_boe
;;



(** created by ./generator block v symbol at 11:8 26 Apr 2011. *)



