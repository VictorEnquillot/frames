(** {3 Residue Extended Symbol.} *)

open Gentest_v;;

testing "Residue_extended_symbol_v";;

(* toplevel 
   #use "tresidue_extended_symbol_v.ml";; 
*)

module Mas_t = Molecule_aminoacid_symbol_t
module Mas_v = Molecule_aminoacid_symbol_v
module Ext_t = Extended_t
module Ext_v = Extended_v
module Pes_t = Residue_embedded_symbol_t
module Pes_v = Residue_embedded_symbol_v
module Pns_t = Residue_nterminal_symbol_t
module Pns_v = Residue_nterminal_symbol_v
module Rxs_t = Residue_extended_symbol_t
module Rxs_v = Residue_extended_symbol_v

(* ----------- Nterminal Alanine -------------- *)

(* Residue Extended Symbol *)
let smb_reg_ala = Aas_t.Alanine;; 
let smb_pnx_ala = Rxs_v.make_nterminal_of_molecule_aminoacid_regular_symbol smb_reg_ala;; 
let smb_rx1_ala = Rxs_v.extend_of_residue_extended_symbol smb_pnx_ala;;
let smb_rx2_ala = Rxs_v.extend_of_residue_extended_symbol smb_rx1_ala;;

(* ----------- Embedded Proline -------------- *)

(* Residue Extended Symbol *)
let smb_reg_pro = Aas_t.Proline;; 
let smb_pcx_pro = Rxs_v.make_embedded_of_molecule_aminoacid_regular_symbol smb_reg_pro;; 
let smb_rx1_pro = Rxs_v.extend_of_residue_extended_symbol smb_pcx_pro;;
let smb_rx2_pro = Rxs_v.extend_of_residue_extended_symbol smb_rx1_pro;;

testi 0 (
smb_reg_ala (* : Aas_t.regular_symbol *)
  = Aas_t.Alanine
);;

testi 1 (
smb_pnx_ala (* : Residue_extended_symbol_t.residue_extended_symbol *)
=
Rxs_t.Residue_extended_nterminal_symbol
  Rxs_t.Rns_t.Aas_t.Alanine
);;

testi 2 (
smb_rx1_ala (* : Residue_extended_symbol_t.residue_extended_symbol *)
  =
smb_pnx_ala
);;

testi 3 (
smb_rx2_ala (* : Residue_extended_symbol_t.residue_extended_symbol *)
  =
smb_pnx_ala
);;

testi 4 (
Rxs_v.count smb_rx2_ala 
  =
0
);;

testi 5 (
Rxs_v.molecule_aminoacid_regular_symbol_off_residue_extended_symbol smb_rx2_ala
=
Aas_t.Alanine
);;

testi 6 (
Rxs_v.residue_nterminal_regular_symbol_off_residue_extended_symbol smb_rx2_ala
(* : Residue_nterminal_symbol_t.residue_nterminal_regular_symbol *) 
=
Residue_nterminal_symbol_t.Aas_t.Alanine
);;

testi 7 (
Rxs_v.name smb_rx2_ala
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
smb_pcx_pro (* : Residue_extended_symbol_t.residue_extended_symbol *)
  =
  Rxs_t.Residue_extended_embedded_symbol
   (Ext_t.Basic
     Rxs_t.Res_t.Aas_t.Proline)
);;

testi 10 (
smb_rx1_pro (* : Residue_extended_symbol_t.residue_extended_symbol *)
=
 Rxs_t.Residue_extended_embedded_symbol
   (Ext_t.Extended
     (Ext_t.Basic
       Rxs_t.Res_t.Aas_t.Proline))
);;

testi 11 (
smb_rx2_pro (* : Residue_extended_symbol_t.residue_extended_symbol *)
=
  Rxs_t.Residue_extended_embedded_symbol
   (Ext_t.Extended
     (Ext_t.Extended
       (Ext_t.Basic
         Rxs_t.Res_t.Aas_t.Proline)))
);;

testi 12 (
Rxs_v.count smb_rx2_pro 
  =
2
);;

testi 13 (
Rxs_v.molecule_aminoacid_regular_symbol_off_residue_extended_symbol smb_rx2_pro
=
Aas_t.Proline
);;

testi 14 (
Rxs_v.residue_embedded_regular_symbol_off_residue_extended_symbol smb_rx2_pro
(* : Residue_embedded_symbol_t.residue_embedded_regular_symbol *) 
=
Residue_embedded_symbol_t.Aas_t.Proline
);;

testi 15 (
Rxs_v.name smb_rx2_pro
=
"x2P"
);;

