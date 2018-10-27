open Gentest_v;;

(* toplevel 
   #use "tfragment_tag_v.ml";; 
 *)

testing "Fragment_tag_v";;

(** Modules. *)

module Ada_v = Atom_zerotied_symbol_v
module Ats_t = Atom_zerotied_symbol_t
module Ats_v = Atom_zerotied_symbol_v
module Bda_v = Block_symbol_v
module Bdg_v = Halfbridge_v
module Bls_t = Block_symbol_t
module BnS_t = Bond_index_t
module Bnd_v = Bond_marker_v
module BrS_t = Halfbridge_index_t
module Brd_v = Halfbridge_marker_v
module Brs_t = Halfbridge_symbol_t
module Brs_v = Halfbridge_symbol_v
module ChS_t = Chemical_index_t
module EnS_t = Entity_index_t
module Evs_t = Environment_index_t
module Frd_v = Fragment_marker_v
module Fri_t = Fragment_state_t
module Frs_t = Fragment_symbol_t
module Frs_v = Fragment_symbol_v
module FrS_t = Fragment_index_t
module Idx_p = Index_p
module Mty_t = Multiplicity_t
module Ord_p = Ordinal_p
module PtS_t = Protonation_index_t
module Qus_t = Quantum_index_t
module Sqi_t = Sequence_index_t

(* Rod -C_h_2C_h_< *)

let mty = Mty_t.Single;;
let sta_bnd = BnS_t.Multiplicity mty;;

(* Fragment Symbol *)

let smb_frg = Frs_t.Head_opened_fragment_symbol
    (Frs_t.Head_opened_tail_opened_fragment_symbol (Frs_t.Onefork_fragment_symbol Frs_t.C_h_2C_h_));;

(* Fragment Index *)

let sta_ptn = PtS_t.Neutral;;
let chS = ChS_t.Protonation_index sta_ptn;;
let sta_frg = FrS_t.Chemical_index chS;;

(* Fragment State *)

let idx_seq = Sqi_t.Single;;
let idx_frg = Fri_t.Sequence_index idx_seq;;

(* Fragment Marker *)

let dsg_frg = Frd_v.make smb_frg sta_frg;;

(* Fragment Tag *)

let tag_frg = Tag_v.make smb_frg sta_frg idx_frg;;

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

