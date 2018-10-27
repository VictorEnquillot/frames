open Make_test_v;;

(* toplevel 
   #use "closed_fragment_symbol_u_any.ml";; 
 *)

testing "Closed_fragment_symbol_v";;

(** Modules. *)


(* Closed Fragment Symbol *)

let smb_fzz_gly = Fragment_symbol_t.Zz_O_h_CdodC_h_2N_h_2;;  (* Glycine molecule *)
let smb_frc_gly = Fragment_symbol_t.Zerozero_fragment_symbol smb_fzz_gly;; (* Closed *)
let smb_frg_gly = Fragment_symbol_t.Closed_fragment_symbol smb_frc_gly;; (* Fragment *)

(* Closed Extended Fragment Symbol *)

let smb_sgh = Segment_symbol_v.o_h_cdod_h;;      (* -OhCdod- Acid *) 
let smb_frl = Fragment_symbol_v.metheneamine_l;;  (* -Ch2Nh2 *)
let dbt = Doublet_v.make smb_sgh smb_frl;;
let smb_frc_x = Fragment_symbol_t.Head_segment_extends_leaf_fragment_symbol dbt;;

let smb_frg = Fragment_symbol_t.Closed_fragment_symbol smb_frc_x;;

test_number 0 (
smb_fzz_gly (* : Fragment_symbol_t.closed_fragment_symbol *)
= 
Fragment_symbol_t.Zz_O_h_CdodC_h_2N_h_2
);; 

test_number 1 (
smb_frc_gly (* : Fragment_symbol_t.closed_fragment_symbol *)
= 
Fragment_symbol_t.Zerozero_fragment_symbol Fragment_symbol_t.Zz_O_h_CdodC_h_2N_h_2
);; 

test_number 2 (
smb_frg_gly (* : Fragment_symbol_t.fragment_symbol *)
=
Fragment_symbol_t.Closed_fragment_symbol (Fragment_symbol_t.Zerozero_fragment_symbol Fragment_symbol_t.Zz_O_h_CdodC_h_2N_h_2)
);;

test_number 3 (
smb_sgh 
(* : Segment_symbol_t.head_segment_symbol *)
=
Segment_symbol_t.Zeroone_segment_symbol Segment_symbol_t.Zo_O_h_Cdod
);;

test_number 4 (
dbt
(* : (Segment_symbol_t.head_segment_symbol,
     Fragment_symbol_t.leaf_fragment_symbol)
    Doublet_t.doublet *)
=
(Segment_symbol_t.Zeroone_segment_symbol Segment_symbol_t.Zo_O_h_Cdod,
 Fragment_symbol_t.Onezero_fragment_symbol Fragment_symbol_t.Oz_C_h_2N_h_2)
);;

test_number 5 (
smb_frc_x 
(* : Fragment_symbol_t.closed_fragment_symbol *)
=
Fragment_symbol_t.Head_segment_extends_leaf_fragment_symbol
 (Fragment_symbol_t.Segment_symbol_t.Zeroone_segment_symbol Fragment_symbol_t.Segment_symbol_t.Zo_O_h_Cdod,
  Fragment_symbol_t.Onezero_fragment_symbol Fragment_symbol_t.Oz_C_h_2N_h_2)
);;

test_number 6 (
smb_frg 
(* : Fragment_symbol_t.fragment_symbol *)
=
Fragment_symbol_t.Closed_fragment_symbol
 (Fragment_symbol_t.Head_segment_extends_leaf_fragment_symbol
   (Fragment_symbol_t.Segment_symbol_t.Zeroone_segment_symbol Fragment_symbol_t.Segment_symbol_t.Zo_O_h_Cdod,
    Fragment_symbol_t.Onezero_fragment_symbol Fragment_symbol_t.Oz_C_h_2N_h_2))
);;
