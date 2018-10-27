(** {3 Tests for chemicalset_tag_v.} *)

open Make_test;;

testing "chemicalset_tag_v";;

(* toplevel 
   #use "chemicalset_tag_u_any.ml";; 
 *)

(* Modules *)


(** Entity Symbol esb_. *)

(** Residue_regular_symbol . *)

let rsb_ile = Aas_t.Molecule_aminoacid_regular_symbol Aas_t.Isoleucine;;

(** Molecule_symbol esb_. *)

let esb_ile = Molecule_symbol_t.Molecule_aminoacid_symbol rsb_ile;;

(** Chemicalset_symbol ssb_. *)

let ssb_ile = Chemicalset_symbol_t.Molecule_symbol esb_ile;;

(** Entity Index est_. *)

let est_prt = Protonation_index_t.Zwitterion;;
let est_chs = Chemical_index_t.Protonation_index est_prt;;

(** Molecule_index. *)  

let est_ile = Molecule_index_t.Chemical_index est_chs;;

(** Chemicalset_index. *)

let sst_ile = Chemicalset_index_t.Molecule_index est_ile;;

(** Entity State eid_. *)
(** Molecule_state. *)

let eid_ile = Ordinal_p.three;;

(** Chemicalset_state. *)

let sid_ile = Chemicalset_state_t.Molecule_state eid_ile;;

(** Entity Tag etg_. *)
(** Molecule_tag. *)

let etg_ile = Molecule_tag_v.make esb_ile est_ile eid_ile;; 

(** Chemicalset_tag. *)

let stg_ile = Chemicalset_tag_v.make ssb_ile sst_ile sid_ile;;

test_number 0 (
ssb_ile (* : Chemicalset_symbol_t.chemicalset_symbol *) 
  =
Chemicalset_symbol_t.Molecule_symbol
 (Chemicalset_symbol_t.Molecule_symbol_t.Molecule_aminoacid_symbol
   (Chemicalset_symbol_t.Molecule_symbol_t.Aas_t.Molecule_aminoacid_regular_symbol Chemicalset_symbol_t.Molecule_symbol_t.Aas_t.Isoleucine))
);;

test_number 1 (
Chemicalset_symbol_v.name ssb_ile
=
"Ml_I"
);;

test_number 2 (
sst_ile
  =
Chemicalset_index_t.Molecule_index
 (Chemicalset_index_t.Molecule_index_t.Chemical_index
   (Chemicalset_index_t.Molecule_index_t.Chemical_index_t.Protonation_index Protonation_index_t.Zwitterion))
);;

test_number 3 (
Chemical_index_v.name sst_ile
  =
"Ml_Z"
);;

test_number 4 (
sid_ile
  =
Chemicalset_state_t.Molecule_state Ordinal_p.three
);;

test_number 5 (
Chemicalset_state_v.name sid_ile
=
"Ml_3"
);;

test_number 6 (
stg_ile (* : Chemicalset_tag_t.chemicalset_tag *) 
=
{Tag_t.symbol =
  Chemicalset_tag_t.Chemicalset_symbol_t.Molecule_symbol
   (Chemicalset_tag_t.Chemicalset_symbol_t.Molecule_symbol_t.Molecule_aminoacid_symbol
     (Chemicalset_tag_t.Chemicalset_symbol_t.Molecule_symbol_t.Aas_t.Regular_symbol
       Chemicalset_tag_t.Chemicalset_symbol_t.Molecule_symbol_t.Aas_t.Isoleucine));
 Tag_t.index =
  Chemicalset_tag_t.Chemicalset_index_t.Molecule_index
   (Chemicalset_tag_t.Chemicalset_index_t.Molecule_index_t.Chemical_index
     (Chemicalset_tag_t.Chemicalset_index_t.Molecule_index_t.Chemical_index_t.Protonation_index
       Protonation_index_t.Zwitterion));
 Tag_t.state = Chemicalset_tag_t.Chemicalset_state_t.Molecule_state (Ordinal_p.three)}
);;

test_number 7 (
Chemicalset_tag_v.name stg_ile
=
"Ml_I:Ml_Z:Ml_3"
);;

