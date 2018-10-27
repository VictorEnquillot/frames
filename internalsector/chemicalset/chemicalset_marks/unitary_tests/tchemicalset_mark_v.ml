(** {3 Tests for chemicalset_mark_v.} *)

open Gentest_v;;

testing "chemicalset_mark_v";;

(* toplevel 
   #use "tchemicalset_mark_v.ml";; 
 *)

(* Modules *)

module Mas_t = Molecule_aminoacid_symbol_t
module CsS_t = Chemicalset_index_t
module ChS_v = Chemicalset_index_v
module Csi_t = Chemicalset_state_t
module Csi_v = Chemicalset_state_v
module Css_t = Chemicalset_symbol_t
module Css_v = Chemicalset_symbol_v
module Ast_t = Chemicalset_mark_t
module Ast_v = Chemicalset_mark_v
module ChS_t = Chemical_index_t
module Idx_p = Index_p
module MlS_t = Molecule_index_t
module MlS_v = Molecule_index_v
module Mli_t = Molecule_state_t
module Mli_v = Molecule_state_v
module Mls_t = Molecule_symbol_t
module Mls_v = Molecule_symbol_v
module Mlt_t = Molecule_mark_t
module Mlt_v = Molecule_mark_v
module Ord_p = Ordinal_p
module PrS_t = Protonation_index_t

(** Entity Symbol esb_. *)

(** Residue_regular_symbol . *)

let rsb_ile = Aas_t.Molecule_aminoacid_regular_symbol Aas_t.Isoleucine;;

(** Molecule_symbol esb_. *)

let esb_ile = Mls_t.Molecule_aminoacid_symbol rsb_ile;;

(** Chemicalset_symbol ssb_. *)

let ssb_ile = Css_t.Molecule_symbol esb_ile;;

(** Entity Index est_. *)

let est_prt = PrS_t.Zwitterion;;
let est_chs = ChS_t.Protonation_index est_prt;;

(** Molecule_index. *)  

let est_ile = MlS_t.Chemical_index est_chs;;

(** Chemicalset_index. *)

let sst_ile = CsS_t.Molecule_index est_ile;;

(** Entity State eid_. *)
(** Molecule_state. *)

let eid_ile = Ord_p.three;;

(** Chemicalset_state. *)

let sid_ile = Csi_t.Molecule_state eid_ile;;

(** Entity Mark etg_. *)
(** Molecule_mark. *)

let etg_ile = Mlt_v.make esb_ile est_ile eid_ile;; 

(** Chemicalset_mark. *)

let stg_ile = Ast_v.make ssb_ile sst_ile sid_ile;;

testi 0 (
ssb_ile (* : Css_t.chemicalset_symbol *) 
  =
Css_t.Molecule_symbol
 (Css_t.Mls_t.Molecule_aminoacid_symbol
   (Css_t.Mls_t.Aas_t.Molecule_aminoacid_regular_symbol Css_t.Mls_t.Aas_t.Isoleucine))
);;

testi 1 (
Css_v.name ssb_ile
=
"Ml_I"
);;

testi 2 (
sst_ile
  =
CsS_t.Molecule_index
 (CsS_t.MlS_t.Chemical_index
   (CsS_t.MlS_t.ChS_t.Protonation_index Protonation_index_t.Zwitterion))
);;

testi 3 (
ChS_v.name sst_ile
  =
"Ml_Z"
);;

testi 4 (
sid_ile
  =
Csi_t.Molecule_state Ordinal_p.three
);;

testi 5 (
Csi_v.name sid_ile
=
"Ml_3"
);;

testi 6 (
stg_ile (* : Chemicalset_mark_t.chemicalset_mark *) 
=
{Mark_t.symbol =
  Chemicalset_mark_t.Css_t.Molecule_symbol
   (Chemicalset_mark_t.Css_t.Mls_t.Molecule_aminoacid_symbol
     (Chemicalset_mark_t.Css_t.Mls_t.Aas_t.Regular_symbol
       Chemicalset_mark_t.Css_t.Mls_t.Aas_t.Isoleucine));
 Mark_t.index =
  Chemicalset_mark_t.CsS_t.Molecule_index
   (Chemicalset_mark_t.CsS_t.MlS_t.Chemical_index
     (Chemicalset_mark_t.CsS_t.MlS_t.ChS_t.Protonation_index
       Protonation_index_t.Zwitterion));
 Mark_t.state = Chemicalset_mark_t.Csi_t.Molecule_state (Ordinal_p.three)}
);;

testi 7 (
Ast_v.name stg_ile
=
"Ml_I:Ml_Z:Ml_3"
);;

