open Gentest_v;;

(* toplevel 
   #use "tfragment_symbol_v.ml";; 
 *)

testing "Fragment_symbol_v";;

(** Modules. *)

module Ada_v = Atom_symbol_v
module Ats_t = Atom_symbol_t
module Ats_v = Atom_symbol_v
module Bda_v = Block_symbol_v
module Bls_t = Block_symbol_t
module Frs_t = Fragment_symbol_t
module Frs_v = Fragment_symbol_v

(* Fragment Symbol *)

let smb_frg = Frs_t.Head_opened_fragment_symbol
    (Frs_t.Head_opened_tail_opened_fragment_symbol (Frs_t.Onefork_fragment_symbol Frs_t.C_h_2C_h_));;

testi 0 (
dsg_frg (* : Fragment_marker_t.fragment_marker *) 
=
{Fragment_marker_t.Dsg_t.symbol =
  Fragment_marker_t.Frs_t.Head_opened_fragment_symbol
   (Fragment_marker_t.Frs_t.Head_opened_tail_opened_fragment_symbol
     (Fragment_marker_t.Frs_t.Onefork_fragment_symbol
       Fragment_marker_t.Frs_t.C_h_2C_h_));
 Fragment_marker_t.Dsg_t.index =
  Fragment_marker_t.FrS_t.Chemical_index
   (Fragment_marker_t.FrS_t.ChS_t.Protonation_index
     Protonation_index_t.Neutral)}
);; 

testi 1 (
tag_frg (* : (Frs_t.fragment_symbol, FrS_t.fragment_index, Fri_t.fragment_state) Tag_t.tag *)
  =
{Tag_t.symbol =
  Frs_t.Head_opened_fragment_symbol
   (Frs_t.Head_opened_tail_opened_fragment_symbol
     (Frs_t.Onefork_fragment_symbol Frs_t.C_h_2C_h_));
 Tag_t.index =
  FrS_t.Chemical_index
   (FrS_t.ChS_t.Protonation_index Protonation_index_t.Neutral);
 Tag_t.state = Fri_t.Sequence_index Fri_t.Sqi_t.Single}
 );;

