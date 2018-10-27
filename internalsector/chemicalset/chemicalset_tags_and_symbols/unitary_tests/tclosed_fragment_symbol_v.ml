open Gentest_v;;

(* toplevel 
   #use "tclosed_fragment_symbol_v.ml";; 
 *)

testing "Closed_fragment_symbol_v";;

(** Modules. *)

module Ada_v = Atom_symbol_v
module Ats_v = Atom_symbol_v
module Bda_v = Block_symbol_v
module Brl_v = Booted_repeated_list_v
module Dbt_v = Doublet_v
module Frs_t = Fragment_symbol_t
module Frs_v = Fragment_symbol_v
module Sgs_t = Segment_symbol_t
module Sgs_v = Segment_symbol_v

(* Closed Fragment Symbol *)

let smb_fzz_gly = Frs_t.Zz_O_h_CdodC_h_2N_h_2;;  (* Glycine molecule *)
let smb_frc_gly = Frs_t.Zerozero_fragment_symbol smb_fzz_gly;; (* Closed *)
let smb_frg_gly = Frs_t.Closed_fragment_symbol smb_frc_gly;; (* Fragment *)

(* Closed Extended Fragment Symbol *)

let smb_sgh = Sgs_v.o_h_cdod_h;;      (* -OhCdod- Acid *) 
let smb_frl = Frs_v.metheneamine_l;;  (* -Ch2Nh2 *)
let dbt = Dbt_v.make smb_sgh smb_frl;;
let smb_frc_x = Frs_t.Head_segment_extends_leaf_fragment_symbol dbt;;

let smb_frg = Frs_t.Closed_fragment_symbol smb_frc_x;;

testi 0 (
smb_fzz_gly (* : Frs_t.closed_fragment_symbol *)
= 
Frs_t.Zz_O_h_CdodC_h_2N_h_2
);; 

testi 1 (
smb_frc_gly (* : Frs_t.closed_fragment_symbol *)
= 
Frs_t.Zerozero_fragment_symbol Frs_t.Zz_O_h_CdodC_h_2N_h_2
);; 

testi 2 (
smb_frg_gly (* : Frs_t.fragment_symbol *)
=
Frs_t.Closed_fragment_symbol (Frs_t.Zerozero_fragment_symbol Frs_t.Zz_O_h_CdodC_h_2N_h_2)
);;

testi 3 (
smb_sgh 
(* : Segment_symbol_t.head_segment_symbol *)
=
Segment_symbol_t.Zeroone_segment_symbol Segment_symbol_t.Zo_O_h_Cdod
);;

testi 4 (
dbt
(* : (Segment_symbol_t.head_segment_symbol,
     Fragment_symbol_t.leaf_fragment_symbol)
    Doublet_t.doublet *)
=
(Segment_symbol_t.Zeroone_segment_symbol Segment_symbol_t.Zo_O_h_Cdod,
 Fragment_symbol_t.Onezero_fragment_symbol Fragment_symbol_t.Oz_C_h_2N_h_2)
);;

testi 5 (
smb_frc_x 
(* : Frs_t.closed_fragment_symbol *)
=
Frs_t.Head_segment_extends_leaf_fragment_symbol
 (Frs_t.Sgs_t.Zeroone_segment_symbol Frs_t.Sgs_t.Zo_O_h_Cdod,
  Frs_t.Onezero_fragment_symbol Frs_t.Oz_C_h_2N_h_2)
);;

testi 6 (
smb_frg 
(* : Frs_t.fragment_symbol *)
=
Frs_t.Closed_fragment_symbol
 (Frs_t.Head_segment_extends_leaf_fragment_symbol
   (Frs_t.Sgs_t.Zeroone_segment_symbol Frs_t.Sgs_t.Zo_O_h_Cdod,
    Frs_t.Onezero_fragment_symbol Frs_t.Oz_C_h_2N_h_2))
);;
