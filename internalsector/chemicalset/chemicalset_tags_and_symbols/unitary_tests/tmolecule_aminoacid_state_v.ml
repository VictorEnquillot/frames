open Gentest_v;;

(* toplevel 
   #use "tmolecule_aminoacid_index_v.ml";; 
 *)

testing "Molecule_aminoacid_index_v";;

(** Modules. *)

module AaS_t = Molecule_aminoacid_index_t
module AaS_v = Molecule_aminoacid_index_v
module ChS_v = Chemical_index_v

module Idx_p = Index_p
module Ord_p = Ordinal_p

module ChS_t = Chemical_index_t
module EnS_t = Entity_index_t
module PrS_t = Protonation_index_t
module QuS_t = Quantum_index_t
module EvS_t = Environment_index_t

module Mty_t = Multiplicity_t

let prS = PrS_t.Protonated;;
let chS = ChS_t.Protonation_index prS;;
let sta_ama = AaS_t.Chemical_index chS;;

testi 0 (
sta_ama (* : AaS_t.molecule_aminoacid_index *) 
=
AaS_t.Chemical_index
 (AaS_t.ChS_t.Protonation_index Protonation_index_t.Protonated)
);;

testi 1 (
AaS_v.name sta_ama
=
"H"
);;
