open Gentest_v;;

(** {3 Tests for Atom_tag_v.} *)

testing "Atom_tag_v";;

(* toplevel 
   #use "tatom_tag_v.ml";; 
 *)

(* Modules *)

module AtS_t = Atom_index_t
module AtS_v = Atom_index_v
module Ats_t = Atom_symbol_t
module Ats_v = Atom_symbol_v
module Ati_t = Atom_state_t
module Ati_v = Atom_state_v
module Att_t = Atom_tag_t
module Att_v = Atom_tag_v
module ChS_t = Chemical_index_t
module Idx_p = Index_p
module PrS_t = Protonation_index_t
module Wbi_v = Web_state_v
(** c *)

let smb_atm = Ats_v.c;;

let sta_prt = PrS_t.Neutral;;
let chS = ChS_t.Protonation_index sta_prt;;
let sta_atm = AtS_t.Chemical_index chS;; 

let wbi_atm = Wbi_v.web_state_of_int 3;;
let idx_atm = Ati_v.make_of_web_state wbi_atm;;

let tag_atm = Att_v.make smb_atm sta_atm idx_atm;;
let vln_tag_atm = Att_v.valence_of_atom_tag tag_atm;;

testi 0 (
tag_atm (* : Atom_tag_t.atom_tag *) 
=
{Tag_t.symbol = Atom_tag_t.Ats_t.Element Mendeleev_symbol_t.C;
 Tag_t.index =
 Atom_tag_t.AtS_t.Chemical_index
   (Atom_tag_t.AtS_t.ChS_t.Protonation_index Protonation_index_t.Neutral);
 Tag_t.state = Atom_tag_t.Ati_t.Web_state Atom_tag_t.Ati_t.Wbi_t.Left}
);;

testi 1 (
Att_v.name tag_atm
=
"C:N:W_L"
);;

testi 2 (
vln_tag_atm
  =
Idx_p.four
);;

