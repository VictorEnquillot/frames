(** {3 Peptideca Extended Symbol.} *)

open Gentest_v;;

testing "Peptideca_extended_symbol_v";;

(* toplevel 
   #use "tpeptideca_extended_symbol_v.ml";; 
*)

module Mas_t = Molecule_aminoacid_symbol_t
module Mas_v = Molecule_aminoacid_symbol_v
module Ext_t = Extended_t
module Ext_v = Extended_v
module Pes_t = Peptideca_embedded_symbol_t
module Pes_v = Peptideca_embedded_symbol_v
module Pns_t = Peptideca_nterminal_symbol_t
module Pns_v = Peptideca_nterminal_symbol_v
module Pxs_t = Peptideca_extended_symbol_t
module Pxs_v = Peptideca_extended_symbol_v

(* ----------- Nterminal Alanine -------------- *)

(* Peptideca Extended Symbol *)
let smb_reg_ala = Aas_t.Alanine;; 
let smb_pnx_ala = Pxs_v.make_nterminal_of_molecule_aminoacid_regular_symbol smb_reg_ala;; 
let smb_px1_ala = Pxs_v.extend_of_peptideca_extended_symbol smb_pnx_ala;;
let smb_px2_ala = Pxs_v.extend_of_peptideca_extended_symbol smb_px1_ala;;

(* ----------- Embedded Proline -------------- *)

(* Peptideca Extended Symbol *)
let smb_reg_pro = Aas_t.Proline;; 
let smb_pcx_pro = Pxs_v.make_embedded_of_molecule_aminoacid_regular_symbol smb_reg_pro;; 
let smb_px1_pro = Pxs_v.extend_of_peptideca_extended_symbol smb_pcx_pro;;
let smb_px2_pro = Pxs_v.extend_of_peptideca_extended_symbol smb_px1_pro;;

testi 0 (
smb_reg_ala (* : Aas_t.regular_symbol *)
  = Aas_t.Alanine
);;

testi 1 (
smb_pnx_ala (* : Peptideca_extended_symbol_t.peptideca_extended_symbol *)
=
Pxs_t.Peptideca_extended_nterminal_symbol
  Pxs_t.Pns_t.Aas_t.Alanine
);;

testi 2 (
smb_px1_ala (* : Peptideca_extended_symbol_t.peptideca_extended_symbol *)
  =
smb_pnx_ala
);;

testi 3 (
smb_px2_ala (* : Peptideca_extended_symbol_t.peptideca_extended_symbol *)
  =
smb_pnx_ala
);;

testi 4 (
Pxs_v.count smb_px2_ala 
  =
0
);;

testi 5 (
Pxs_v.molecule_aminoacid_regular_symbol_off_peptideca_extended_symbol smb_px2_ala
=
Aas_t.Alanine
);;

testi 6 (
Pxs_v.peptideca_regular_nterminal_symbol_off_peptideca_extended_symbol smb_px2_ala
(* : Peptideca_nterminal_symbol_t.peptideca_regular_nterminal_symbol *) 
=
Peptideca_nterminal_symbol_t.Aas_t.Alanine
);;

testi 7 (
Pxs_v.name smb_px2_ala
=
"A"
);;

(* ----------- Embedded Proline -------------- *)

testi 8 (
smb_reg_pro (* : Aas_t.regular_symbol *)
  = 
Aas_t.Proline
);;

testi 9 (
smb_pcx_pro (* : Peptideca_extended_symbol_t.peptideca_extended_symbol *)
  =
  Pxs_t.Peptideca_extended_embedded_symbol
   (Ext_t.Basic
     Pxs_t.Pes_t.Aas_t.Proline)
);;

testi 10 (
smb_px1_pro (* : Peptideca_extended_symbol_t.peptideca_extended_symbol *)
=
 Pxs_t.Peptideca_extended_embedded_symbol
   (Ext_t.Extended
     (Ext_t.Basic
       Pxs_t.Pes_t.Aas_t.Proline))
);;

testi 11 (
smb_px2_pro (* : Peptideca_extended_symbol_t.peptideca_extended_symbol *)
=
  Pxs_t.Peptideca_extended_embedded_symbol
   (Ext_t.Extended
     (Ext_t.Extended
       (Ext_t.Basic
         Pxs_t.Pes_t.Aas_t.Proline)))
);;

testi 12 (
Pxs_v.count smb_px2_pro 
  =
2
);;

testi 13 (
Pxs_v.molecule_aminoacid_regular_symbol_off_peptideca_extended_symbol smb_px2_pro
=
Aas_t.Proline
);;

testi 14 (
Pxs_v.peptideca_regular_embedded_symbol_off_peptideca_extended_symbol smb_px2_pro
(* : Peptideca_embedded_symbol_t.peptideca_regular_embedded_symbol *) 
=
Peptideca_embedded_symbol_t.Aas_t.Proline
);;

testi 15 (
Pxs_v.name smb_px2_pro
=
"x2P"
);;

